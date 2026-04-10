SELECT
s.session_id,
s.user_id,
g.title AS game_title,
(SELECT string_agg(DISTINCT d.name, ', ')
FROM public.game_developer gd
JOIN public.developers d ON d.developer_id = gd.developer_id
WHERE gd.game_id = g.game_id
) AS developers,
pub.name AS publisher,
pl.name AS platform,
s.start_date,
s.start_time,
s.duration_minutes,
s.game_mode,
s.controller_style,
s.location,
s.notes
FROM public.sessions s
JOIN public.games g ON g.game_id = s.game_id
LEFT JOIN public.publishers pub ON pub.publisher_id = g.publisher_id
LEFT JOIN public.platforms pl ON pl.platform_id = s.platform_id
WHERE s.user_id = '17a87e84-cecb-44fa-9d43-476c8ad9954f'::uuid
ORDER BY s.start_date DESC, s.start_time DESC;