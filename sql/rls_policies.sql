-- ============================================================
-- Add user_id to user-owned tables
-- ============================================================

ALTER TABLE public.games
    ADD COLUMN user_id UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE;

ALTER TABLE public.sessions
    ADD COLUMN user_id UUID NOT NULL REFERENCES auth.users (id) ON DELETE CASCADE;


-- ============================================================
-- Enable RLS on all tables
-- ============================================================

-- Lookup / shared tables
ALTER TABLE public.platforms   ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.publishers  ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.developers  ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.genres      ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.themes      ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.franchises  ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.players     ENABLE ROW LEVEL SECURITY;

-- Core user-owned tables
ALTER TABLE public.games       ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.sessions    ENABLE ROW LEVEL SECURITY;

-- Junction tables
ALTER TABLE public.game_platform   ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.game_developer  ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.game_genre      ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.game_theme      ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.session_player  ENABLE ROW LEVEL SECURITY;


-- ============================================================
-- Lookup tables: readable by all authenticated users, 
-- writable only by authenticated users (treat as shared data)
-- ============================================================

CREATE POLICY "Authenticated users can read platforms"
    ON public.platforms FOR SELECT TO authenticated USING (true);

CREATE POLICY "Authenticated users can read publishers"
    ON public.publishers FOR SELECT TO authenticated USING (true);

CREATE POLICY "Authenticated users can read developers"
    ON public.developers FOR SELECT TO authenticated USING (true);

CREATE POLICY "Authenticated users can read genres"
    ON public.genres FOR SELECT TO authenticated USING (true);

CREATE POLICY "Authenticated users can read themes"
    ON public.themes FOR SELECT TO authenticated USING (true);

CREATE POLICY "Authenticated users can read franchises"
    ON public.franchises FOR SELECT TO authenticated USING (true);

CREATE POLICY "Authenticated users can read players"
    ON public.players FOR SELECT TO authenticated USING (true);


-- ============================================================
-- games: users can only access their own rows
-- ============================================================

CREATE POLICY "Users can select own games"
    ON public.games FOR SELECT TO authenticated
    USING (user_id = auth.uid());

CREATE POLICY "Users can insert own games"
    ON public.games FOR INSERT TO authenticated
    WITH CHECK (user_id = auth.uid());

CREATE POLICY "Users can update own games"
    ON public.games FOR UPDATE TO authenticated
    USING (user_id = auth.uid())
    WITH CHECK (user_id = auth.uid());

CREATE POLICY "Users can delete own games"
    ON public.games FOR DELETE TO authenticated
    USING (user_id = auth.uid());


-- ============================================================
-- sessions: users can only access their own rows
-- ============================================================

CREATE POLICY "Users can select own sessions"
    ON public.sessions FOR SELECT TO authenticated
    USING (user_id = auth.uid());

CREATE POLICY "Users can insert own sessions"
    ON public.sessions FOR INSERT TO authenticated
    WITH CHECK (user_id = auth.uid());

CREATE POLICY "Users can update own sessions"
    ON public.sessions FOR UPDATE TO authenticated
    USING (user_id = auth.uid())
    WITH CHECK (user_id = auth.uid());

CREATE POLICY "Users can delete own sessions"
    ON public.sessions FOR DELETE TO authenticated
    USING (user_id = auth.uid());


-- ============================================================
-- players: users can only access their own rows
-- ============================================================

CREATE POLICY "Users can select own players"
    ON public.players FOR SELECT TO authenticated
    USING (user_id = auth.uid());

CREATE POLICY "Users can insert own players"
    ON public.players FOR INSERT TO authenticated
    WITH CHECK (user_id = auth.uid());

CREATE POLICY "Users can update own players"
    ON public.players FOR UPDATE TO authenticated
    USING (user_id = auth.uid())
    WITH CHECK (user_id = auth.uid());

CREATE POLICY "Users can delete own players"
    ON public.players FOR DELETE TO authenticated
    USING (user_id = auth.uid());


-- ============================================================
-- Junction tables: access is gated via the parent game/session
-- ============================================================

CREATE POLICY "Users can select own game_platform"
    ON public.game_platform FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_platform.game_id
          AND games.user_id = auth.uid()
    ));

CREATE POLICY "Users can insert own game_platform"
    ON public.game_platform FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_platform.game_id
          AND games.user_id = auth.uid()
    ));

CREATE POLICY "Users can delete own game_platform"
    ON public.game_platform FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_platform.game_id
          AND games.user_id = auth.uid()
    ));

-- game_developer
CREATE POLICY "Users can select own game_developer"
    ON public.game_developer FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_developer.game_id
          AND games.user_id = auth.uid()
    ));

CREATE POLICY "Users can insert own game_developer"
    ON public.game_developer FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_developer.game_id
          AND games.user_id = auth.uid()
    ));

CREATE POLICY "Users can delete own game_developer"
    ON public.game_developer FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_developer.game_id
          AND games.user_id = auth.uid()
    ));

-- game_genre
CREATE POLICY "Users can select own game_genre"
    ON public.game_genre FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_genre.game_id
          AND games.user_id = auth.uid()
    ));

CREATE POLICY "Users can insert own game_genre"
    ON public.game_genre FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_genre.game_id
          AND games.user_id = auth.uid()
    ));

CREATE POLICY "Users can delete own game_genre"
    ON public.game_genre FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_genre.game_id
          AND games.user_id = auth.uid()
    ));

-- game_theme
CREATE POLICY "Users can select own game_theme"
    ON public.game_theme FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_theme.game_id
          AND games.user_id = auth.uid()
    ));

CREATE POLICY "Users can insert own game_theme"
    ON public.game_theme FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_theme.game_id
          AND games.user_id = auth.uid()
    ));

CREATE POLICY "Users can delete own game_theme"
    ON public.game_theme FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.games
        WHERE games.game_id = game_theme.game_id
          AND games.user_id = auth.uid()
    ));

-- session_player
CREATE POLICY "Users can select own session_player"
    ON public.session_player FOR SELECT TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.sessions
        WHERE sessions.session_id = session_player.session_id
          AND sessions.user_id = auth.uid()
    ));

CREATE POLICY "Users can insert own session_player"
    ON public.session_player FOR INSERT TO authenticated
    WITH CHECK (EXISTS (
        SELECT 1 FROM public.sessions
        WHERE sessions.session_id = session_player.session_id
          AND sessions.user_id = auth.uid()
    ));

CREATE POLICY "Users can delete own session_player"
    ON public.session_player FOR DELETE TO authenticated
    USING (EXISTS (
        SELECT 1 FROM public.sessions
        WHERE sessions.session_id = session_player.session_id
          AND sessions.user_id = auth.uid()
    ));
