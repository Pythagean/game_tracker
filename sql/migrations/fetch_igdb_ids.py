#!/usr/bin/env python3
"""Fetch IGDB IDs for games in a CSV.

Usage:
  Set environment variables IGDB_CLIENT_ID and IGDB_CLIENT_SECRET, then:
    python fetch_igdb_ids.py --input ../old_db_data/games.csv --output games_with_igdb.csv

The script writes the same CSV with an added/updated `igdb_id` column.
"""
import os
import time
import argparse
import requests
import csv
import sys
from difflib import SequenceMatcher
from datetime import datetime


TWITCH_TOKEN_URL = 'https://id.twitch.tv/oauth2/token'
IGDB_GAMES_URL = 'https://api.igdb.com/v4/games'


def get_twitch_token(client_id, client_secret):
    resp = requests.post(TWITCH_TOKEN_URL, data={
        'client_id': client_id,
        'client_secret': client_secret,
        'grant_type': 'client_credentials'
    })
    resp.raise_for_status()
    return resp.json()['access_token']


def normalize(s: str):
    if not s:
        return ''
    return ''.join(ch for ch in s.lower() if ch.isalnum() or ch.isspace()).strip()


def score_match(src_title, src_year, igdb_name, igdb_release_ts):
    n1 = normalize(src_title)
    n2 = normalize(igdb_name)
    if not n2:
        return 0.0
    ratio = SequenceMatcher(None, n1, n2).ratio()
    year_bonus = 0.0
    if src_year and igdb_release_ts:
        try:
            igdb_year = datetime.utcfromtimestamp(int(igdb_release_ts)).year
            if igdb_year == src_year:
                year_bonus = 0.2
            else:
                year_bonus = max(0.0, 0.1 - (abs(igdb_year - src_year) / 100.0))
        except Exception:
            pass
    return ratio + year_bonus


def query_igdb_for_title(title, token, client_id, year=None):
    q = f'search "{title}"; fields id,name,first_release_date; limit 10;'
    headers = {
        'Client-ID': client_id,
        'Authorization': f'Bearer {token}'
    }
    r = requests.post(IGDB_GAMES_URL, headers=headers, data=q, timeout=20)
    r.raise_for_status()
    return r.json()


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--input', '-i', default='../old_db_data/games.csv')
    p.add_argument('--output', '-o', default='games_with_igdb.csv')
    p.add_argument('--client-id', default=os.getenv('IGDB_CLIENT_ID'))
    p.add_argument('--client-secret', default=os.getenv('IGDB_CLIENT_SECRET'))
    p.add_argument('--sleep', type=float, default=0.3, help='sleep between IGDB requests')
    args = p.parse_args()

    if not args.client_id or not args.client_secret:
        print('Set IGDB_CLIENT_ID and IGDB_CLIENT_SECRET environment variables or pass --client-id/--client-secret', file=sys.stderr)
        sys.exit(1)

    token = get_twitch_token(args.client_id, args.client_secret)
    print('Got Twitch token, querying IGDB...')

    with open(args.input, newline='', encoding='utf-8') as inf:
        reader = list(csv.DictReader(inf))

    out_fieldnames = list(reader[0].keys()) if reader else []
    if 'igdb_id' not in out_fieldnames:
        out_fieldnames.append('igdb_id')

    results = []
    for i, row in enumerate(reader, 1):
        title = row.get('title') or ''
        release_date = row.get('release_date') or ''
        year = None
        if release_date:
            try:
                year = int(release_date.split('-')[0])
            except Exception:
                year = None

        existing = row.get('giantbomb_id') or row.get('igdb_id') or ''
        if existing and existing.strip() and existing.strip().upper() != 'NULL' and existing.strip() != '0':
            # Overwrite existing id per user request; log the replacement
            print(f'[{i}/{len(reader)}] Overwriting existing id {existing} for "{title}"')

        try:
            candidates = query_igdb_for_title(title, token, args.client_id, year=year)
        except Exception as e:
            print(f'[{i}/{len(reader)}] Error querying IGDB for "{title}": {e}', file=sys.stderr)
            row['igdb_id'] = ''
            results.append(row)
            time.sleep(args.sleep)
            continue

        best = None
        best_score = 0.0
        for cand in candidates:
            cand_name = cand.get('name') or ''
            cand_rel = cand.get('first_release_date')
            s = score_match(title, year, cand_name, cand_rel)
            if s > best_score:
                best_score = s
                best = cand

        chosen_id = ''
        if best and best_score >= 0.65:
            chosen_id = str(best.get('id'))
            print(f'[{i}/{len(reader)}] Matched "{title}" -> IGDB id {chosen_id} (score {best_score:.2f})')
        else:
            print(f'[{i}/{len(reader)}] No confident match for "{title}" (best score {best_score:.2f})')

        row['igdb_id'] = chosen_id
        results.append(row)
        time.sleep(args.sleep)

    with open(args.output, 'w', newline='', encoding='utf-8') as outf:
        writer = csv.DictWriter(outf, fieldnames=out_fieldnames)
        writer.writeheader()
        for r in results:
            writer.writerow(r)

    print(f'Wrote {len(results)} rows to {args.output}')


if __name__ == '__main__':
    main()
