-- Refresh game-level statistics from sessions
-- Sets `total_playtime_minutes`, `play_count`, and `last_played_at`
-- Run in Supabase SQL editor or psql as a single transaction.

BEGIN;

-- Aggregate per-game stats from sessions
WITH agg AS (
  SELECT
    game_id,
    SUM(duration_minutes)::integer AS total_minutes,
    COUNT(*)::integer AS play_count,
    MAX((start_date::text || ' ' || COALESCE(start_time::text, '00:00:00'))::timestamp) AS last_play_ts
  FROM public.sessions
  GROUP BY game_id
)

-- Update games that have sessions
UPDATE public.games g
SET
  total_playtime_minutes = COALESCE(a.total_minutes, 0),
  play_count = COALESCE(a.play_count, 0),
  last_played_at = a.last_play_ts::timestamptz
FROM agg a
WHERE g.game_id = a.game_id;

-- Reset games with no sessions to zero / NULL
UPDATE public.games g
SET
  total_playtime_minutes = 0,
  play_count = 0,
  last_played_at = NULL
WHERE NOT EXISTS (SELECT 1 FROM public.sessions s WHERE s.game_id = g.game_id);

COMMIT;

-- Helpful sanity checks (optional):
-- SELECT game_id, total_playtime_minutes, play_count, last_played_at FROM public.games ORDER BY game_id;
