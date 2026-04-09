#!/usr/bin/env python3
"""Fetch detailed IGDB data for each IGDB id in a CSV and generate SQL to populate DB.

Usage:
  Set IGDB_CLIENT_ID and IGDB_CLIENT_SECRET env vars, then:
    python fetch_and_generate_igdb_sql.py --input sql/migrations/games_with_igdb.csv --output sql/migrations/igdb_populate.sql --user <USER_UUID>

The script writes a SQL file containing statements to upsert publishers, franchises, developers,
genres, themes, games, and junction rows for each game.
"""
import os
import time
import argparse
import requests
import csv
import sys
import html

TWITCH_TOKEN_URL = 'https://id.twitch.tv/oauth2/token'
IGDB_GAMES_URL = 'https://api.igdb.com/v4/games'


def get_twitch_token(client_id, client_secret):
    r = requests.post(TWITCH_TOKEN_URL, data={
        'client_id': client_id,
        'client_secret': client_secret,
        'grant_type': 'client_credentials'
    })
    r.raise_for_status()
    return r.json()['access_token']


def q(s: str):
    if s is None:
        return 'NULL'
    s2 = str(s)
    s2 = s2.replace("'", "''")
    return f"'{s2}'"


def generate_sql_for_game(g, user_uuid):
    # g is a dict from IGDB response merged with staging row
    lines = []
    title = g.get('title') or g.get('name') or ''
    igdb_id = g.get('igdb_id')
    cover_url = g.get('cover_url')
    release_date = g.get('first_release_date')
    year_clause = 'NULL'
    if release_date:
        try:
            # IGDB returns unix timestamp seconds
            from datetime import datetime
            rd = datetime.utcfromtimestamp(int(release_date))
            year_clause = q(rd.date().isoformat())
        except Exception:
            year_clause = 'NULL'

    publisher = g.get('publisher')
    franchise = g.get('franchise')
    metacritic = g.get('aggregated_rating')
    if metacritic is None:
        metacritic_val = 'NULL'
    else:
        metacritic_val = str(int(round(metacritic)))

    # Upsert publisher
    if publisher:
        lines.append(f"INSERT INTO public.publishers (name) VALUES ({q(publisher)}) ON CONFLICT (name) DO NOTHING;")

    # Upsert franchise
    if franchise:
        lines.append(f"INSERT INTO public.franchises (name) VALUES ({q(franchise)}) ON CONFLICT (name) DO NOTHING;")

    # Upsert genres
    for gen in g.get('genres', []):
        if gen:
            lines.append(f"INSERT INTO public.genres (name) VALUES ({q(gen)}) ON CONFLICT (name) DO NOTHING;")

    # Upsert themes
    for th in g.get('themes', []):
        if th:
            lines.append(f"INSERT INTO public.themes (name) VALUES ({q(th)}) ON CONFLICT (name) DO NOTHING;")

    # Upsert developers & publishers via involved_companies
    devs = g.get('developers', [])
    pubs = g.get('publishers', [])
    for d in devs:
        if d:
            lines.append(f"INSERT INTO public.developers (name) VALUES ({q(d)}) ON CONFLICT (name) DO NOTHING;")
    for p in pubs:
        if p:
            lines.append(f"INSERT INTO public.publishers (name) VALUES ({q(p)}) ON CONFLICT (name) DO NOTHING;")

    # Insert or update game row (match on igdb_id)
    # Use franchise and publisher ids by subselect
    franchise_sub = 'NULL'
    if franchise:
        franchise_sub = f"(SELECT franchise_id FROM public.franchises WHERE name = {q(franchise)} LIMIT 1)"
    publisher_sub = 'NULL'
    if publisher:
        publisher_sub = f"(SELECT publisher_id FROM public.publishers WHERE name = {q(publisher)} LIMIT 1)"

    cover_clause = q(cover_url) if cover_url else 'NULL'

    lines.append(
        "INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id) VALUES (" +
        f"'{user_uuid}'::uuid, {q(title)}, {franchise_sub}, {year_clause}, {publisher_sub}, {metacritic_val}, {cover_clause}, {igdb_id} ) " +
        "ON CONFLICT (igdb_id) DO UPDATE SET title = EXCLUDED.title, metacritic_score = COALESCE(EXCLUDED.metacritic_score, public.games.metacritic_score), cover_url = COALESCE(EXCLUDED.cover_url, public.games.cover_url), publisher_id = COALESCE(EXCLUDED.publisher_id, public.games.publisher_id), franchise_id = COALESCE(EXCLUDED.franchise_id, public.games.franchise_id), release_date = COALESCE(EXCLUDED.release_date, public.games.release_date);"
    )

    # After inserting game, insert junctions: game_genre, game_theme, game_developer
    # Use game lookup by igdb_id
    for gen in g.get('genres', []):
        if gen:
            lines.append(
                "INSERT INTO public.game_genre (game_id, genre_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = " + str(igdb_id) + "), (SELECT genre_id FROM public.genres WHERE name = " + q(gen) + " LIMIT 1) ) ON CONFLICT DO NOTHING;"
            )
    for th in g.get('themes', []):
        if th:
            lines.append(
                "INSERT INTO public.game_theme (game_id, theme_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = " + str(igdb_id) + "), (SELECT theme_id FROM public.themes WHERE name = " + q(th) + " LIMIT 1) ) ON CONFLICT DO NOTHING;"
            )
    for d in devs:
        if d:
            lines.append(
                "INSERT INTO public.game_developer (game_id, developer_id) VALUES ( (SELECT game_id FROM public.games WHERE igdb_id = " + str(igdb_id) + "), (SELECT developer_id FROM public.developers WHERE name = " + q(d) + " LIMIT 1) ) ON CONFLICT DO NOTHING;"
            )

    return lines


