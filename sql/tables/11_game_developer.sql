DROP TABLE IF EXISTS public.game_developer CASCADE;

CREATE TABLE IF NOT EXISTS public.game_developer
(
    game_id      INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    developer_id INTEGER NOT NULL REFERENCES public.developers (developer_id) ON DELETE CASCADE,
    CONSTRAINT game_developer_pkey PRIMARY KEY (game_id, developer_id)
);
