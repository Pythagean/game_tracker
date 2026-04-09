DROP TABLE IF EXISTS public.session_player CASCADE;

CREATE TABLE IF NOT EXISTS public.session_player
(
    session_id INTEGER NOT NULL REFERENCES public.sessions (session_id) ON DELETE CASCADE,
    player_id  INTEGER NOT NULL REFERENCES public.players (player_id) ON DELETE CASCADE,
    CONSTRAINT session_player_pkey PRIMARY KEY (session_id, player_id)
);

-- Enable RLS and gate access via parent session ownership
ALTER TABLE public.session_player ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own session_player" ON public.session_player;
CREATE POLICY "Users can select own session_player"
    ON public.session_player FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.sessions
        WHERE sessions.session_id = session_player.session_id
            AND sessions.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can insert own session_player" ON public.session_player;
CREATE POLICY "Users can insert own session_player"
    ON public.session_player FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.sessions
        WHERE sessions.session_id = session_player.session_id
            AND sessions.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Users can delete own session_player" ON public.session_player;
CREATE POLICY "Users can delete own session_player"
    ON public.session_player FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.sessions
        WHERE sessions.session_id = session_player.session_id
            AND sessions.user_id = auth.uid()
    ));
