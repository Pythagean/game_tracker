DROP TABLE IF EXISTS public.game_theme CASCADE;

CREATE TABLE IF NOT EXISTS public.game_theme
(
    game_id  INTEGER NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    theme_id INTEGER NOT NULL REFERENCES public.themes (theme_id) ON DELETE CASCADE,
    CONSTRAINT game_theme_pkey PRIMARY KEY (game_id, theme_id)
);

-- Enable RLS and gate access to parent game ownership
ALTER TABLE public.game_theme ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own game_theme" ON public.game_theme;
CREATE POLICY "Users can select own game_theme"
    ON public.game_theme FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_theme.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can insert own game_theme" ON public.game_theme;
CREATE POLICY "Users can insert own game_theme"
    ON public.game_theme FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_theme.game_id
            AND games.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can delete own game_theme" ON public.game_theme;
CREATE POLICY "Users can delete own game_theme"
    ON public.game_theme FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_theme.game_id
            AND games.user_id = auth.uid()
    ));
