CREATE TABLE IF NOT EXISTS public.sessions
(
    session_id       SERIAL PRIMARY KEY,
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
