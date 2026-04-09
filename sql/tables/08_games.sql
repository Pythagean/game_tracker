DROP TABLE IF EXISTS public.games CASCADE;

CREATE TABLE IF NOT EXISTS public.games
(
    game_id          SERIAL PRIMARY KEY,
    user_id          UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE,
    title            VARCHAR(250) NOT NULL,
    franchise_id     INTEGER      REFERENCES public.franchises (franchise_id) ON DELETE SET NULL,
    release_date     DATE         NOT NULL,
    publisher_id     INTEGER      REFERENCES public.publishers (publisher_id) ON DELETE SET NULL,
    metacritic_score INTEGER      CHECK (metacritic_score BETWEEN 0 AND 100),
    user_rating      NUMERIC(3,1) CHECK (user_rating BETWEEN 0 AND 10),
    cover_url        VARCHAR(500),
    last_played_at   timestamptz,
    total_playtime_minutes integer NOT NULL DEFAULT 0,
    play_count       integer NOT NULL DEFAULT 0,
    store_info       jsonb,
    igdb_id          INTEGER      UNIQUE,
    notes            TEXT
);

-- Enable RLS and restrict games to their owner
ALTER TABLE public.games ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own games" ON public.games;
CREATE POLICY "Users can select own games"
    ON public.games FOR SELECT TO authenticated USING (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can insert own games" ON public.games;
CREATE POLICY "Users can insert own games"
    ON public.games FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can update own games" ON public.games;
CREATE POLICY "Users can update own games"
    ON public.games FOR UPDATE TO authenticated
    USING (user_id = auth.uid())
    WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can delete own games" ON public.games;
CREATE POLICY "Users can delete own games"
    ON public.games FOR DELETE TO authenticated USING (user_id = auth.uid());
