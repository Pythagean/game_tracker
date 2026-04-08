CREATE TABLE IF NOT EXISTS public.games
(
    game_id          SERIAL PRIMARY KEY,
    title            VARCHAR(250) NOT NULL,
    franchise_id     INTEGER      REFERENCES public.franchises (franchise_id) ON DELETE SET NULL,
    release_date     DATE         NOT NULL,
    publisher_id     INTEGER      REFERENCES public.publishers (publisher_id) ON DELETE SET NULL,
    metacritic_score INTEGER      CHECK (metacritic_score BETWEEN 0 AND 100),
    user_rating      NUMERIC(3,1) CHECK (user_rating BETWEEN 0 AND 10),
    cover_url        VARCHAR(500),
    igdb_id          INTEGER      UNIQUE,
    notes            TEXT
);
