#!/usr/bin/env python3
"""
Generate INSERT SQL for sessions CSV, resolving platform name -> platform_id.

Usage:
  python sessions_to_sql.py --in sql/old_db_data/sessions_v3.csv --out sql/migrations/sessions_inserts_from_csv.sql --user <UUID>

The generated SQL contains INSERT INTO public.sessions (...) VALUES (...) statements.
It uses a subselect to get platform_id: (SELECT platform_id FROM public.platforms WHERE name = 'Platform' LIMIT 1)
Set `--user` to the target `auth.users.id` (UUID). If omitted, the script writes a placeholder.
"""
import argparse
import csv
import os
import sys


def q(s):
    if s is None or s == '':
        return 'NULL'
    s = str(s)
    s = s.replace("'", "''")
    return "'{}'".format(s)


def main(argv=None):
    parser = argparse.ArgumentParser()
    parser.add_argument('--in', dest='infile', default='sql/old_db_data/sessions_v3.csv')
    parser.add_argument('--out', dest='outfile', default='sql/migrations/sessions_inserts_from_csv.sql')
    parser.add_argument('--user', dest='user_id', default='YOUR_USER_UUID_HERE')
    args = parser.parse_args(argv)

    if not os.path.exists(args.infile):
        print('Input CSV not found:', args.infile, file=sys.stderr)
        sys.exit(2)

    # Platform name mapping from legacy text -> canonical platform name in new DB
    PLATFORM_NAME_MAP = {
        'Switch': 'Nintendo Switch',
        'Switch 2': 'Nintendo Switch 2',
        'PS3': 'Playstation 3',
        'PS4': 'Playstation 4',
        'Oculus': 'Oculus Rift'
    }

    with open(args.infile, newline='', encoding='utf-8') as f:
        rdr = csv.DictReader(f)
        rows = list(rdr)

    if not rows:
        print('No rows in CSV')
        return

    # Batch output: split into multiple files with at most chunk_size rows each
    chunk_size = 1200
    # Build value tuples for all rows first
    tuples = []
    for r in rows:
        session_id = r.get('session_id')
        game_id = r.get('game_id') or 'NULL'
        platform_raw = (r.get('platform') or '').strip()
        platform = PLATFORM_NAME_MAP.get(platform_raw, platform_raw)
        start_date = r.get('start_date') or ''
        start_time = r.get('start_time') or ''
        duration = r.get('duration') or r.get('duration_minutes') or 'NULL'
        location = r.get('location') or ''
        game_mode = r.get('game_mode') or ''
        controller_style = r.get('controller_style') or ''
        notes = r.get('notes') or ''

        vals = []
        if session_id:
            vals.append(session_id)
        else:
            vals.append('DEFAULT')
        vals.append(q(args.user_id))
        if game_id and str(game_id).upper() != 'NULL':
            game_sql = "(SELECT g.game_id FROM public.games g WHERE g.title = (SELECT TRIM(s.title) FROM public.STAGING_games s WHERE s.game_id = {legacy} LIMIT 1) LIMIT 1)".format(legacy=game_id)
        else:
            game_sql = 'NULL'
        vals.append(game_sql)
        if platform:
            platform_sql = "(SELECT platform_id FROM public.platforms WHERE name = {p} LIMIT 1)".format(p=q(platform))
        else:
            platform_sql = 'NULL'
        vals.append(platform_sql)
        if start_date:
            vals.append("{d}::date".format(d=q(start_date)))
        else:
            vals.append('NULL')
        if start_time:
            vals.append("{t}::time".format(t=q(start_time)))
        else:
            vals.append('NULL')
        vals.append(duration if duration.upper()!='NULL' else 'NULL')
        vals.append(q(game_mode))
        vals.append(q(controller_style))
        vals.append(q(location))
        vals.append(q(notes))

        tuples.append('(' + ', '.join(vals) + ')')

    # chunk and write files
    base_out = args.outfile
    if base_out.lower().endswith('.sql'):
        base = base_out[:-4]
    else:
        base = base_out

    col_list = '(session_id, user_id, game_id, platform_id, start_date, start_time, duration_minutes, game_mode, controller_style, location, notes)'
    total = len(tuples)
    parts = 0
    for i in range(0, total, chunk_size):
        parts += 1
        chunk = tuples[i:i+chunk_size]
        part_path = f"{base}_part{parts:03d}.sql"
        with open(part_path, 'w', encoding='utf-8') as outpart:
            outpart.write(f"-- Generated INSERTs from CSV (batch {parts})\n")
            outpart.write('BEGIN;\n')
            outpart.write('INSERT INTO public.sessions ' + col_list + ' VALUES\n')
            outpart.write(',\n'.join(chunk) + ';\n')
            outpart.write('COMMIT;\n')

    print(f'Wrote {parts} files with up to {chunk_size} rows each (total {total} rows)')

    print('Wrote', args.outfile)

if __name__ == '__main__':
    main()
