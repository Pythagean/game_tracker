DROP TABLE IF EXISTS public.players CASCADE;

CREATE TABLE IF NOT EXISTS public.players
(
    player_id SERIAL PRIMARY KEY,
    user_id   UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE,
    name      VARCHAR(50) NOT NULL
);

-- Enable RLS and restrict players to their owner
ALTER TABLE public.players ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own players" ON public.players;
CREATE POLICY "Users can select own players"
    ON public.players FOR SELECT TO authenticated USING (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can insert own players" ON public.players;
CREATE POLICY "Users can insert own players"
    ON public.players FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can update own players" ON public.players;
CREATE POLICY "Users can update own players"
    ON public.players FOR UPDATE TO authenticated
    USING (user_id = auth.uid())
    WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can delete own players" ON public.players;
CREATE POLICY "Users can delete own players"
    ON public.players FOR DELETE TO authenticated USING (user_id = auth.uid());
