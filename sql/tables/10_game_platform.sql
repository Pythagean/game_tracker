DROP TABLE IF EXISTS public.game_platform CASCADE;

CREATE TABLE IF NOT EXISTS public.game_platform
(
    game_id     INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    platform_id INTEGER NOT NULL REFERENCES public.platforms (platform_id) ON DELETE CASCADE,
    CONSTRAINT game_platform_pkey PRIMARY KEY (game_id, platform_id)
);

-- Enable RLS and gate access to parent game ownership
ALTER TABLE public.game_platform ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own game_platform" ON public.game_platform;
CREATE POLICY "Users can select own game_platform"
    ON public.game_platform FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_platform.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can insert own game_platform" ON public.game_platform;
CREATE POLICY "Users can insert own game_platform"
    ON public.game_platform FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_platform.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can delete own game_platform" ON public.game_platform;
CREATE POLICY "Users can delete own game_platform"
    ON public.game_platform FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_platform.game_id
            AND games.user_id = auth.uid()
    ));