def fetch_igdb_data(igdb_id, token, client_id):
    # request fields including nested names
    q = f"fields name, first_release_date, aggregated_rating, cover.url, genres.name, themes.name, involved_companies.company.name, involved_companies.developer, involved_companies.publisher, franchises.name; where id = {igdb_id};"
    headers = {
        'Client-ID': client_id,
        'Authorization': f'Bearer {token}'
    }
    r = requests.post(IGDB_GAMES_URL, headers=headers, data=q, timeout=20)
    r.raise_for_status()
    data = r.json()
    if not data:
        return None
    g = data[0]

    # extract
    out = {}
    out['igdb_id'] = igdb_id
    out['name'] = g.get('name')
    out['first_release_date'] = g.get('first_release_date')
    out['aggregated_rating'] = g.get('aggregated_rating')
    # cover
    cover = g.get('cover')
    if cover and isinstance(cover, dict):
        out['cover_url'] = cover.get('url')
    else:
        out['cover_url'] = None

    # genres/themes are lists of objects with name
    out['genres'] = [x.get('name') for x in g.get('genres', []) if x and x.get('name')]
    out['themes'] = [x.get('name') for x in g.get('themes', []) if x and x.get('name')]

    # involved_companies may have company.name and flags
    devs = []
    pubs = []
    for ic in g.get('involved_companies', []):
        try:
            comp = ic.get('company')
            name = comp.get('name') if comp else None
        except Exception:
            name = None
        if not name:
            continue
        if ic.get('developer'):
            devs.append(name)
        if ic.get('publisher'):
            pubs.append(name)
    out['developers'] = devs
    out['publishers'] = pubs

    # franchises
    frs = [x.get('name') for x in g.get('franchises', []) if x and x.get('name')]
    out['franchises'] = frs

    return out


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--input', '-i', default='sql/migrations/games_with_igdb.csv')
    p.add_argument('--output', '-o', default='sql/migrations/igdb_populate.sql')
    p.add_argument('--client-id', default=os.getenv('IGDB_CLIENT_ID'))
    p.add_argument('--client-secret', default=os.getenv('IGDB_CLIENT_SECRET'))
    p.add_argument('--user', '-u', required=True)
    p.add_argument('--sleep', type=float, default=0.35)
    args = p.parse_args()

    if not args.client_id or not args.client_secret:
        print('Set IGDB_CLIENT_ID and IGDB_CLIENT_SECRET env vars or pass --client-id/--client-secret', file=sys.stderr)
        sys.exit(1)

    token = get_twitch_token(args.client_id, args.client_secret)

    # read CSV
    with open(args.input, newline='', encoding='utf-8') as inf:
        reader = list(csv.DictReader(inf))

    all_sql = ["-- Generated IGDB populate script\nBEGIN;\n"]

    for i, row in enumerate(reader, 1):
        igdb_id = row.get('igdb_id') or row.get('giantbomb_id')
        if not igdb_id or igdb_id.strip() == '' or igdb_id.strip().upper() == 'NULL':
            print(f'[{i}/{len(reader)}] Skipping row without IGDB id: {row.get("title")}')
            continue
        try:
            print(f'[{i}/{len(reader)}] Fetching IGDB {igdb_id} for "{row.get("title")}"')
            data = fetch_igdb_data(igdb_id, token, args.client_id)
            if not data:
                print(f'  no data for {igdb_id}')
                continue

            # merge some staging values
            data['title'] = row.get('title')
            # prefer staging publisher/franchise if present
            if row.get('publisher') and row.get('publisher').strip():
                data['publisher'] = row.get('publisher').strip()
            else:
                data['publisher'] = data.get('publishers')[0] if data.get('publishers') else None
            if row.get('franchise') and row.get('franchise').strip():
                data['franchise'] = row.get('franchise').strip()
            else:
                data['franchise'] = data.get('franchises')[0] if data.get('franchises') else None

            # ensure arrays are simple strings
            data['genres'] = data.get('genres') or []
            data['themes'] = data.get('themes') or []
            data['developers'] = data.get('developers') or []
            data['publishers'] = data.get('publishers') or []

            # pick cover url
            if data.get('cover_url') and data['cover_url'].startswith('//'):
                data['cover_url'] = 'https:' + data['cover_url']

            sql_lines = generate_sql_for_game(data, args.user)
            all_sql.extend(sql_lines)
            all_sql.append('\n')
        except Exception as e:
            print(f'Error fetching {igdb_id}: {e}', file=sys.stderr)
        time.sleep(args.sleep)

    all_sql.append('COMMIT;\n')

    with open(args.output, 'w', encoding='utf-8') as outf:
        outf.write('\n'.join(all_sql))

    print(f'Wrote SQL to {args.output}')


if __name__ == '__main__':
    main()
