import { serve } from "https://deno.land/std@0.177.0/http/server.ts";

const TWITCH_TOKEN_URL = "https://id.twitch.tv/oauth2/token";
const IGDB_API_URL = "https://api.igdb.com/v4/games";

// Cache the token in memory for the function's lifetime
let cachedToken: { token: string; expiresAt: number } | null = null;

async function getTwitchToken(clientId: string, clientSecret: string): Promise<string> {
  if (cachedToken && Date.now() < cachedToken.expiresAt) {
    return cachedToken.token;
  }

  // Twitch expects a form-encoded POST body for the client credentials grant
  const body = new URLSearchParams({
    client_id: clientId.trim(),
    client_secret: clientSecret.trim(),
    grant_type: 'client_credentials',
  });

  const res = await fetch(TWITCH_TOKEN_URL, {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: body.toString(),
  });

  if (!res.ok) {
    const text = await res.text();
    throw new Error(`Twitch token fetch failed: ${res.status} - ${text}`);
  }

  const data = await res.json();
  cachedToken = {
    token: data.access_token,
    expiresAt: Date.now() + (data.expires_in - 60) * 1000, // refresh 60s early
  };

  return cachedToken.token;
}

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "POST, OPTIONS",
  "Access-Control-Allow-Headers": "authorization, apikey, content-type",
};

serve(async (req) => {
  // Handle CORS preflight
  if (req.method === "OPTIONS") {
    return new Response(null, {
      headers: corsHeaders,
    });
  }

  if (req.method !== "POST") {
  return new Response(
    JSON.stringify({ error: "Method not allowed" }),
    {
      status: 405,
      headers: {
        "Content-Type": "application/json",
        ...corsHeaders,
      },
    }
  );
}

  try {
    const clientId = Deno.env.get("IGDB_CLIENT_ID");
    const clientSecret = Deno.env.get("IGDB_CLIENT_SECRET");

    if (!clientId || !clientSecret) {
      return new Response(JSON.stringify({ error: "IGDB credentials not configured" }), {
        status: 500,
        headers: {
          "Content-Type": "application/json",
          ...corsHeaders,
        },
      });
    }

    const { query } = await req.json() as { query?: string };

    if (!query || query.trim().length < 2) {
      return new Response(JSON.stringify({ error: "Query must be at least 2 characters" }), {
        status: 400,
        headers: {
          "Content-Type": "application/json",
          ...corsHeaders,
        },
      });
    }

    // Sanitise the query to prevent IGDB API injection
    const safeQuery = query
        .replace(/"/g, '\\"')
        .trim()
        .slice(0, 100);
    //const safeQuery = query.replace(/[^a-zA-Z0-9 ':.\-]/g, "").trim().slice(0, 100);

    const accessToken = await getTwitchToken(clientId, clientSecret);

    const igdbBody = `
      search "${safeQuery}";
      fields id, name, cover.url, first_release_date, involved_companies.company.name, involved_companies.developer, involved_companies.publisher, genres.name, themes.name, franchises.name, aggregated_rating;
      limit 10;
    `;

    const igdbRes = await fetch(IGDB_API_URL, {
      method: "POST",
      headers: {
        "Client-ID": clientId,
        "Authorization": `Bearer ${accessToken}`,
        "Content-Type": "text/plain",
      },
      body: igdbBody,
    });

    if (!igdbRes.ok) {
      throw new Error(`IGDB API error: ${igdbRes.status}`);
    }

    const games = await igdbRes.json();

    return new Response(JSON.stringify(games), {
      headers: {
        "Content-Type": "application/json",
        ...corsHeaders,
      },
    });
  } catch (err) {
    const message = err instanceof Error ? err.message : "Unknown error";
    return new Response(JSON.stringify({ error: message }), {
      status: 500,
      headers: {
        "Content-Type": "application/json",
        ...corsHeaders,
      },
    });
  }
});
