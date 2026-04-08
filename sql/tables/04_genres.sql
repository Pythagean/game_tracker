DROP TABLE IF EXISTS public.genres CASCADE;

CREATE TABLE IF NOT EXISTS public.genres
(
    genre_id SERIAL PRIMARY KEY,
    name     VARCHAR(50) NOT NULL
);
