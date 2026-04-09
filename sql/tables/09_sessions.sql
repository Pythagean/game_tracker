DROP TABLE IF EXISTS public.sessions CASCADE;

CREATE TABLE IF NOT EXISTS public.sessions
(
    session_id       SERIAL PRIMARY KEY,
    user_id          UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE,
    game_id          INTEGER      NOT NULL REFERENCES public.games (game_id) ON DELETE CASCADE,
    platform_id      INTEGER      NOT NULL REFERENCES public.platforms (platform_id) ON DELETE RESTRICT,
    start_date       DATE         NOT NULL,
    start_time       TIME,
    duration_minutes INTEGER      NOT NULL CHECK (duration_minutes > 0),
    game_mode        VARCHAR(50),
    controller_style VARCHAR(50),
    location         VARCHAR(100),
    notes            TEXT
);

-- Trigger function to update game-level stats on session insert
CREATE OR REPLACE FUNCTION public.fn_update_game_stats_on_session_insert()
RETURNS trigger AS $$
DECLARE
    start_ts timestamp;
BEGIN
    IF NEW.start_date IS NULL THEN
        start_ts := now();
    ELSE
        start_ts := (NEW.start_date::text || ' ' || COALESCE(NEW.start_time::text,'00:00:00'))::timestamp;
    END IF;

    UPDATE public.games
    SET total_playtime_minutes = COALESCE(total_playtime_minutes,0) + COALESCE(NEW.duration_minutes,0),
            play_count = COALESCE(play_count,0) + 1,
            last_played_at = GREATEST(COALESCE(last_played_at, to_timestamp(0)), start_ts::timestamptz)
    WHERE game_id = NEW.game_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Attach trigger to sessions (idempotent)
DROP TRIGGER IF EXISTS trg_games_update_on_session_insert ON public.sessions;
CREATE TRIGGER trg_games_update_on_session_insert
AFTER INSERT ON public.sessions
FOR EACH ROW
EXECUTE FUNCTION public.fn_update_game_stats_on_session_insert();

-- Index to speed up queries ordering games by last_played_at per user
CREATE INDEX IF NOT EXISTS idx_games_user_last_played ON public.games (user_id, last_played_at DESC);

-- Enable RLS and restrict sessions to their owner
ALTER TABLE public.sessions ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Users can select own sessions" ON public.sessions;
CREATE POLICY "Users can select own sessions"
    ON public.sessions FOR SELECT TO authenticated USING (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can insert own sessions" ON public.sessions;
CREATE POLICY "Users can insert own sessions"
    ON public.sessions FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can update own sessions" ON public.sessions;
CREATE POLICY "Users can update own sessions"
    ON public.sessions FOR UPDATE TO authenticated
    USING (user_id = auth.uid())
    WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "Users can delete own sessions" ON public.sessions;
CREATE POLICY "Users can delete own sessions"
    ON public.sessions FOR DELETE TO authenticated USING (user_id = auth.uid());
