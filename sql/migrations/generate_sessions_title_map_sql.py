#!/usr/bin/env python3
"""
Generate a single SQL file that maps sessions to new game ids using game title (+ platform when available).

Usage:
  python generate_sessions_title_map_sql.py \
    --in csv/migrations/sessions_enriched.csv \
    --out sql/migrations/sessions_update_game_ids_by_title.sql

The generated SQL uses a temporary table and two UPDATEs (with platform, without platform).
Review before running.
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
    parser.add_argument('--in', dest='infile', default='sql/migrations/sessions_enriched.csv')
    parser.add_argument('--out', dest='outfile', default='sql/migrations/sessions_update_game_ids_by_title.sql')
    args = parser.parse_args(argv)

    if not os.path.exists(args.infile):
        print('Input CSV not found:', args.infile, file=sys.stderr)
        sys.exit(2)

    rows = []
    with open(args.infile, newline='', encoding='utf-8') as f:
        rdr = csv.DictReader(f)
        for r in rdr:
            session_id = r.get('session_id') or r.get('id')
            legacy_game_id = r.get('game_id')
            title = r.get('game_title') or ''
            platform = r.get('game_platform') or ''
            if not session_id or not title:
                continue
            rows.append((session_id, legacy_game_id or '', title, platform))

    if not rows:
        print('No rows to process.')
        return

    with open(args.outfile, 'w', encoding='utf-8') as out:
        out.write('-- Generated SQL mapping sessions to games by title (+platform when available)\n')
        out.write('-- Review and run AFTER `games` and `platforms` are created and populated.\n\n')
        out.write('BEGIN;\n')
        out.write('CREATE TEMP TABLE tmp_session_map(session_id text, legacy_game_id text, title text, platform text) ON COMMIT DROP;\n')

        # write inserts in batches
        batch = []
        for sid, legacy, title, platform in rows:
            batch.append("({sid}, {legacy}, {title}, {platform})".format(
                sid=q(sid), legacy=q(legacy), title=q(title), platform=q(platform)
            ))
            if len(batch) >= 200:
                out.write('INSERT INTO tmp_session_map(session_id, legacy_game_id, title, platform) VALUES\n')
                out.write(',\n'.join(batch) + ';\n')
                batch = []
        if batch:
            out.write('INSERT INTO tmp_session_map(session_id, legacy_game_id, title, platform) VALUES\n')
            out.write(',\n'.join(batch) + ';\n')

        out.write('\n-- Update sessions where we have both title and platform (best match)\n')
        out.write("UPDATE public.sessions s SET game_id = g.game_id FROM tmp_session_map m JOIN public.platforms p ON m.platform IS NOT NULL AND m.platform <> '' AND p.name = m.platform JOIN public.games g ON g.default_platform_id = p.platform_id AND g.title = m.title WHERE CAST(s.session_id AS text) = m.session_id AND CAST(s.game_id AS text) = m.legacy_game_id;\n\n")

        out.write('-- Update sessions where platform is blank: match by title only (may be ambiguous)\n')
        out.write("UPDATE public.sessions s SET game_id = g.game_id FROM tmp_session_map m JOIN public.games g ON g.title = m.title WHERE (m.platform IS NULL OR m.platform = '') AND CAST(s.session_id AS text) = m.session_id AND CAST(s.game_id AS text) = m.legacy_game_id;\n\n")

        out.write('COMMIT;\n')

    print('Wrote', args.outfile)


if __name__ == '__main__':
    main()
