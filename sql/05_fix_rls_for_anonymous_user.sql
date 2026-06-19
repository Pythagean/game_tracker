-- Fix RLS policies to allow anonymous user with FIXED_USER_ID to insert games
-- The app uses an anonymous Supabase key with a hardcoded FIXED_USER_ID
-- These policies allow public/unauthenticated users to write with that specific user_id

-- Games table: Allow unauthenticated users to insert/update with fixed user_id
DROP POLICY IF EXISTS "Users can insert own games" ON public.games;
CREATE POLICY "Users can insert own games"
    ON public.games FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Users can update own games" ON public.games;
CREATE POLICY "Users can update own games"
    ON public.games FOR UPDATE TO public WITH CHECK (true);

-- game_platform: Allow unauthenticated users to insert/delete
DROP POLICY IF EXISTS "Users can insert own game_platform" ON public.game_platform;
CREATE POLICY "Users can insert own game_platform"
    ON public.game_platform FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Users can delete own game_platform" ON public.game_platform;
CREATE POLICY "Users can delete own game_platform"
    ON public.game_platform FOR DELETE TO public USING (true);

DROP POLICY IF EXISTS "Users can select own game_platform" ON public.game_platform;
CREATE POLICY "Users can select own game_platform"
    ON public.game_platform FOR SELECT TO public USING (true);

-- game_developer: Allow unauthenticated users to insert/delete
DROP POLICY IF EXISTS "Users can insert own game_developer" ON public.game_developer;
CREATE POLICY "Users can insert own game_developer"
    ON public.game_developer FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Users can delete own game_developer" ON public.game_developer;
CREATE POLICY "Users can delete own game_developer"
    ON public.game_developer FOR DELETE TO public USING (true);

DROP POLICY IF EXISTS "Users can select own game_developer" ON public.game_developer;
CREATE POLICY "Users can select own game_developer"
    ON public.game_developer FOR SELECT TO public USING (true);

-- game_genre: Allow unauthenticated users to insert/delete
DROP POLICY IF EXISTS "Users can insert own game_genre" ON public.game_genre;
CREATE POLICY "Users can insert own game_genre"
    ON public.game_genre FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Users can delete own game_genre" ON public.game_genre;
CREATE POLICY "Users can delete own game_genre"
    ON public.game_genre FOR DELETE TO public USING (true);

DROP POLICY IF EXISTS "Users can select own game_genre" ON public.game_genre;
CREATE POLICY "Users can select own game_genre"
    ON public.game_genre FOR SELECT TO public USING (true);

-- game_theme: Allow unauthenticated users to insert/delete
DROP POLICY IF EXISTS "Users can insert own game_theme" ON public.game_theme;
CREATE POLICY "Users can insert own game_theme"
    ON public.game_theme FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Users can delete own game_theme" ON public.game_theme;
CREATE POLICY "Users can delete own game_theme"
    ON public.game_theme FOR DELETE TO public USING (true);

DROP POLICY IF EXISTS "Users can select own game_theme" ON public.game_theme;
CREATE POLICY "Users can select own game_theme"
    ON public.game_theme FOR SELECT TO public USING (true);

-- Lookup tables: Allow unauthenticated users to insert/upsert
-- (needed for dynamic platform, genre, theme, developer creation)
ALTER TABLE public.genres ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Unauthenticated users can insert genres" ON public.genres;
CREATE POLICY "Unauthenticated users can insert genres"
    ON public.genres FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Authenticated users can read genres" ON public.genres;
CREATE POLICY "Anyone can read genres"
    ON public.genres FOR SELECT TO public USING (true);

ALTER TABLE public.themes ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Unauthenticated users can insert themes" ON public.themes;
CREATE POLICY "Unauthenticated users can insert themes"
    ON public.themes FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Authenticated users can read themes" ON public.themes;
CREATE POLICY "Anyone can read themes"
    ON public.themes FOR SELECT TO public USING (true);

ALTER TABLE public.developers ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Unauthenticated users can insert developers" ON public.developers;
CREATE POLICY "Unauthenticated users can insert developers"
    ON public.developers FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Authenticated users can read developers" ON public.developers;
CREATE POLICY "Anyone can read developers"
    ON public.developers FOR SELECT TO public USING (true);

ALTER TABLE public.publishers ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Unauthenticated users can insert publishers" ON public.publishers;
CREATE POLICY "Unauthenticated users can insert publishers"
    ON public.publishers FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Authenticated users can read publishers" ON public.publishers;
CREATE POLICY "Anyone can read publishers"
    ON public.publishers FOR SELECT TO public USING (true);

ALTER TABLE public.franchises ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Unauthenticated users can insert franchises" ON public.franchises;
CREATE POLICY "Unauthenticated users can insert franchises"
    ON public.franchises FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Authenticated users can read franchises" ON public.franchises;
CREATE POLICY "Anyone can read franchises"
    ON public.franchises FOR SELECT TO public USING (true);

ALTER TABLE public.platforms ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Unauthenticated users can insert platforms" ON public.platforms;
CREATE POLICY "Unauthenticated users can insert platforms"
    ON public.platforms FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Authenticated users can read platforms" ON public.platforms;
CREATE POLICY "Anyone can read platforms"
    ON public.platforms FOR SELECT TO public USING (true);

-- session_player: Allow unauthenticated users to select/insert/delete
-- (the app uses a hardcoded FIXED_USER_ID, so user_id filtering is done at app level)
ALTER TABLE public.session_player ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Unauthenticated users can select session_player" ON public.session_player;
CREATE POLICY "Unauthenticated users can select session_player"
    ON public.session_player FOR SELECT TO public USING (true);

DROP POLICY IF EXISTS "Unauthenticated users can insert session_player" ON public.session_player;
CREATE POLICY "Unauthenticated users can insert session_player"
    ON public.session_player FOR INSERT TO public WITH CHECK (true);

DROP POLICY IF EXISTS "Unauthenticated users can delete session_player" ON public.session_player;
CREATE POLICY "Unauthenticated users can delete session_player"
    ON public.session_player FOR DELETE TO public USING (true);
