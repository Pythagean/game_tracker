DROP TABLE IF EXISTS public.game_theme CASCADE;

CREATE TABLE IF NOT EXISTS public.game_theme
(
    game_id  INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    theme_id INTEGER NOT NULL REFERENCES public.themes (theme_id) ON DELETE CASCADE,
    CONSTRAINT game_theme_pkey PRIMARY KEY (game_id, theme_id)
);
