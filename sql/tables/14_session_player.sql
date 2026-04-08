DROP TABLE IF EXISTS public.session_player CASCADE;

CREATE TABLE IF NOT EXISTS public.session_player
(
    session_id INTEGER NOT NULL REFERENCES public.sessions (session_id) ON DELETE CASCADE,
    player_id  INTEGER NOT NULL REFERENCES public.players (player_id) ON DELETE CASCADE,
    CONSTRAINT session_player_pkey PRIMARY KEY (session_id, player_id)
);
