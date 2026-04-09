-- Staging table DDL for legacy CSVs in sql/old_db_data
-- Run this on your Supabase/Postgres instance to create STAGING_* tables.
-- To load CSVs locally with psql, use (from repo root):
-- \copy public.STAGING_games FROM 'sql/old_db_data/games.csv' WITH CSV HEADER;
-- Repeat for each file, replacing the filename and table.

CREATE SCHEMA IF NOT EXISTS public;

-- STAGING_themes
CREATE TABLE IF NOT EXISTS public.STAGING_themes (
  theme_id integer,
  name text
);

-- STAGING_sessions (original)
CREATE TABLE IF NOT EXISTS public.STAGING_sessions (
  session_id integer,
  game_id integer,
  start_date date,
  start_time time,
  duration_minutes text,
  location text,
  game_mode text,
  controller_style text,
  platform text,
  user_id text
);

-- STAGING_players
CREATE TABLE IF NOT EXISTS public.STAGING_players (
  player_id integer,
  name text,
  user_id text
);

-- STAGING_genres
CREATE TABLE IF NOT EXISTS public.STAGING_genres (
  genre_id integer,
  name text
);

-- STAGING_game_theme
CREATE TABLE IF NOT EXISTS public.STAGING_game_theme (
  game_id integer,
  theme_id integer
);

-- STAGING_game_genre
CREATE TABLE IF NOT EXISTS public.STAGING_game_genre (
  game_id integer,
  genre_id integer
);

-- STAGING_game_developer
CREATE TABLE IF NOT EXISTS public.STAGING_game_developer (
  game_id integer,
  developer_id integer
);

-- STAGING_games
CREATE TABLE IF NOT EXISTS public.STAGING_games (
  game_id integer,
  title text,
  platform text,
  franchise text,
  publisher text,
  release_date date,
  first_played date,
  last_played date,
  metacritic_score integer,
  multiplayer_style text,
  controller_style text,
  store text,
  giantbomb_id integer,
  giantbomb_img_url text
);

-- STAGING_developers
CREATE TABLE IF NOT EXISTS public.STAGING_developers (
  developer_id integer,
  name text
);

-- Helpful notes:
-- - After creating these tables, load CSVs using psql's \copy or Supabase import tools.
-- - Table names follow STAGING_<filename> pattern (underscores preserved).
-- - Review and adjust column types if you need stricter typing (UUID, numeric, etc.).
