-- Allow public (unauthenticated) SELECT on lookup tables
-- Run this in Supabase SQL editor to permit the frontend to read lookup data without signing in.

-- Note: only do this for non-sensitive lookup tables. Writes should remain restricted.

ALTER TABLE public.platforms   ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read platforms" ON public.platforms;
CREATE POLICY "Public read platforms"
  ON public.platforms FOR SELECT TO public USING (true);

ALTER TABLE public.publishers  ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read publishers" ON public.publishers;
CREATE POLICY "Public read publishers"
  ON public.publishers FOR SELECT TO public USING (true);

ALTER TABLE public.developers  ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read developers" ON public.developers;
CREATE POLICY "Public read developers"
  ON public.developers FOR SELECT TO public USING (true);

ALTER TABLE public.genres      ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read genres" ON public.genres;
CREATE POLICY "Public read genres"
  ON public.genres FOR SELECT TO public USING (true);

ALTER TABLE public.themes      ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read themes" ON public.themes;
CREATE POLICY "Public read themes"
  ON public.themes FOR SELECT TO public USING (true);

ALTER TABLE public.franchises  ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read franchises" ON public.franchises;
CREATE POLICY "Public read franchises"
  ON public.franchises FOR SELECT TO public USING (true);

ALTER TABLE public.players     ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Public read players" ON public.players;
CREATE POLICY "Public read players"
  ON public.players FOR SELECT TO public USING (true);