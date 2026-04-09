-- =============================================================================
-- MIGRATION READINESS DIAGNOSTICS
-- Run each block individually to understand what's blocking session imports.
-- =============================================================================

-- 1. Are the live lookup tables populated at all?
SELECT 'games'      AS tbl, COUNT(*) AS rows FROM public.games      WHERE user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'
UNION ALL
SELECT 'platforms'  AS tbl, COUNT(*) AS rows FROM public.platforms
UNION ALL
SELECT 'developers' AS tbl, COUNT(*) AS rows FROM public.developers
UNION ALL
SELECT 'genres'     AS tbl, COUNT(*) AS rows FROM public.genres
UNION ALL
SELECT 'themes'     AS tbl, COUNT(*) AS rows FROM public.themes
UNION ALL
SELECT 'publishers' AS tbl, COUNT(*) AS rows FROM public.publishers
UNION ALL
SELECT 'franchises' AS tbl, COUNT(*) AS rows FROM public.franchises;

-- =============================================================================

-- 2. Which platform values in STAGING_sessions don't resolve after normalisation?
--    (These will be skipped during session insert.)
SELECT
    CASE TRIM(ss.platform)
        WHEN 'Switch'   THEN 'Nintendo Switch'
        WHEN 'Switch 2' THEN 'Nintendo Switch 2'
        WHEN 'PS3'      THEN 'Playstation 3'
        WHEN 'PS4'      THEN 'Playstation 4'
        WHEN 'Oculus'   THEN 'Oculus Rift'
        ELSE TRIM(ss.platform)
    END AS normalised_platform,
    COUNT(*) AS session_count
FROM public.STAGING_sessions ss
LEFT JOIN public.platforms pl
    ON pl.name = CASE TRIM(ss.platform)
        WHEN 'Switch'   THEN 'Nintendo Switch'
        WHEN 'Switch 2' THEN 'Nintendo Switch 2'
        WHEN 'PS3'      THEN 'Playstation 3'
        WHEN 'PS4'      THEN 'Playstation 4'
        WHEN 'Oculus'   THEN 'Oculus Rift'
        ELSE TRIM(ss.platform)
    END
WHERE pl.platform_id IS NULL
GROUP BY 1
ORDER BY session_count DESC;

-- =============================================================================

-- 3. Which staging game titles don't match any row in public.games?
--    (Sessions for these games will be skipped.)
SELECT sg.game_id, sg.title, COUNT(ss.session_id) AS affected_sessions
FROM public.STAGING_games sg
LEFT JOIN public.games g
    ON TRIM(g.title) = TRIM(sg.title)
   AND g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'
LEFT JOIN public.STAGING_sessions ss ON ss.game_id = sg.game_id
WHERE g.game_id IS NULL
GROUP BY sg.game_id, sg.title
ORDER BY affected_sessions DESC;

-- =============================================================================

-- 4. Summary: how many sessions would successfully import right now?
SELECT
    COUNT(*)                                                              AS total_staging_sessions,
    COUNT(*) FILTER (WHERE g.game_id IS NOT NULL AND pl.platform_id IS NOT NULL) AS would_import,
    COUNT(*) FILTER (WHERE g.game_id IS NULL)                            AS blocked_no_game,
    COUNT(*) FILTER (WHERE pl.platform_id IS NULL)                       AS blocked_no_platform
FROM public.STAGING_sessions ss
LEFT JOIN public.STAGING_games sg ON sg.game_id = ss.game_id
LEFT JOIN public.games g
    ON TRIM(g.title) = TRIM(sg.title)
   AND g.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'
LEFT JOIN public.platforms pl
    ON pl.name = CASE TRIM(ss.platform)
        WHEN 'Switch'   THEN 'Nintendo Switch'
        WHEN 'Switch 2' THEN 'Nintendo Switch 2'
        WHEN 'PS3'      THEN 'Playstation 3'
        WHEN 'PS4'      THEN 'Playstation 4'
        WHEN 'Oculus'   THEN 'Oculus Rift'
        ELSE TRIM(ss.platform)
    END;

-- =============================================================================

-- 5. Check whether duration column has data (column may be 'duration' or 'duration_minutes')
SELECT
    COUNT(*) FILTER (WHERE duration IS NOT NULL AND duration::text <> '') AS rows_with_duration,
    COUNT(*) FILTER (WHERE duration IS NULL OR duration::text = '')       AS rows_missing_duration
FROM public.STAGING_sessions;
