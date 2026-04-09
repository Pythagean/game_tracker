DROP TABLE IF EXISTS public.game_genre CASCADE;

CREATE TABLE IF NOT EXISTS public.game_genre
(
    game_id  INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    genre_id INTEGER NOT NULL REFERENCES public.genres (genre_id) ON DELETE CASCADE,
    CONSTRAINT game_genre_pkey PRIMARY KEY (game_id, genre_id)
);

-- Enable RLS and gate access to parent game ownership
ALTER TABLE public.game_genre ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own game_genre" ON public.game_genre;
CREATE POLICY "Users can select own game_genre"
    ON public.game_genre FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_genre.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can insert own game_genre" ON public.game_genre;
CREATE POLICY "Users can insert own game_genre"
    ON public.game_genre FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_genre.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can delete own game_genre" ON public.game_genre;
CREATE POLICY "Users can delete own game_genre"
    ON public.game_genre FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_genre.game_id
            AND games.user_id = auth.uid()
    ));
