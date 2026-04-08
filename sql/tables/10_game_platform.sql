DROP TABLE IF EXISTS public.game_platform CASCADE;

CREATE TABLE IF NOT EXISTS public.game_platform
(
    game_id     INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    platform_id INTEGER NOT NULL REFERENCES public.platforms (platform_id) ON DELETE CASCADE,
    CONSTRAINT game_platform_pkey PRIMARY KEY (game_id, platform_id)
);
