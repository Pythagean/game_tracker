DROP TABLE IF EXISTS public.game_developer CASCADE;

CREATE TABLE IF NOT EXISTS public.game_developer
(
    game_id      INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    developer_id INTEGER NOT NULL REFERENCES public.developers (developer_id) ON DELETE CASCADE,
    CONSTRAINT game_developer_pkey PRIMARY KEY (game_id, developer_id)
);

-- Enable RLS and gate access to parent game ownership
ALTER TABLE public.game_developer ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own game_developer" ON public.game_developer;
CREATE POLICY "Users can select own game_developer"
    ON public.game_developer FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_developer.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can insert own game_developer" ON public.game_developer;
CREATE POLICY "Users can insert own game_developer"
    ON public.game_developer FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_developer.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can delete own game_developer" ON public.game_developer;
CREATE POLICY "Users can delete own game_developer"
    ON public.game_developer FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_developer.game_id
            AND games.user_id = auth.uid()
    ));
