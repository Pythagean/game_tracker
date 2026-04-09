#!/usr/bin/env python3
"""Generate SQL to insert platforms (if needed) and set games.default_platform_id per CSV row.

Usage:
  python generate_game_platform_sql.py --input sql/old_db_data/games.csv --output sql/migrations/games_set_platforms.sql

Behavior:
  - Adds `default_platform_id` column to `public.games` if it doesn't exist.
  - For each CSV row, inserts platform into `public.platforms` (ON CONFLICT DO NOTHING).
  - Updates `public.games.default_platform_id` using `igdb_id` when present, otherwise matches on `title`.

The script is defensive: it detects platform/title/igdb_id columns automatically.
"""
import csv
import argparse
import sys
import os


def q(s):
    if s is None:
        return 'NULL'
    s2 = str(s)
    s2 = s2.replace("'", "''")
    return f"'{s2}'"


def detect_columns(header):
    cols = {h.lower(): h for h in header}
    # look for platform column
    platform_col = None
    for candidate in ['platform', 'platform_name', 'default_platform', 'platforms']:
        if candidate in cols:
            platform_col = cols[candidate]
            break
    # title
    title_col = None
    for candidate in ['title', 'name']:
        if candidate in cols:
            title_col = cols[candidate]
            break
    # igdb id
    igdb_col = None
    for candidate in ['igdb_id', 'igdbid', 'igdb']:
        if candidate in cols:
            igdb_col = cols[candidate]
            break
    return title_col, platform_col, igdb_col


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--input', '-i', default='sql/old_db_data/games.csv')
    p.add_argument('--output', '-o', default='sql/migrations/games_set_platforms.sql')
    args = p.parse_args()

    if not os.path.exists(args.input):
        print('Input CSV not found:', args.input, file=sys.stderr)
        sys.exit(1)

    out_lines = []
    out_lines.append('-- Generated platform insert + games.default_platform_id update script')
    out_lines.append('BEGIN;')
    out_lines.append("-- ensure column exists")
    out_lines.append("ALTER TABLE public.games ADD COLUMN IF NOT EXISTS default_platform_id INTEGER REFERENCES public.platforms(platform_id) ON DELETE SET NULL;")
    out_lines.append("")

    with open(args.input, newline='', encoding='utf-8') as inf:
        reader = csv.DictReader(inf)
        title_col, platform_col, igdb_col = detect_columns(reader.fieldnames)
        if not platform_col:
            print('Could not detect a platform column in CSV headers:', reader.fieldnames, file=sys.stderr)
            sys.exit(1)
        if not title_col and not igdb_col:
            print('CSV must contain at least a title or igdb_id column to match games.', file=sys.stderr)
            sys.exit(1)

        for row in reader:
            platform = row.get(platform_col) or ''
            platform = platform.strip()
            if not platform:
                # skip rows without platform
                continue

            # insert platform (manufacturer unknown)
            out_lines.append(f"-- row for {row.get(title_col) or row.get(igdb_col)}")
            out_lines.append(
                f"INSERT INTO public.platforms (name, manufacturer) VALUES ({q(platform)}, '') ON CONFLICT (name) DO NOTHING;"
            )

            # choose update predicate
            igdb_val = None
            if igdb_col:
                igdb_val = (row.get(igdb_col) or '').strip()
                if igdb_val == '' or igdb_val.upper() == 'NULL':
                    igdb_val = None

            if igdb_val:
                # update by igdb_id
                out_lines.append(
                    f"UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = {q(platform)} LIMIT 1) WHERE igdb_id = {igdb_val};"
                )
            else:
                # update by title
                title_val = (row.get(title_col) or '').strip()
                if title_val:
                    out_lines.append(
                        f"UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = {q(platform)} LIMIT 1) WHERE title = {q(title_val)};"
                    )
                else:
                    out_lines.append("-- no matching key for this row; skipped")

            out_lines.append("")

    out_lines.append('COMMIT;')

    with open(args.output, 'w', encoding='utf-8') as outf:
        outf.write('\n'.join(out_lines))

    print('Wrote:', args.output)


if __name__ == '__main__':
    main()
