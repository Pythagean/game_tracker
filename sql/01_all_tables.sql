-- Combined SQL for creating all tables and related policies/triggers
-- Generated for easier re-run. Run with psql or Supabase SQL editor.

-- NOTE: These files were concatenated from sql/tables/*.sql

-- 01_platforms.sql
DROP TABLE IF EXISTS public.platforms CASCADE;

CREATE TABLE IF NOT EXISTS public.platforms
(
    platform_id SERIAL PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL
);

-- Ensure platform names are unique so ON CONFLICT (name) works when generating platform inserts
CREATE UNIQUE INDEX IF NOT EXISTS ux_platforms_name ON public.platforms (name);

-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.platforms ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read platforms" ON public.platforms;
CREATE POLICY "Authenticated users can read platforms"
    ON public.platforms FOR SELECT TO authenticated USING (true);

-- 02_publishers.sql
DROP TABLE IF EXISTS public.publishers CASCADE;

CREATE TABLE IF NOT EXISTS public.publishers
(
    publisher_id SERIAL PRIMARY KEY,
    name         VARCHAR(250) NOT NULL
);

-- Ensure publisher names are unique so ON CONFLICT (name) works
CREATE UNIQUE INDEX IF NOT EXISTS ux_publishers_name ON public.publishers (name);

-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.publishers ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read publishers" ON public.publishers;
CREATE POLICY "Authenticated users can read publishers"
    ON public.publishers FOR SELECT TO authenticated USING (true);

-- 03_developers.sql
DROP TABLE IF EXISTS public.developers CASCADE;

CREATE TABLE IF NOT EXISTS public.developers
(
    developer_id SERIAL PRIMARY KEY,
    name         VARCHAR(250) NOT NULL
);

-- Ensure developer names are unique so ON CONFLICT (name) works
CREATE UNIQUE INDEX IF NOT EXISTS ux_developers_name ON public.developers (name);

-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.developers ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read developers" ON public.developers;
CREATE POLICY "Authenticated users can read developers"
    ON public.developers FOR SELECT TO authenticated USING (true);

-- 04_genres.sql
DROP TABLE IF EXISTS public.genres CASCADE;

CREATE TABLE IF NOT EXISTS public.genres
(
    genre_id SERIAL PRIMARY KEY,
        name     VARCHAR(100) NOT NULL
);
-- Ensure genre names are unique so ON CONFLICT (name) works
CREATE UNIQUE INDEX IF NOT EXISTS ux_genres_name ON public.genres (name);
-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.genres ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read genres" ON public.genres;
CREATE POLICY "Authenticated users can read genres"
    ON public.genres FOR SELECT TO authenticated USING (true);

-- 05_themes.sql
DROP TABLE IF EXISTS public.themes CASCADE;

CREATE TABLE IF NOT EXISTS public.themes
(
    theme_id SERIAL PRIMARY KEY,
        name     VARCHAR(100) NOT NULL
);

-- Ensure theme names are unique so ON CONFLICT (name) works
CREATE UNIQUE INDEX IF NOT EXISTS ux_themes_name ON public.themes (name);

-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.themes ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read themes" ON public.themes;
CREATE POLICY "Authenticated users can read themes"
    ON public.themes FOR SELECT TO authenticated USING (true);

-- 06_players.sql
DROP TABLE IF EXISTS public.players CASCADE;

CREATE TABLE IF NOT EXISTS public.players
(
    player_id SERIAL PRIMARY KEY,
    user_id   UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE,
    name      VARCHAR(50) NOT NULL
);

-- Enable RLS and restrict players to their owner
ALTER TABLE public.players ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own players" ON public.players;
CREATE POLICY "Users can select own players"
    ON public.players FOR SELECT TO authenticated USING (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can insert own players" ON public.players;
CREATE POLICY "Users can insert own players"
    ON public.players FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can update own players" ON public.players;
CREATE POLICY "Users can update own players"
    ON public.players FOR UPDATE TO authenticated
    USING (user_id = auth.uid())
    WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can delete own players" ON public.players;
CREATE POLICY "Users can delete own players"
    ON public.players FOR DELETE TO authenticated USING (user_id = auth.uid());

-- 07_franchises.sql
DROP TABLE IF EXISTS public.franchises CASCADE;

CREATE TABLE IF NOT EXISTS public.franchises
(
    franchise_id SERIAL PRIMARY KEY,
    name         VARCHAR(100) NOT NULL
);

-- Ensure franchise names are unique so ON CONFLICT (name) works
CREATE UNIQUE INDEX IF NOT EXISTS ux_franchises_name ON public.franchises (name);

-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.franchises ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read franchises" ON public.franchises;
CREATE POLICY "Authenticated users can read franchises"
    ON public.franchises FOR SELECT TO authenticated USING (true);

-- 08_games.sql
DROP TABLE IF EXISTS public.games CASCADE;

CREATE TABLE IF NOT EXISTS public.games
(
    game_id          SERIAL PRIMARY KEY,
    user_id          UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE,
    title            VARCHAR(250) NOT NULL,
    franchise_id     INTEGER      REFERENCES public.franchises (franchise_id) ON DELETE SET NULL,
    release_date     DATE         NOT NULL,
    publisher_id     INTEGER      REFERENCES public.publishers (publisher_id) ON DELETE SET NULL,
    metacritic_score INTEGER      CHECK (metacritic_score BETWEEN 0 AND 100),
    user_rating      NUMERIC(3,1) CHECK (user_rating BETWEEN 0 AND 10),
    cover_url        VARCHAR(500),
    last_played_at   timestamptz,
    total_playtime_minutes integer NOT NULL DEFAULT 0,
    play_count       integer NOT NULL DEFAULT 0,
    store_info       jsonb,
    igdb_id          INTEGER,
    default_platform_id INTEGER REFERENCES public.platforms (platform_id) ON DELETE SET NULL,
    notes            TEXT
);

-- Unique index for igdb_id so ON CONFLICT (igdb_id) works
CREATE UNIQUE INDEX IF NOT EXISTS ux_games_igdb_id ON public.games (igdb_id);

-- Enable RLS and restrict games to their owner
ALTER TABLE public.games ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own games" ON public.games;
CREATE POLICY "Users can select own games"
    ON public.games FOR SELECT TO authenticated USING (user_id = auth.uid());

DROP POLICY IF EXISTS "Unauthenticated users can select by user_id" ON public.games;
CREATE POLICY "Unauthenticated users can select by user_id"
    ON public.games FOR SELECT TO public USING (TRUE);

DROP POLICY IF EXISTS "Users can insert own games" ON public.games;
CREATE POLICY "Users can insert own games"
    ON public.games FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can update own games" ON public.games;
CREATE POLICY "Users can update own games"
    ON public.games FOR UPDATE TO authenticated
    USING (user_id = auth.uid())
    WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can delete own games" ON public.games;
CREATE POLICY "Users can delete own games"
    ON public.games FOR DELETE TO authenticated USING (user_id = auth.uid());

-- 09_sessions.sql
DROP TABLE IF EXISTS public.sessions CASCADE;

CREATE TABLE IF NOT EXISTS public.sessions
(
    session_id       SERIAL PRIMARY KEY,
    user_id          UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE,
    game_id          INTEGER      NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    platform_id      INTEGER      NOT NULL REFERENCES public.platforms (platform_id) ON DELETE RESTRICT,
    start_date       DATE         NOT NULL,
    start_time       TIME,
    duration_minutes INTEGER      NOT NULL CHECK (duration_minutes > 0),
    game_mode        VARCHAR(50),
    controller_style VARCHAR(50),
    location         VARCHAR(100),
    notes            TEXT
);

-- Trigger function to update game-level stats on session insert
CREATE OR REPLACE FUNCTION public.fn_update_game_stats_on_session_insert()
RETURNS trigger AS $$
DECLARE
    start_ts timestamp;
BEGIN
    IF NEW.start_date IS NULL THEN
        start_ts := now();
    ELSE
        start_ts := (NEW.start_date::text || ' ' || COALESCE(NEW.start_time::text,'00:00:00'))::timestamp;
    END IF;

    UPDATE public.games
    SET total_playtime_minutes = COALESCE(total_playtime_minutes,0) + COALESCE(NEW.duration_minutes,0),
            play_count = COALESCE(play_count,0) + 1,
            last_played_at = GREATEST(COALESCE(last_played_at, to_timestamp(0)), start_ts::timestamptz)
    WHERE game_id = NEW.game_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Attach trigger to sessions (idempotent)
DROP TRIGGER IF EXISTS trg_games_update_on_session_insert ON public.sessions;
CREATE TRIGGER trg_games_update_on_session_insert
AFTER INSERT ON public.sessions
FOR EACH ROW
EXECUTE FUNCTION public.fn_update_game_stats_on_session_insert();

-- Index to speed up queries ordering games by last_played_at per user
CREATE INDEX IF NOT EXISTS idx_games_user_last_played ON public.games (user_id, last_played_at DESC);

-- Enable RLS and restrict sessions to their owner
ALTER TABLE public.sessions ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own sessions" ON public.sessions;
CREATE POLICY "Users can select own sessions"
    ON public.sessions FOR SELECT TO authenticated USING (user_id = auth.uid());

DROP POLICY IF EXISTS "Unauthenticated users can select by user_id" ON public.sessions;
CREATE POLICY "Unauthenticated users can select by user_id"
    ON public.sessions FOR SELECT TO public USING (TRUE);

DROP POLICY IF EXISTS "Users can insert own sessions" ON public.sessions;
CREATE POLICY "Users can insert own sessions"
    ON public.sessions FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can update own sessions" ON public.sessions;
CREATE POLICY "Users can update own sessions"
    ON public.sessions FOR UPDATE TO authenticated
    USING (user_id = auth.uid())
    WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can delete own sessions" ON public.sessions;
CREATE POLICY "Users can delete own sessions"
    ON public.sessions FOR DELETE TO authenticated USING (user_id = auth.uid());

-- 10_game_platform.sql
DROP TABLE IF EXISTS public.game_platform CASCADE;

CREATE TABLE IF NOT EXISTS public.game_platform
(
    game_id     INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    platform_id INTEGER NOT NULL REFERENCES public.platforms (platform_id) ON DELETE CASCADE,
    CONSTRAINT game_platform_pkey PRIMARY KEY (game_id, platform_id)
);

-- Enable RLS and gate access to parent game ownership
ALTER TABLE public.game_platform ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own game_platform" ON public.game_platform;
CREATE POLICY "Users can select own game_platform"
    ON public.game_platform FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_platform.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can insert own game_platform" ON public.game_platform;
CREATE POLICY "Users can insert own game_platform"
    ON public.game_platform FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_platform.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can delete own game_platform" ON public.game_platform;
CREATE POLICY "Users can delete own game_platform"
    ON public.game_platform FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_platform.game_id
            AND games.user_id = auth.uid()
    ));

-- 11_game_developer.sql
DROP TABLE IF EXISTS public.game_developer CASCADE;

CREATE TABLE IF NOT EXISTS public.game_developer
(
    game_id      INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    developer_id INTEGER NOT NULL REFERENCES public.developers (developer_id) ON DELETE CASCADE,
    CONSTRAINT game_developer_pkey PRIMARY KEY (game_id, developer_id)
);

-- Enable RLS and gate access to parent game ownership
ALTER TABLE public.game_developer ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own game_developer" ON public.game_developer;
CREATE POLICY "Users can select own game_developer"
    ON public.game_developer FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_developer.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can insert own game_developer" ON public.game_developer;
CREATE POLICY "Users can insert own game_developer"
    ON public.game_developer FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_developer.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can delete own game_developer" ON public.game_developer;
CREATE POLICY "Users can delete own game_developer"
    ON public.game_developer FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_developer.game_id
            AND games.user_id = auth.uid()
    ));

-- 12_game_genre.sql
DROP TABLE IF EXISTS public.game_genre CASCADE;

CREATE TABLE IF NOT EXISTS public.game_genre
(
    game_id  INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    genre_id INTEGER NOT NULL REFERENCES public.genres (genre_id) ON DELETE CASCADE,
    CONSTRAINT game_genre_pkey PRIMARY KEY (game_id, genre_id)
);

-- Enable RLS and gate access to parent game ownership
ALTER TABLE public.game_genre ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own game_genre" ON public.game_genre;
CREATE POLICY "Users can select own game_genre"
    ON public.game_genre FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_genre.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can insert own game_genre" ON public.game_genre;
CREATE POLICY "Users can insert own game_genre"
    ON public.game_genre FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_genre.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can delete own game_genre" ON public.game_genre;
CREATE POLICY "Users can delete own game_genre"
    ON public.game_genre FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_genre.game_id
            AND games.user_id = auth.uid()
    ));

-- 13_game_theme.sql
DROP TABLE IF EXISTS public.game_theme CASCADE;

CREATE TABLE IF NOT EXISTS public.game_theme
(
    game_id  INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    theme_id INTEGER NOT NULL REFERENCES public.themes (theme_id) ON DELETE CASCADE,
    CONSTRAINT game_theme_pkey PRIMARY KEY (game_id, theme_id)
);

-- Enable RLS and gate access to parent game ownership
ALTER TABLE public.game_theme ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own game_theme" ON public.game_theme;
CREATE POLICY "Users can select own game_theme"
    ON public.game_theme FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_theme.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can insert own game_theme" ON public.game_theme;
CREATE POLICY "Users can insert own game_theme"
    ON public.game_theme FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_theme.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can delete own game_theme" ON public.game_theme;
CREATE POLICY "Users can delete own game_theme"
    ON public.game_theme FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_theme.game_id
            AND games.user_id = auth.uid()
    ));

-- 14_session_player.sql
DROP TABLE IF EXISTS public.session_player CASCADE;

CREATE TABLE IF NOT EXISTS public.session_player
(
    session_id INTEGER NOT NULL REFERENCES public.sessions (session_id) ON DELETE CASCADE,
    player_id  INTEGER NOT NULL REFERENCES public.players (player_id) ON DELETE CASCADE,
    CONSTRAINT session_player_pkey PRIMARY KEY (session_id, player_id)
);

-- Enable RLS and gate access via parent session ownership
ALTER TABLE public.session_player ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own session_player" ON public.session_player;
CREATE POLICY "Users can select own session_player"
    ON public.session_player FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.sessions
        WHERE sessions.session_id = session_player.session_id
            AND sessions.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can insert own session_player" ON public.session_player;
CREATE POLICY "Users can insert own session_player"
    ON public.session_player FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.sessions
        WHERE sessions.session_id = session_player.session_id
            AND sessions.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can delete own session_player" ON public.session_player;
CREATE POLICY "Users can delete own session_player"
    ON public.session_player FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.sessions
        WHERE sessions.session_id = session_player.session_id
            AND sessions.user_id = auth.uid()
    ));

-- 15_public_read_lookups.sql
-- Allow public (unauthenticated) SELECT on lookup tables
-- Run this in Supabase SQL editor to permit the frontend to read lookup data without signing in.

-- Note: only do this for non-sensitive lookup tables. Writes should remain restricted.

ALTER TABLE public.platforms   ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read platforms" ON public.platforms;
CREATE POLICY "Public read platforms"
  ON public.platforms FOR SELECT TO public USING (true);

ALTER TABLE public.publishers  ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read publishers" ON public.publishers;
CREATE POLICY "Public read publishers"
  ON public.publishers FOR SELECT TO public USING (true);

ALTER TABLE public.developers  ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read developers" ON public.developers;
CREATE POLICY "Public read developers"
  ON public.developers FOR SELECT TO public USING (true);

ALTER TABLE public.genres      ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read genres" ON public.genres;
CREATE POLICY "Public read genres"
  ON public.genres FOR SELECT TO public USING (true);

ALTER TABLE public.themes      ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read themes" ON public.themes;
CREATE POLICY "Public read themes"
  ON public.themes FOR SELECT TO public USING (true);

ALTER TABLE public.franchises  ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read franchises" ON public.franchises;
CREATE POLICY "Public read franchises"
  ON public.franchises FOR SELECT TO public USING (true);

ALTER TABLE public.players     ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read players" ON public.players;
CREATE POLICY "Public read players"
  ON public.players FOR SELECT TO public USING (true);
