Migration guide — import from old Postgres

Summary
-------
The provided `old_postgres.sql` contains only CREATE TABLE statements (schema), not row data. To migrate your data you need the old database's data (a dump with INSERTs, or access to the running old Postgres instance). This folder contains a small set of templates and instructions to:

- export CSVs from the old database
- load them into temporary/staging tables on the new Supabase database
- run transforms to populate the normalized schema (lookups, games, sessions, junctions)

Prerequisites
-------------
- Access to your old Postgres database (connection string or a SQL dump that includes INSERTs)
- `psql` client installed
- Supabase project connection string / psql connection info (or use the Supabase SQL editor)

Step A — Export CSVs from the old DB (recommended)

Example using `psql` from your machine (replace connection details):

```bash
# export games
psexport='postgres://user:pass@old-host:5432/olddb'
pescmd="\copy (SELECT game_id, title, platform, franchise, publisher, release_date, first_played, last_played, metacritic_score, multiplayer_style, controller_style, store, giantbomb_id, giantbomb_img_url) TO 'games.csv' CSV HEADER"
psql "$psexport" -c "$pescmd"

# export sessions
psql "$psexport" -c "\copy (SELECT session_id, game_id, platform, start_date, start_time, duration, location, game_mode, controller_style) TO 'sessions.csv' CSV HEADER"

# export players
psql "$psexport" -c "\copy (SELECT player_id, name) TO 'players.csv' CSV HEADER"

# export developers, game_developer, genres, game_genre, themes, game_theme
psql "$psexport" -c "\copy (SELECT * FROM developers) TO 'developers.csv' CSV HEADER"
psql "$psexport" -c "\copy (SELECT * FROM game_developer) TO 'game_developer.csv' CSV HEADER"
psql "$psexport" -c "\copy (SELECT * FROM genres) TO 'genres.csv' CSV HEADER"
psql "$psexport" -c "\copy (SELECT * FROM game_genre) TO 'game_genre.csv' CSV HEADER"
psql "$psexport" -c "\copy (SELECT * FROM themes) TO 'themes.csv' CSV HEADER"
psql "$psexport" -c "\copy (SELECT * FROM game_theme) TO 'game_theme.csv' CSV HEADER"
psql "$psexport" -c "\copy (SELECT * FROM session_player) TO 'session_player.csv' CSV HEADER"
```

If you have a SQL dump with INSERT statements, you can also load that into a temporary local Postgres instance and then run the `psql \copy` commands above.

Step B — Load CSVs into the Supabase/new DB (staging)

Option 1: Use `psql` to load CSVs directly into a temporary schema on your Supabase DB. Replace `SUPABASE_PG_CONN` below with your connection string.

```bash
SUPABASE_PG_CONN='postgres://<dbuser>:<dbpass>@db.<project>.supabase.co:5432/postgres'

# create a staging schema once (or use public.temp_ tables)
psql "$SUPABASE_PG_CONN" -c "CREATE SCHEMA IF NOT EXISTS staging;"

# load CSV into staging.st_games
psql "$SUPABASE_PG_CONN" -c "\copy staging.st_games(game_id, title, platform, franchise, publisher, release_date, first_played, last_played, metacritic_score, multiplayer_style, controller_style, store, giantbomb_id, giantbomb_img_url) FROM 'games.csv' CSV HEADER"

# load other CSVs similarly (sessions -> staging.st_sessions, players -> staging.st_players, etc.)
```

Step C — Run transforms to populate normalized tables

Use the template `import_from_old_template.sql` in this folder. It assumes you've loaded CSVs into `staging.*` tables, and that you will replace the placeholder `<USER_UUID>` with the Supabase `auth.users` id that should own imported rows (games, players, sessions). The template:

- populates lookup tables (platforms, publishers, developers, genres, themes, franchises)
- inserts games and maps their lookup foreign keys
- inserts sessions and attaches them to the imported games
- populates junction tables (game_developer, game_genre, game_theme, session_player)

Important notes
---------------
- `players.user_id`, `games.user_id`, and `sessions.user_id` in your new schema are NOT NULL and must be set. Decide which Supabase user will own the imported rows and provide their UUID when running the template (replace `<USER_UUID>`).
- Review duplicates/normalization: the template uses simple DISTINCT inserts for lookups; review collisions (case differences) and adjust as needed.
- Back up your Supabase DB before running any import on production.

If you'd like, I can:
- generate the `import_from_old_template.sql` now (I've added it alongside this README), or
- create runnable scripts that use `psql \copy` and then run the transforms against your Supabase connection if you provide the connection strings (or run them locally and paste results).
