-- Generated platform insert + games.default_platform_id update script
BEGIN;
-- ensure column exists
ALTER TABLE public.games ADD COLUMN IF NOT EXISTS default_platform_id INTEGER REFERENCES public.platforms(platform_id) ON DELETE SET NULL;

-- row for Psychonauts
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Psychonauts';

-- row for Soundboxing
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Soundboxing';

-- row for Star Wars: Battlefront 2 (Classic, 2005)
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Star Wars: Battlefront 2 (Classic, 2005)';

-- row for Legend of Zelda: Breath of the Wild
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Legend of Zelda: Breath of the Wild';

-- row for Cuphead
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Cuphead';

-- row for VR The Diner Duo
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'VR The Diner Duo';

-- row for Fortnite
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Fortnite';

-- row for Project CARS
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Project CARS';

-- row for Cities: Skylines
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Cities: Skylines';

-- row for Super Mario World
INSERT INTO public.platforms (name, manufacturer) VALUES ('Retro Pi', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Retro Pi' LIMIT 1) WHERE title = 'Super Mario World';

-- row for Super Mario: Odyssey
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Super Mario: Odyssey';

-- row for The Thrill of the Fight
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'The Thrill of the Fight';

-- row for Lone Echo
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Lone Echo';

-- row for Hollow Knight
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Hollow Knight';

-- row for Echo Arena
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Echo Arena';

-- row for Cook, Serve, Delicious! 2!!
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Cook, Serve, Delicious! 2!!';

-- row for Oculus Home
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Oculus Home';

-- row for Robo Recall
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Robo Recall';

-- row for The Flame in the Flood
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'The Flame in the Flood';

-- row for Fallout: New Vegas
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Fallout: New Vegas';

-- row for Gorogoa
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Gorogoa';

-- row for Life is Strange: Before the Storm
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Life is Strange: Before the Storm';

-- row for Warhammer 40,000: Space Marine
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Warhammer 40,000: Space Marine';

-- row for Drunkn Bar Fight
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Drunkn Bar Fight';

-- row for Dead Hungry
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Dead Hungry';

-- row for Rec Room
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Rec Room';

-- row for Overcooked
INSERT INTO public.platforms (name, manufacturer) VALUES ('Xbox', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Xbox' LIMIT 1) WHERE title = 'Overcooked';

-- row for Unspoken
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Unspoken';

-- row for Hatoful Boyfriend
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Hatoful Boyfriend';

-- row for VRChat
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'VRChat';

-- row for Pillars of Eternity
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Pillars of Eternity';

-- row for Sprint Vector
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Sprint Vector';

-- row for Subnautica
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Subnautica';

-- row for A Way Out
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'A Way Out';

-- row for Zelda: Link to the Past
INSERT INTO public.platforms (name, manufacturer) VALUES ('Retro Pi', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Retro Pi' LIMIT 1) WHERE title = 'Zelda: Link to the Past';

-- row for Stardew Valley
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Stardew Valley';

-- row for The Jackbox Party Pack 3
INSERT INTO public.platforms (name, manufacturer) VALUES ('Xbox', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Xbox' LIMIT 1) WHERE title = 'The Jackbox Party Pack 3';

-- row for Sea of Thieves
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Sea of Thieves';

-- row for Dead Cells
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Dead Cells';

-- row for Super Luckeys Tale
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Super Luckeys Tale';

-- row for SOMA
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'SOMA';

-- row for Wipeout: Omega Collection
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Wipeout: Omega Collection';

-- row for Beat Saber
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Beat Saber';

-- row for Sunset Overdrive
INSERT INTO public.platforms (name, manufacturer) VALUES ('Xbox', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Xbox' LIMIT 1) WHERE title = 'Sunset Overdrive';

-- row for The Escapists 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'The Escapists 2';

-- row for Star Wars Episode I: Racer
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Star Wars Episode I: Racer';

-- row for State of Decay 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'State of Decay 2';

-- row for DCS World Steam Edition
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'DCS World Steam Edition';

-- row for The Awesome Adventures of Captain Spirit
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'The Awesome Adventures of Captain Spirit';

-- row for Ori and the Blind Forest: Definitive Edition
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Ori and the Blind Forest: Definitive Edition';

-- row for The Turing Test
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'The Turing Test';

-- row for Onward
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Onward';

-- row for Enter the Gungeon
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Enter the Gungeon';

-- row for No Mans Sky
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'No Mans Sky';

-- row for Spelunky
INSERT INTO public.platforms (name, manufacturer) VALUES ('Vita', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Vita' LIMIT 1) WHERE title = 'Spelunky';

-- row for Fifa 18
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Fifa 18';

-- row for Hellblade: Senuas Sacrifice VR Edition
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Hellblade: Senuas Sacrifice VR Edition';

-- row for Battlefront 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('Xbox', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Xbox' LIMIT 1) WHERE title = 'Battlefront 2';

-- row for Duck Game
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Duck Game';

-- row for Tricky Towers
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Tricky Towers';

-- row for Into the Breach
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Into the Breach';

-- row for Lego Star Wars
INSERT INTO public.platforms (name, manufacturer) VALUES ('Xbox', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Xbox' LIMIT 1) WHERE title = 'Lego Star Wars';

-- row for Marvels Spiderman
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Marvels Spiderman';

-- row for Forza Horizon 4
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Forza Horizon 4';

-- row for Super Mario Party
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Super Mario Party';

-- row for Mario Kart 64
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo 64', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo 64' LIMIT 1) WHERE title = 'Mario Kart 64';

-- row for Mario Party
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo 64', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo 64' LIMIT 1) WHERE title = 'Mario Party';

-- row for Go Guess
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Go Guess';

-- row for Manual Samuel
INSERT INTO public.platforms (name, manufacturer) VALUES ('Xbox', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Xbox' LIMIT 1) WHERE title = 'Manual Samuel';

-- row for Ryse: Son of Rome
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Ryse: Son of Rome';

-- row for Spyro: Reignited Trilogy
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Spyro: Reignited Trilogy';

-- row for Dance Central: Spotlight
INSERT INTO public.platforms (name, manufacturer) VALUES ('Xbox', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Xbox' LIMIT 1) WHERE title = 'Dance Central: Spotlight';

-- row for Pokemon: Lets Go, Eevee!
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Pokemon: Lets Go, Eevee!';

-- row for Lego Rock Band
INSERT INTO public.platforms (name, manufacturer) VALUES ('Xbox', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Xbox' LIMIT 1) WHERE title = 'Lego Rock Band';

-- row for Anthem
INSERT INTO public.platforms (name, manufacturer) VALUES ('Xbox', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Xbox' LIMIT 1) WHERE title = 'Anthem';

-- row for Minecraft
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Minecraft';

-- row for Super Smash Bros. Ultimate
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Super Smash Bros. Ultimate';

-- row for Purrfect Date
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Purrfect Date';

-- row for Steamworld Dig 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Steamworld Dig 2';

-- row for Tetris 99
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Tetris 99';

-- row for Wargroove
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Wargroove';

-- row for Slay the Spire
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Slay the Spire';

-- row for Tetris Effect
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Tetris Effect';

-- row for Oxenfree
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Oxenfree';

-- row for Hyper Light Drifter
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Hyper Light Drifter';

-- row for The Outer Worlds
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'The Outer Worlds';

-- row for Star Wars Jedi: Fallen Order
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Star Wars Jedi: Fallen Order';

-- row for Sekiro: Shadows Die Twice
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Sekiro: Shadows Die Twice';

-- row for Outer Wilds
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Outer Wilds';

-- row for Farming Simulator 19
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Farming Simulator 19';

-- row for Abzu
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Abzu';

-- row for What Remains of Edith Finch
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'What Remains of Edith Finch';

-- row for Kentucky Route Zero
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Kentucky Route Zero';

-- row for Steep
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Steep';

-- row for Pokemon Shield
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Pokemon Shield';

-- row for Animal Crossing: New Horizons
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Animal Crossing: New Horizons';

-- row for Call of Duty: Warzone
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Call of Duty: Warzone';

-- row for Two Point Hospital
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Two Point Hospital';

-- row for Ori: The Will of the Wisps
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Ori: The Will of the Wisps';

-- row for Crash Team Racing Nitro-Fueled
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Crash Team Racing Nitro-Fueled';

-- row for Astroneer
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Astroneer';

-- row for Rocket League
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Rocket League';

-- row for The Last of Us: Part II
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'The Last of Us: Part II';

-- row for Dying Light
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Dying Light';

-- row for Endless Space 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Endless Space 2';

-- row for Football Manager 2020
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Football Manager 2020';

-- row for Tacoma
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Tacoma';

-- row for FIFA 19
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'FIFA 19';

-- row for Carrion
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Carrion';

-- row for Minit
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Minit';

-- row for Guacamelee 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Guacamelee 2';

-- row for Totally Accurate Battle Simulator
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Totally Accurate Battle Simulator';

-- row for Fall Guys
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Fall Guys';

-- row for Spiritfarer
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Spiritfarer';

-- row for Microsoft Flight Simulator
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Microsoft Flight Simulator';

-- row for Tell Me Why
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Tell Me Why';

-- row for Crusader Kings 3
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Crusader Kings 3';

-- row for Among Us
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Among Us';

-- row for Smash Tennis
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Smash Tennis';

-- row for Totally Reliable Delivery Service
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Totally Reliable Delivery Service';

-- row for Golf with your Friends
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Golf with your Friends';

-- row for Hades
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Hades';

-- row for Cook, Serve, Delicious 3
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Cook, Serve, Delicious 3';

-- row for Minecraft: Dungeons
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Minecraft: Dungeons';

-- row for Star Wars: Squadrons
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Star Wars: Squadrons';

-- row for Doom Eternal
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Doom Eternal';

-- row for Moss
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Moss';

-- row for Half Life: Alyx
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Half Life: Alyx';

-- row for Umurangi Generation
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Umurangi Generation';

-- row for FIFA 21
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'FIFA 21';

-- row for Falconeer
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Falconeer';

-- row for Donut County
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Donut County';

-- row for Monster Train
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Monster Train';

-- row for Loop Hero
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Loop Hero';

-- row for Super Animal Royale
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Super Animal Royale';

-- row for Celeste
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Celeste';

-- row for It Takes Two
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'It Takes Two';

-- row for Super Metroid
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Super Metroid';

-- row for Slime Rancher
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Slime Rancher';

-- row for Haven
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Haven';

-- row for Griftlands
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Griftlands';

-- row for Ragnarock
INSERT INTO public.platforms (name, manufacturer) VALUES ('Oculus Rift', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Oculus Rift' LIMIT 1) WHERE title = 'Ragnarock';

-- row for Descenders
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Descenders';

-- row for Trigger Witch
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Trigger Witch';

-- row for Psychonauts 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Psychonauts 2';

-- row for Sable
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Sable';

-- row for Risk of Rain
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Risk of Rain';

-- row for Noita
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Noita';

-- row for Forza Horizon 5
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Forza Horizon 5';

-- row for Halo Infinite
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Halo Infinite';

-- row for Samurai Gunn 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Samurai Gunn 2';

-- row for Windjammers 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Windjammers 2';

-- row for Nobody Saves the World
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Nobody Saves the World';

-- row for The Artful Escape
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'The Artful Escape';

-- row for Pokemon: Legends Arceus
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Pokemon: Legends Arceus';

-- row for Bloodborne
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Bloodborne';

-- row for God of War
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'God of War';

-- row for FIFA 22
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'FIFA 22';

-- row for Teenage Mutant Ninja Turtles
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Teenage Mutant Ninja Turtles';

-- row for Dragons Crown
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Dragons Crown';

-- row for House Flipper
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'House Flipper';

-- row for Crash Bandicoot 4: Its About Time
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Crash Bandicoot 4: Its About Time';

-- row for Crab Game
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Crab Game';

-- row for Multiversus
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Multiversus';

-- row for Tony Hawks Pro Skater 1 & 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Tony Hawks Pro Skater 1 & 2';

-- row for Ghost of Tsushima
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Ghost of Tsushima';

-- row for Chicory: A Colourful Tale
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Chicory: A Colourful Tale';

-- row for God of War: Ragnarok
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'God of War: Ragnarok';

-- row for Rogue Legacy 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Rogue Legacy 2';

-- row for Elden Ring
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Elden Ring';

-- row for Mushroom Wars 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Mushroom Wars 2';

-- row for The Last of Us
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'The Last of Us';

-- row for The Last of Us: Left Behind
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'The Last of Us: Left Behind';

-- row for The Forgotten City
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'The Forgotten City';

-- row for F1 22
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'F1 22';

-- row for Spiderheck
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Spiderheck';

-- row for Valheim
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Valheim';

-- row for Legend of Zelda: Tears of the Kingdom
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Legend of Zelda: Tears of the Kingdom';

-- row for Inscryption
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Inscryption';

-- row for Driver: San Fransisco
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS3', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS3' LIMIT 1) WHERE title = 'Driver: San Fransisco';

-- row for Battlefield: 1943
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS3', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS3' LIMIT 1) WHERE title = 'Battlefield: 1943';

-- row for Ratchet: Gladiator
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS3', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS3' LIMIT 1) WHERE title = 'Ratchet: Gladiator';

-- row for Kirby & the Amazing Mirror
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Kirby & the Amazing Mirror';

-- row for F-Zero 99
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'F-Zero 99';

-- row for Mario Kart: Super Circuit
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Mario Kart: Super Circuit';

-- row for Super Mario Bros: Wonder
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Super Mario Bros: Wonder';

-- row for Madden 23
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Madden 23';

-- row for Risk of Rain Returns
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Risk of Rain Returns';

-- row for Dave the Diver
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Dave the Diver';

-- row for Superliminal
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Superliminal';

-- row for Crash Team Racing: Online
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Crash Team Racing: Online';

-- row for Elden Ring: Shadow of the Erdtree
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Elden Ring: Shadow of the Erdtree';

-- row for The Legend of Zelda: Four Swords Adventures
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'The Legend of Zelda: Four Swords Adventures';

-- row for Pikmin 4
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Pikmin 4';

-- row for Chained Together
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Chained Together';

-- row for Yokus Island Express
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Yokus Island Express';

-- row for Europa
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Europa';

-- row for Cult of the Lamb
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Cult of the Lamb';

-- row for Battlefield: V
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Battlefield: V';

-- row for Marvel's Spider-Man: Miles Morales
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Marvel''s Spider-Man: Miles Morales';

-- row for Dredge
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Dredge';

-- row for Sifu
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Sifu';

-- row for Star Wars Jedi: Survivor
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Star Wars Jedi: Survivor';

-- row for Yooka-Laylee and the Impossible Lair
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Yooka-Laylee and the Impossible Lair';

-- row for Prey
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Prey';

-- row for Risk of Rain 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Risk of Rain 2';

-- row for Oh Deer
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Oh Deer';

-- row for The Crew 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'The Crew 2';

-- row for Battlefield: 1
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Battlefield: 1';

-- row for Spelunky 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Spelunky 2';

-- row for Split Fiction
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Split Fiction';

-- row for Mario Kart World
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch 2', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch 2' LIMIT 1) WHERE title = 'Mario Kart World';

-- row for Red Dead Redemption II
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Red Dead Redemption II';

-- row for Control
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Control';

-- row for Helldivers II
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Helldivers II';

-- row for LEGO Builder’s Journey
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'LEGO Builder’s Journey';

-- row for Star Wars Battlefront II
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Star Wars Battlefront II';

-- row for Mario + Rabbids: Sparks of Hope
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Mario + Rabbids: Sparks of Hope';

-- row for Absolum
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Absolum';

-- row for Ratchet & Clank: Rift Apart
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Ratchet & Clank: Rift Apart';

-- row for Peak
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Peak';

-- row for Overcooked 2
INSERT INTO public.platforms (name, manufacturer) VALUES ('PS4', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PS4' LIMIT 1) WHERE title = 'Overcooked 2';

-- row for Pokopia
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch 2', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch 2' LIMIT 1) WHERE title = 'Pokopia';

-- row for Hollow Knight: Silksong
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Hollow Knight: Silksong';

-- row for Satisfactory
INSERT INTO public.platforms (name, manufacturer) VALUES ('PC', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'PC' LIMIT 1) WHERE title = 'Satisfactory';

-- row for Mario Kart 8
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch' LIMIT 1) WHERE title = 'Mario Kart 8';

-- row for Donkey Kong Bananza
INSERT INTO public.platforms (name, manufacturer) VALUES ('Nintendo Switch 2', '') ON CONFLICT (name) DO NOTHING;
UPDATE public.games SET default_platform_id = (SELECT platform_id FROM public.platforms WHERE name = 'Nintendo Switch 2' LIMIT 1) WHERE title = 'Donkey Kong Bananza';

COMMIT;