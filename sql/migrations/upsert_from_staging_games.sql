-- Upsert games from public.STAGING_games into normalized schema
-- Steps:
-- 1) Load your CSV into `public.STAGING_games` using the original schema.
-- 2) Replace '<USER_UUID>' with the UUID of the Supabase user who will own these rows.
-- 3) Run this script in the Supabase SQL editor or via psql.

BEGIN;

-- 1) Ensure publishers exist
INSERT INTO public.publishers (name)
SELECT DISTINCT TRIM(s.publisher) AS name
FROM public.STAGING_games s
WHERE s.publisher IS NOT NULL AND TRIM(s.publisher) <> ''
ON CONFLICT (name) DO NOTHING;

-- 2) Ensure franchises exist
INSERT INTO public.franchises (name)
SELECT DISTINCT TRIM(s.franchise) AS name
FROM public.STAGING_games s
WHERE s.franchise IS NOT NULL AND TRIM(s.franchise) <> ''
ON CONFLICT (name) DO NOTHING;

-- 3) Insert new games (where no matching igdb_id or user/title exists)
INSERT INTO public.games (user_id, title, franchise_id, release_date, publisher_id, metacritic_score, cover_url, igdb_id, store_info, last_played_at)
SELECT
  '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid AS user_id,
  TRIM(s.title) AS title,
  CASE WHEN COALESCE(TRIM(s.franchise),'') = '' THEN NULL ELSE (
    SELECT franchise_id FROM public.franchises WHERE name = TRIM(s.franchise) LIMIT 1
  ) END AS franchise_id,
  s.release_date::date AS release_date,
  CASE WHEN COALESCE(TRIM(s.publisher),'') = '' THEN NULL ELSE (
    SELECT publisher_id FROM public.publishers WHERE name = TRIM(s.publisher) LIMIT 1
  ) END AS publisher_id,
  CASE WHEN s.metacritic_score IS NULL THEN NULL ELSE s.metacritic_score END AS metacritic_score,
  NULLIF(TRIM(s.giantbomb_img_url),'') AS cover_url,
  CASE WHEN s.giantbomb_id IS NULL OR s.giantbomb_id = 0 THEN NULL ELSE s.giantbomb_id END AS igdb_id,
  CASE WHEN s.store IS NULL OR TRIM(s.store) = '' THEN NULL ELSE jsonb_build_object('store', TRIM(s.store)) END AS store_info,
  CASE WHEN s.last_played IS NULL OR TRIM(COALESCE(s.last_played::text,'')) = '' THEN NULL ELSE s.last_played::timestamptz END AS last_played_at
FROM public.STAGING_games s
WHERE NOT EXISTS (
  SELECT 1 FROM public.games g
  WHERE (
      (g.igdb_id IS NOT NULL AND s.giantbomb_id IS NOT NULL AND g.igdb_id = s.giantbomb_id)
    )
    OR (
      g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid AND g.title = TRIM(s.title)
    )
);

-- 4) Update existing games with any additional info from staging (match by igdb_id first, then by user+title)
-- Note: this will update a small set of fields and prefer existing values when staging is empty
UPDATE public.games g
SET
  metacritic_score = COALESCE(s.metacritic_score, g.metacritic_score),
  cover_url = COALESCE(NULLIF(TRIM(s.giantbomb_img_url),''), g.cover_url),
  igdb_id = COALESCE(NULLIF(s.giantbomb_id, 0), g.igdb_id),
  store_info = COALESCE(
    CASE WHEN s.store IS NULL OR TRIM(s.store) = '' THEN NULL ELSE jsonb_build_object('store', TRIM(s.store)) END,
    g.store_info
  ),
  last_played_at = GREATEST(COALESCE(g.last_played_at, to_timestamp(0)), COALESCE(s.last_played::timestamptz, to_timestamp(0))),
  publisher_id = COALESCE(
    CASE WHEN COALESCE(TRIM(s.publisher),'') = '' THEN NULL ELSE (SELECT publisher_id FROM public.publishers WHERE name = TRIM(s.publisher) LIMIT 1) END,
    g.publisher_id
  ),
  franchise_id = COALESCE(
    CASE WHEN COALESCE(TRIM(s.franchise),'') = '' THEN NULL ELSE (SELECT franchise_id FROM public.franchises WHERE name = TRIM(s.franchise) LIMIT 1) END,
    g.franchise_id
  ),
  release_date = COALESCE(s.release_date::date, g.release_date)
FROM public.STAGING_games s
WHERE (
    (g.igdb_id IS NOT NULL AND s.giantbomb_id IS NOT NULL AND g.igdb_id = s.giantbomb_id)
  )
  OR (
    g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid AND g.title = TRIM(s.title)
  );

COMMIT;

-- End of upsert
