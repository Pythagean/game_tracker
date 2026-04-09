#!/usr/bin/env python3
"""
Map old session.game_id values to new-game identifiers and emit SQL to update rows.

Usage:
  python map_sessions_game_ids.py \
    --sessions sql/old_db_data/sessions.csv \
    --games sql/migrations/games_with_igdb.csv \
    --out-csv sql/migrations/sessions_enriched.csv \
    --out-sql sql/migrations/sessions_update_game_ids.sql

What it does:
- Joins `sessions.csv` to `games_with_igdb.csv` by the legacy `game_id` column.
- Writes `sessions_enriched.csv` with added game metadata (title, platform, giantbomb id if present).
- Writes `sessions_update_game_ids.sql` containing `UPDATE` statements that try to map
  to the new `games.id` using, in order: `igdb_id`, `giantbomb_id`, or `title+platform`.

Review the generated SQL before running it against your DB.
"""
import argparse
import csv
import os
import sys


def quote_sql(s: str) -> str:
    if s is None:
        return 'NULL'
    s = str(s)
    s = s.replace("'", "''")
    return "'{}'".format(s)


def main(argv=None):
    parser = argparse.ArgumentParser()
    parser.add_argument('--sessions', default='sql/old_db_data/sessions.csv')
    parser.add_argument('--games', default='sql/migrations/games_with_igdb.csv')
    parser.add_argument('--out-csv', default='sql/migrations/sessions_enriched.csv')
    parser.add_argument('--out-sql', default='sql/migrations/sessions_update_game_ids.sql')
    args = parser.parse_args(argv)

    if not os.path.exists(args.sessions):
        print('Sessions file not found:', args.sessions, file=sys.stderr)
        sys.exit(2)
    if not os.path.exists(args.games):
        print('Games CSV file not found:', args.games, file=sys.stderr)
        sys.exit(2)

    # Load games CSV into dict keyed by legacy game_id
    with open(args.games, newline='', encoding='utf-8') as f:
        rdr = csv.DictReader(f)
        games_rows = list(rdr)

    # Determine games key column name (legacy id)
    games_key_candidates = ['game_id', 'id', 'old_id', 'legacy_id']
    games_key = None
    for c in games_key_candidates:
        if c in (rdr.fieldnames or []):
            games_key = c
            break
    if not games_key:
        # fallback to first column
        games_key = (rdr.fieldnames or [None])[0]

    games_by_old = {row[games_key]: row for row in games_rows}

    # Determine other useful columns
    igdb_col = None
    for c in ['igdb_id', 'game_igdb_id']:
        if c in (rdr.fieldnames or []):
            igdb_col = c
            break
    giantbomb_col = None
    for c in ['old_giantbomb_id', 'giantbomb_id', 'giantbomb']:
        if c in (rdr.fieldnames or []):
            giantbomb_col = c
            break
    title_col = 'title' if 'title' in (rdr.fieldnames or []) else None
    platform_col = 'platform' if 'platform' in (rdr.fieldnames or []) else None

    # Read sessions and enrich
    with open(args.sessions, newline='', encoding='utf-8') as f:
        sess_rdr = csv.DictReader(f)
        sessions = list(sess_rdr)

    enriched_fieldnames = list(sess_rdr.fieldnames or []) + ['game_title', 'game_platform', 'game_igdb_id', 'game_giantbomb_id', 'legacy_game_id']
    with open(args.out_csv, 'w', newline='', encoding='utf-8') as outcsv, open(args.out_sql, 'w', encoding='utf-8') as outsql:
        wr = csv.DictWriter(outcsv, fieldnames=enriched_fieldnames)
        wr.writeheader()

        outsql.write('-- Generated SQL to map session.game_id (legacy) to new games.id\\n')
        outsql.write('-- Review and run AFTER your new `games`/`platforms` tables exist.\\n')
        outsql.write('\nBEGIN;\n')

        for s in sessions:
            legacy_game_id = s.get('game_id') or s.get('game') or s.get('gameId')
            game_row = games_by_old.get(legacy_game_id)
            enriched = dict(s)
            enriched['legacy_game_id'] = legacy_game_id
            enriched['game_title'] = ''
            enriched['game_platform'] = ''
            enriched['game_igdb_id'] = ''
            enriched['game_giantbomb_id'] = ''

            if game_row:
                if title_col and title_col in game_row:
                    enriched['game_title'] = game_row.get(title_col, '')
                if platform_col and platform_col in game_row:
                    enriched['game_platform'] = game_row.get(platform_col, '')
                if igdb_col:
                    enriched['game_igdb_id'] = game_row.get(igdb_col, '')
                if giantbomb_col:
                    enriched['game_giantbomb_id'] = game_row.get(giantbomb_col, '')

            wr.writerow(enriched)

            # Build best-effort UPDATE SQL
            session_id = s.get('session_id') or s.get('id')
            if not session_id:
                # skip SQL for rows without session id
                continue

            # Prefer igdb_id, then giantbomb id, then title+platform
            if enriched.get('game_igdb_id'):
                outsql.write("-- map via igdb_id for session {sid}\n".format(sid=session_id))
                outsql.write("UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE igdb_id = {igdb} LIMIT 1) WHERE session_id = {sid} AND game_id = {old};\n".format(
                    igdb=quote_sql(enriched['game_igdb_id']), sid=quote_sql(session_id), old=quote_sql(legacy_game_id)
                ))
            elif enriched.get('game_giantbomb_id'):
                outsql.write("-- map via giantbomb id for session {sid}\n".format(sid=session_id))
                outsql.write("UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = {gb} LIMIT 1) WHERE session_id = {sid} AND game_id = {old};\n".format(
                    gb=quote_sql(enriched['game_giantbomb_id']), sid=quote_sql(session_id), old=quote_sql(legacy_game_id)
                ))
            elif enriched.get('game_title'):
                # Use title+platform subselect; this is fragile: review before running
                title_sql = quote_sql(enriched['game_title'])
                platform_sql = quote_sql(enriched['game_platform']) if enriched.get('game_platform') else 'NULL'
                outsql.write("-- map via title+platform for session {sid} (fragile, check results)\n".format(sid=session_id))
                outsql.write("UPDATE public.sessions SET game_id = (SELECT g.id FROM public.games g JOIN public.platforms p ON g.default_platform_id = p.platform_id WHERE g.title = {title} AND p.name = {platform} LIMIT 1) WHERE session_id = {sid} AND game_id = {old};\n".format(
                    title=title_sql, platform=platform_sql, sid=quote_sql(session_id), old=quote_sql(legacy_game_id)
                ))
            else:
                outsql.write("-- no mapping available for session {sid} (legacy_game_id={old})\n".format(sid=session_id, old=legacy_game_id))

        outsql.write('\nCOMMIT;\n')

    print('Wrote:', args.out_csv)
    print('Wrote:', args.out_sql)


if __name__ == '__main__':
    main()
