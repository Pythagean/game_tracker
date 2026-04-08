CREATE TABLE IF NOT EXISTS public.game_genre
(
    game_id  INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    genre_id INTEGER NOT NULL REFERENCES public.genres (genre_id) ON DELETE CASCADE,
    CONSTRAINT game_genre_pkey PRIMARY KEY (game_id, genre_id)
);
