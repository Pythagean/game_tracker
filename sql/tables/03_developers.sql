DROP TABLE IF EXISTS public.developers CASCADE;

CREATE TABLE IF NOT EXISTS public.developers
(
    developer_id SERIAL PRIMARY KEY,
    name         VARCHAR(250) NOT NULL
);

-- Enable RLS and allow authenticated users to read lookup data
ALTER TABLE public.developers ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "Authenticated users can read developers" ON public.developers;
CREATE POLICY "Authenticated users can read developers"
    ON public.developers FOR SELECT TO authenticated USING (true);
