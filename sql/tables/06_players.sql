DROP TABLE IF EXISTS public.players CASCADE;

CREATE TABLE IF NOT EXISTS public.players
(
    player_id SERIAL PRIMARY KEY,
    user_id   UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE,
    name      VARCHAR(50) NOT NULL
);
