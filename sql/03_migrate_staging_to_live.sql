-- =============================================================================
-- MIGRATION: Staging tables → live normalized tables
-- Run after 01_all_tables.sql and 02_create_staging_tables.sql have been applied
-- and staging tables have been populated from the old DB CSVs.
--
-- Replace the UUID below with the target user's auth.users.id before running.
-- =============================================================================

DO $$ BEGIN
  IF NOT EXISTS (SELECT 1 FROM auth.users WHERE id = '17a87e84-cecb-44fa-9d43-476c8ad9954f') THEN
    RAISE EXCEPTION 'Target user UUID not found in auth.users. Update the UUID in this script.';
  END IF;
END $$;

-- =============================================================================
-- PRE-FLIGHT: Fix staging column name mismatch.
-- STAGING_sessions was created with 'duration_minutes' but sessions.csv exports
-- the column as 'duration'. Rename it so the data imported from CSV is accessible.
-- Safe to run multiple times (IF EXISTS guard).
-- =============================================================================
DO $$ BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public'
      AND table_name   = 'staging_sessions'
      AND column_name  = 'duration_minutes'
  ) THEN
    ALTER TABLE public.staging_sessions RENAME COLUMN duration_minutes TO duration;
  END IF;
END $$;

-- Convenience variable – referenced throughout as a cast literal
-- (Supabase SQL editor doesn't support \set, so we use a CTE/subquery pattern instead)

-- =============================================================================
-- STEP 1: Lookup tables – developers, genres, themes
-- These have no FK dependencies.
-- =============================================================================

INSERT INTO public.developers (name)
SELECT DISTINCT TRIM(name)
FROM public.STAGING_developers
WHERE TRIM(COALESCE(name, '')) <> ''
ON CONFLICT (name) DO NOTHING;

INSERT INTO public.genres (name)
SELECT DISTINCT TRIM(name)
FROM public.STAGING_genres
WHERE TRIM(COALESCE(name, '')) <> ''
ON CONFLICT (name) DO NOTHING;

INSERT INTO public.themes (name)
SELECT DISTINCT TRIM(name)
FROM public.STAGING_themes
WHERE TRIM(COALESCE(name, '')) <> ''
ON CONFLICT (name) DO NOTHING;

-- =============================================================================
-- STEP 2: Publishers – derived from STAGING_games.publisher
-- =============================================================================

INSERT INTO public.publishers (name)
SELECT DISTINCT TRIM(publisher)
FROM public.STAGING_games
WHERE TRIM(COALESCE(publisher, '')) NOT IN ('', 'N/A')
ON CONFLICT (name) DO NOTHING;

-- =============================================================================
-- STEP 3: Franchises – derived from STAGING_games.franchise
-- =============================================================================

INSERT INTO public.franchises (name)
SELECT DISTINCT TRIM(franchise)
FROM public.STAGING_games
WHERE TRIM(COALESCE(franchise, '')) NOT IN ('', 'N/A')
ON CONFLICT (name) DO NOTHING;

-- =============================================================================
-- STEP 4: Platforms – derived from STAGING_games.platform and STAGING_sessions.platform.
-- Legacy names (PS4, PS3, Switch, Oculus) are normalized to canonical names.
-- manufacturer is unknown from the old data; set to empty string as placeholder.
-- =============================================================================

INSERT INTO public.platforms (name, manufacturer)
SELECT DISTINCT
    CASE TRIM(platform)
        WHEN 'Switch'    THEN 'Nintendo Switch'
        WHEN 'Switch 2'  THEN 'Nintendo Switch 2'
        WHEN 'PS3'       THEN 'Playstation 3'
        WHEN 'PS4'       THEN 'Playstation 4'
        WHEN 'PS5'       THEN 'Playstation 5'
        WHEN 'Oculus'    THEN 'Oculus Rift'
        ELSE TRIM(platform)
    END,
    ''
FROM (
    SELECT platform FROM public.STAGING_games  WHERE TRIM(COALESCE(platform, '')) <> ''
    UNION
    SELECT platform FROM public.STAGING_sessions WHERE TRIM(COALESCE(platform, '')) <> ''
) all_platforms
ON CONFLICT (name) DO NOTHING;

-- =============================================================================
-- STEP 5: Games
-- Split into two phases to handle duplicate/zero/null giantbomb_ids:
--
--   5a  Staging rows whose giantbomb_id is unique within staging AND non-zero.
--       These are inserted with igdb_id = giantbomb_id.
--       ON CONFLICT (igdb_id) DO NOTHING makes this idempotent.
--
--   5b  Staging rows where giantbomb_id is NULL, 0, or duplicated across staging
--       rows (e.g. a DLC entry sharing giantbomb_id with its base game).
--       These are inserted with igdb_id = NULL.
--       We skip a row only if a game with the same title already exists for this
--       user, preventing duplicates on re-runs. NULLs never trigger the unique
--       index so no ON CONFLICT clause is required.
-- =============================================================================

-- 5a: unique, non-zero giantbomb_id rows
INSERT INTO public.games (
    user_id, title, franchise_id, release_date, publisher_id,
    metacritic_score, cover_url, store_info, igdb_id, default_platform_id
)
SELECT
    '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid,
    TRIM(sg.title),
    (SELECT f.franchise_id FROM public.franchises f WHERE f.name = TRIM(sg.franchise) LIMIT 1),
    COALESCE(sg.release_date, '1970-01-01'::date),
    (SELECT p.publisher_id FROM public.publishers p WHERE p.name = TRIM(sg.publisher) LIMIT 1),
    NULLIF(sg.metacritic_score, 0),
    sg.giantbomb_img_url,
    CASE WHEN TRIM(COALESCE(sg.store, '')) <> '' AND TRIM(sg.store) <> 'N/A'
         THEN jsonb_build_object('store', TRIM(sg.store)) ELSE NULL END,
    sg.giantbomb_id,
    (SELECT pl.platform_id FROM public.platforms pl WHERE pl.name = TRIM(sg.platform) LIMIT 1)
FROM public.STAGING_games sg
WHERE TRIM(COALESCE(sg.title, '')) <> ''
  AND sg.giantbomb_id IS NOT NULL
  AND sg.giantbomb_id <> 0
  AND (SELECT COUNT(*) FROM public.STAGING_games sg2 WHERE sg2.giantbomb_id = sg.giantbomb_id) = 1
ON CONFLICT (igdb_id) DO NOTHING;

-- 5b: zero / null / duplicate-giantbomb_id rows  →  igdb_id stored as NULL
INSERT INTO public.games (
    user_id, title, franchise_id, release_date, publisher_id,
    metacritic_score, cover_url, store_info, igdb_id, default_platform_id
)
SELECT
    '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid,
    TRIM(sg.title),
    (SELECT f.franchise_id FROM public.franchises f WHERE f.name = TRIM(sg.franchise) LIMIT 1),
    COALESCE(sg.release_date, '1970-01-01'::date),
    (SELECT p.publisher_id FROM public.publishers p WHERE p.name = TRIM(sg.publisher) LIMIT 1),
    NULLIF(sg.metacritic_score, 0),
    sg.giantbomb_img_url,
    CASE WHEN TRIM(COALESCE(sg.store, '')) <> '' AND TRIM(sg.store) <> 'N/A'
         THEN jsonb_build_object('store', TRIM(sg.store)) ELSE NULL END,
    NULL,  -- igdb_id intentionally NULL; NULLs never collide in unique index
    (SELECT pl.platform_id FROM public.platforms pl WHERE pl.name = TRIM(sg.platform) LIMIT 1)
FROM public.STAGING_games sg
WHERE TRIM(COALESCE(sg.title, '')) <> ''
  AND (
      sg.giantbomb_id IS NULL
      OR sg.giantbomb_id = 0
      OR (SELECT COUNT(*) FROM public.STAGING_games sg2 WHERE sg2.giantbomb_id = sg.giantbomb_id) > 1
  )
  -- Skip if a game with this exact title already exists for this user
  AND NOT EXISTS (
      SELECT 1 FROM public.games g
      WHERE lower(TRIM(g.title)) = lower(TRIM(sg.title))
        AND g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid
  );

-- =============================================================================
-- STEP 6: game_developer junction
-- Joins staging game_id → canonical games.game_id via title match.
-- =============================================================================

INSERT INTO public.game_developer (game_id, developer_id)
SELECT DISTINCT
    g.game_id,
    d.developer_id
FROM public.STAGING_game_developer sgd
JOIN public.STAGING_games sg  ON sg.game_id = sgd.game_id
JOIN public.games g           ON (
                                                                (g.igdb_id IS NOT NULL AND g.igdb_id = sg.giantbomb_id)
                                                                OR lower(TRIM(g.title)) = lower(TRIM(sg.title))
                                                            )
                                                         AND g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid
JOIN public.STAGING_developers sd ON sd.developer_id = sgd.developer_id
JOIN public.developers d      ON TRIM(d.name) = TRIM(sd.name)
ON CONFLICT DO NOTHING;

-- =============================================================================
-- STEP 7: game_genre junction
-- =============================================================================

INSERT INTO public.game_genre (game_id, genre_id)
SELECT DISTINCT
    g.game_id,
    ge.genre_id
FROM public.STAGING_game_genre sgg
JOIN public.STAGING_games sg  ON sg.game_id = sgg.game_id
JOIN public.games g           ON (
                                                                (g.igdb_id IS NOT NULL AND g.igdb_id = sg.giantbomb_id)
                                                                OR lower(TRIM(g.title)) = lower(TRIM(sg.title))
                                                            )
                                                         AND g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid
JOIN public.STAGING_genres sgr ON sgr.genre_id = sgg.genre_id
JOIN public.genres ge          ON TRIM(ge.name) = TRIM(sgr.name)
ON CONFLICT DO NOTHING;

-- =============================================================================
-- STEP 8: game_theme junction
-- =============================================================================

INSERT INTO public.game_theme (game_id, theme_id)
SELECT DISTINCT
    g.game_id,
    t.theme_id
FROM public.STAGING_game_theme sgt
JOIN public.STAGING_games sg  ON sg.game_id = sgt.game_id
JOIN public.games g           ON (
                                                                (g.igdb_id IS NOT NULL AND g.igdb_id = sg.giantbomb_id)
                                                                OR lower(TRIM(g.title)) = lower(TRIM(sg.title))
                                                            )
                                                         AND g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid
JOIN public.STAGING_themes st ON st.theme_id = sgt.theme_id
JOIN public.themes t          ON TRIM(t.name) = TRIM(st.name)
ON CONFLICT DO NOTHING;

-- =============================================================================
-- STEP 9: game_platform junction
-- Uses all platforms the game appears with in sessions + its primary platform.
-- =============================================================================

INSERT INTO public.game_platform (game_id, platform_id)
-- Primary platform from games table
SELECT DISTINCT
    g.game_id,
    g.default_platform_id
FROM public.games g
WHERE g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid
  AND g.default_platform_id IS NOT NULL

UNION

-- Additional platforms found in sessions
SELECT DISTINCT
    g.game_id,
    pl.platform_id
FROM public.STAGING_sessions ss
JOIN public.STAGING_games sg  ON sg.game_id = ss.game_id
JOIN public.games g           ON (
                                (g.igdb_id IS NOT NULL AND g.igdb_id = sg.giantbomb_id)
                                OR lower(TRIM(g.title)) = lower(TRIM(sg.title))
                              )
                             AND g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid
JOIN public.platforms pl      ON pl.name = CASE TRIM(ss.platform)
    WHEN 'Switch'    THEN 'Nintendo Switch'
    WHEN 'Switch 2'  THEN 'Nintendo Switch 2'
    WHEN 'PS3'       THEN 'Playstation 3'
    WHEN 'PS4'       THEN 'Playstation 4'
    WHEN 'Oculus'    THEN 'Oculus Rift'
    ELSE TRIM(ss.platform)
END
WHERE TRIM(COALESCE(ss.platform, '')) <> ''

ON CONFLICT DO NOTHING;

-- =============================================================================
-- STEP 10: Players
-- =============================================================================

INSERT INTO public.players (user_id, name)
SELECT
    '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid,
    TRIM(sp.name)
FROM public.STAGING_players sp
WHERE TRIM(COALESCE(sp.name, '')) <> ''
ON CONFLICT DO NOTHING;

-- =============================================================================
-- STEP 11: Sessions
-- Resolves game_id via staging title → canonical games.game_id.
-- Resolves platform_id via platform name.
-- Platform name normalisation matches what sessions_to_sql.py uses.
-- duration: STAGING_sessions.duration stores the value as text; cast safely.
-- Only rows where both game_id and platform_id resolve successfully are inserted.
-- =============================================================================

INSERT INTO public.sessions (
    session_id,
    user_id,
    game_id,
    platform_id,
    start_date,
    start_time,
    duration_minutes,
    game_mode,
    controller_style,
    location,
    notes
)
SELECT
    ss.session_id,
    '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid,
    g.game_id,
    pl.platform_id,
    ss.start_date,
    ss.start_time,
    GREATEST(1, NULLIF(REGEXP_REPLACE(COALESCE(ss.duration::text, '1'), '[^0-9]', '', 'g'), '')::integer),
    ss.game_mode,
    ss.controller_style,
    ss.location,
    NULL
FROM public.STAGING_sessions ss
-- Normalise legacy platform names to canonical values
JOIN public.platforms pl ON pl.name = CASE TRIM(ss.platform)
    WHEN 'Switch'    THEN 'Nintendo Switch'
    WHEN 'Switch 2'  THEN 'Nintendo Switch 2'
    WHEN 'PS3'       THEN 'Playstation 3'
    WHEN 'PS4'       THEN 'Playstation 4'
    WHEN 'Oculus'    THEN 'Oculus Rift'
    ELSE TRIM(ss.platform)
END
-- Resolve game_id: staging game_id → staging title → canonical games.game_id
JOIN public.STAGING_games sg ON sg.game_id = ss.game_id
JOIN public.games g ON (
                              (g.igdb_id IS NOT NULL AND g.igdb_id = sg.giantbomb_id)
                              OR lower(TRIM(g.title)) = lower(TRIM(sg.title))
                             )
                         AND g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid
WHERE ss.start_date IS NOT NULL
ON CONFLICT (session_id) DO NOTHING;

-- =============================================================================
-- STEP 12: session_player
-- Maps staging session_id directly (same PK carried through in STEP 11).
-- Maps staging player_id → canonical player_id by matching on name.
-- =============================================================================

INSERT INTO public.session_player (session_id, player_id)
SELECT
    ssp.session_id,
    p.player_id
FROM public.STAGING_session_player ssp
-- staging player_id → name
JOIN public.STAGING_players sp ON sp.player_id = ssp.player_id
-- name → canonical player_id
JOIN public.players p
    ON lower(TRIM(p.name)) = lower(TRIM(sp.name))
   AND p.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid
-- only sessions that actually made it into the live table
WHERE EXISTS (
    SELECT 1 FROM public.sessions s WHERE s.session_id = ssp.session_id
)
ON CONFLICT DO NOTHING;

-- =============================================================================
-- POST-MIGRATION: Refresh game stats (total_playtime_minutes, play_count,
-- last_played_at) from the sessions just inserted.
-- The insert trigger fires per-row, but if you bypassed it (e.g. bulk copy),
-- run this to recalculate from scratch.
-- =============================================================================

UPDATE public.games g
SET
    total_playtime_minutes = COALESCE(agg.total_mins, 0),
    play_count             = COALESCE(agg.cnt, 0),
    last_played_at         = agg.last_played
FROM (
    SELECT
        game_id,
        SUM(duration_minutes)                                     AS total_mins,
        COUNT(*)                                                   AS cnt,
        MAX((start_date::text || ' ' || COALESCE(start_time::text, '00:00:00'))::timestamptz) AS last_played
    FROM public.sessions
    WHERE user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid
    GROUP BY game_id
) agg
WHERE g.game_id = agg.game_id
  AND g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid;
