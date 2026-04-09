-- Generated SQL to map session.game_id (legacy) to new games.id\n-- Review and run AFTER your new `games`/`platforms` tables exist.\n
BEGIN;
-- map via giantbomb id for session 1
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58490' LIMIT 1) WHERE session_id = '1' AND game_id = '40';
-- map via giantbomb id for session 2
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '2' AND game_id = '63';
-- map via giantbomb id for session 3
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '29992' LIMIT 1) WHERE session_id = '3' AND game_id = '64';
-- map via giantbomb id for session 4
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '4' AND game_id = '63';
-- map via giantbomb id for session 5
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '5' AND game_id = '63';
-- map via giantbomb id for session 6
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '6' AND game_id = '63';
-- map via giantbomb id for session 7
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '7' AND game_id = '63';
-- map via giantbomb id for session 8
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '8' AND game_id = '63';
-- map via giantbomb id for session 9
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '9' AND game_id = '63';
-- map via giantbomb id for session 10
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54233' LIMIT 1) WHERE session_id = '10' AND game_id = '65';
-- map via giantbomb id for session 11
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '11' AND game_id = '63';
-- map via giantbomb id for session 12
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '12' AND game_id = '63';
-- map via giantbomb id for session 13
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '13' AND game_id = '63';
-- map via giantbomb id for session 14
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68948' LIMIT 1) WHERE session_id = '14' AND game_id = '57';
-- map via giantbomb id for session 15
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '45746' LIMIT 1) WHERE session_id = '15' AND game_id = '61';
-- map via giantbomb id for session 16
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '16' AND game_id = '63';
-- map via giantbomb id for session 17
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58490' LIMIT 1) WHERE session_id = '17' AND game_id = '40';
-- map via giantbomb id for session 18
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '18' AND game_id = '63';
-- map via giantbomb id for session 19
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '19' AND game_id = '63';
-- map via giantbomb id for session 20
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '20' AND game_id = '63';
-- map via giantbomb id for session 21
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '21' AND game_id = '63';
-- map via giantbomb id for session 22
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '22' AND game_id = '63';
-- map via giantbomb id for session 23
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '23' AND game_id = '63';
-- map via giantbomb id for session 24
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '24' AND game_id = '63';
-- map via giantbomb id for session 25
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '25' AND game_id = '63';
-- map via giantbomb id for session 26
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '26' AND game_id = '63';
-- map via giantbomb id for session 27
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '27' AND game_id = '63';
-- map via giantbomb id for session 28
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '28' AND game_id = '63';
-- map via giantbomb id for session 29
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '29' AND game_id = '63';
-- map via giantbomb id for session 30
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '30' AND game_id = '63';
-- map via giantbomb id for session 31
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '31' AND game_id = '66';
-- map via giantbomb id for session 32
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '32' AND game_id = '63';
-- map via giantbomb id for session 33
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '33' AND game_id = '66';
-- map via giantbomb id for session 34
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68948' LIMIT 1) WHERE session_id = '34' AND game_id = '57';
-- map via giantbomb id for session 35
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '35' AND game_id = '66';
-- map via giantbomb id for session 36
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '36' AND game_id = '63';
-- map via giantbomb id for session 37
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '37' AND game_id = '66';
-- map via giantbomb id for session 38
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '38' AND game_id = '66';
-- map via giantbomb id for session 39
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '39' AND game_id = '66';
-- map via giantbomb id for session 40
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '40' AND game_id = '66';
-- map via giantbomb id for session 41
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '41' AND game_id = '66';
-- map via giantbomb id for session 42
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '42' AND game_id = '63';
-- map via giantbomb id for session 43
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '43' AND game_id = '63';
-- map via giantbomb id for session 44
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '44' AND game_id = '63';
-- map via giantbomb id for session 45
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68947' LIMIT 1) WHERE session_id = '45' AND game_id = '67';
-- map via giantbomb id for session 46
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '46' AND game_id = '9';
-- map via giantbomb id for session 47
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '10084' LIMIT 1) WHERE session_id = '47' AND game_id = '68';
-- map via giantbomb id for session 48
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '6424' LIMIT 1) WHERE session_id = '48' AND game_id = '69';
-- map via giantbomb id for session 49
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '49' AND game_id = '63';
-- map via giantbomb id for session 50
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '50' AND game_id = '66';
-- map via giantbomb id for session 51
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '51' AND game_id = '66';
-- map via giantbomb id for session 52
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '52' AND game_id = '66';
-- map via giantbomb id for session 53
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68948' LIMIT 1) WHERE session_id = '53' AND game_id = '57';
-- map via giantbomb id for session 54
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '29992' LIMIT 1) WHERE session_id = '54' AND game_id = '64';
-- map via giantbomb id for session 55
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '55' AND game_id = '63';
-- map via giantbomb id for session 56
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '56' AND game_id = '63';
-- map via giantbomb id for session 57
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '57' AND game_id = '66';
-- map via giantbomb id for session 58
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '58' AND game_id = '66';
-- map via giantbomb id for session 59
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '59' AND game_id = '63';
-- map via giantbomb id for session 60
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68948' LIMIT 1) WHERE session_id = '60' AND game_id = '57';
-- map via giantbomb id for session 61
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68947' LIMIT 1) WHERE session_id = '61' AND game_id = '67';
-- map via giantbomb id for session 62
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '62' AND game_id = '63';
-- map via giantbomb id for session 63
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '63' AND game_id = '66';
-- map via giantbomb id for session 64
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '64' AND game_id = '66';
-- map via giantbomb id for session 65
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '15169' LIMIT 1) WHERE session_id = '65' AND game_id = '70';
-- map via giantbomb id for session 66
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53373' LIMIT 1) WHERE session_id = '66' AND game_id = '71';
-- map via giantbomb id for session 67
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53373' LIMIT 1) WHERE session_id = '67' AND game_id = '71';
-- map via giantbomb id for session 68
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '68' AND game_id = '66';
-- map via giantbomb id for session 69
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '69' AND game_id = '63';
-- map via giantbomb id for session 70
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '70' AND game_id = '66';
-- map via giantbomb id for session 71
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '71' AND game_id = '63';
-- map via giantbomb id for session 72
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '72' AND game_id = '66';
-- map via giantbomb id for session 73
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '73' AND game_id = '63';
-- map via giantbomb id for session 74
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '74' AND game_id = '66';
-- map via giantbomb id for session 75
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '65652' LIMIT 1) WHERE session_id = '75' AND game_id = '44';
-- map via giantbomb id for session 76
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '76' AND game_id = '66';
-- map via giantbomb id for session 77
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68947' LIMIT 1) WHERE session_id = '77' AND game_id = '67';
-- map via giantbomb id for session 78
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '78' AND game_id = '63';
-- map via giantbomb id for session 79
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '79' AND game_id = '66';
-- map via giantbomb id for session 80
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '80' AND game_id = '66';
-- map via giantbomb id for session 81
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '81' AND game_id = '63';
-- map via giantbomb id for session 82
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '82' AND game_id = '63';
-- map via giantbomb id for session 83
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '83' AND game_id = '63';
-- map via giantbomb id for session 84
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '84' AND game_id = '66';
-- map via giantbomb id for session 85
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '31709' LIMIT 1) WHERE session_id = '85' AND game_id = '72';
-- map via giantbomb id for session 86
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '86' AND game_id = '66';
-- map via giantbomb id for session 87
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '87' AND game_id = '39';
-- map via giantbomb id for session 88
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '88' AND game_id = '63';
-- map via giantbomb id for session 89
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '89' AND game_id = '66';
-- map via giantbomb id for session 90
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '90' AND game_id = '66';
-- map via giantbomb id for session 91
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '91' AND game_id = '73';
-- map via giantbomb id for session 92
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '92' AND game_id = '73';
-- map via giantbomb id for session 93
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46555' LIMIT 1) WHERE session_id = '93' AND game_id = '74';
-- map via giantbomb id for session 94
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '31709' LIMIT 1) WHERE session_id = '94' AND game_id = '72';
-- map via giantbomb id for session 95
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '95' AND game_id = '75';
-- map via giantbomb id for session 96
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '25765' LIMIT 1) WHERE session_id = '96' AND game_id = '76';
-- map via giantbomb id for session 97
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '97' AND game_id = '75';
-- map via giantbomb id for session 98
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '98' AND game_id = '75';
-- map via giantbomb id for session 99
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '31709' LIMIT 1) WHERE session_id = '99' AND game_id = '72';
-- map via giantbomb id for session 100
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '100' AND game_id = '75';
-- map via giantbomb id for session 101
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '101' AND game_id = '75';
-- map via giantbomb id for session 102
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '102' AND game_id = '75';
-- map via giantbomb id for session 103
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '103' AND game_id = '75';
-- map via giantbomb id for session 104
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '104' AND game_id = '75';
-- map via giantbomb id for session 105
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '105' AND game_id = '75';
-- map via giantbomb id for session 106
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '106' AND game_id = '75';
-- map via giantbomb id for session 107
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '107' AND game_id = '75';
-- map via giantbomb id for session 108
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '108' AND game_id = '75';
-- map via giantbomb id for session 109
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68948' LIMIT 1) WHERE session_id = '109' AND game_id = '57';
-- map via giantbomb id for session 110
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68947' LIMIT 1) WHERE session_id = '110' AND game_id = '67';
-- map via giantbomb id for session 111
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '111' AND game_id = '73';
-- map via giantbomb id for session 112
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '112' AND game_id = '73';
-- map via giantbomb id for session 113
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '113' AND game_id = '75';
-- map via giantbomb id for session 114
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '114' AND game_id = '73';
-- map via giantbomb id for session 115
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '115' AND game_id = '75';
-- map via giantbomb id for session 116
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '116' AND game_id = '75';
-- map via giantbomb id for session 117
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '117' AND game_id = '75';
-- map via giantbomb id for session 118
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '118' AND game_id = '75';
-- map via giantbomb id for session 119
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '119' AND game_id = '75';
-- map via giantbomb id for session 120
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '120' AND game_id = '75';
-- map via giantbomb id for session 121
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '121' AND game_id = '75';
-- map via giantbomb id for session 122
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '122' AND game_id = '75';
-- map via giantbomb id for session 123
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '123' AND game_id = '39';
-- map via giantbomb id for session 124
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '124' AND game_id = '75';
-- map via giantbomb id for session 125
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '125' AND game_id = '73';
-- map via giantbomb id for session 126
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '126' AND game_id = '75';
-- map via giantbomb id for session 127
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '127' AND game_id = '75';
-- map via giantbomb id for session 128
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '128' AND game_id = '75';
-- map via giantbomb id for session 129
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '129' AND game_id = '75';
-- map via giantbomb id for session 130
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '130' AND game_id = '75';
-- map via giantbomb id for session 131
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '131' AND game_id = '75';
-- map via giantbomb id for session 132
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '132' AND game_id = '66';
-- map via giantbomb id for session 133
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '65652' LIMIT 1) WHERE session_id = '133' AND game_id = '44';
-- map via giantbomb id for session 134
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '134' AND game_id = '75';
-- map via giantbomb id for session 135
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46632' LIMIT 1) WHERE session_id = '135' AND game_id = '77';
-- map via giantbomb id for session 136
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '136' AND game_id = '73';
-- map via giantbomb id for session 137
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '137' AND game_id = '73';
-- map via giantbomb id for session 138
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '138' AND game_id = '75';
-- map via giantbomb id for session 139
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '139' AND game_id = '75';
-- map via giantbomb id for session 140
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '140' AND game_id = '66';
-- map via giantbomb id for session 141
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '141' AND game_id = '75';
-- map via giantbomb id for session 142
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '142' AND game_id = '78';
-- map via giantbomb id for session 143
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '143' AND game_id = '75';
-- map via giantbomb id for session 144
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68909' LIMIT 1) WHERE session_id = '144' AND game_id = '66';
-- map via giantbomb id for session 145
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '145' AND game_id = '75';
-- map via giantbomb id for session 146
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '146' AND game_id = '75';
-- map via giantbomb id for session 147
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '147' AND game_id = '78';
-- map via giantbomb id for session 148
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '148' AND game_id = '78';
-- map via giantbomb id for session 149
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '149' AND game_id = '73';
-- map via giantbomb id for session 150
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '150' AND game_id = '75';
-- map via giantbomb id for session 151
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '151' AND game_id = '73';
-- map via giantbomb id for session 152
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68948' LIMIT 1) WHERE session_id = '152' AND game_id = '57';
-- map via giantbomb id for session 153
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '153' AND game_id = '73';
-- map via giantbomb id for session 154
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '154' AND game_id = '75';
-- map via giantbomb id for session 155
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66900' LIMIT 1) WHERE session_id = '155' AND game_id = '79';
-- map via giantbomb id for session 156
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53373' LIMIT 1) WHERE session_id = '156' AND game_id = '71';
-- map via giantbomb id for session 157
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '51691' LIMIT 1) WHERE session_id = '157' AND game_id = '62';
-- map via giantbomb id for session 158
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '60412' LIMIT 1) WHERE session_id = '158' AND game_id = '80';
-- map via giantbomb id for session 159
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '159' AND game_id = '1';
-- map via giantbomb id for session 160
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '160' AND game_id = '1';
-- map via giantbomb id for session 161
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '161' AND game_id = '1';
-- map via giantbomb id for session 162
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '162' AND game_id = '1';
-- map via giantbomb id for session 163
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '163' AND game_id = '1';
-- map via giantbomb id for session 164
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '164' AND game_id = '1';
-- map via giantbomb id for session 165
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '165' AND game_id = '1';
-- map via giantbomb id for session 166
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '166' AND game_id = '1';
-- map via giantbomb id for session 167
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '167' AND game_id = '1';
-- map via giantbomb id for session 168
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '168' AND game_id = '1';
-- map via giantbomb id for session 169
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '169' AND game_id = '1';
-- map via giantbomb id for session 170
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '170' AND game_id = '1';
-- map via giantbomb id for session 171
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '171' AND game_id = '1';
-- map via giantbomb id for session 172
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '172' AND game_id = '1';
-- map via giantbomb id for session 173
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '173' AND game_id = '1';
-- map via giantbomb id for session 174
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '174' AND game_id = '1';
-- map via giantbomb id for session 175
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '175' AND game_id = '1';
-- map via giantbomb id for session 176
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '176' AND game_id = '1';
-- map via giantbomb id for session 177
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '177' AND game_id = '1';
-- map via giantbomb id for session 178
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '178' AND game_id = '1';
-- map via giantbomb id for session 179
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '179' AND game_id = '1';
-- map via giantbomb id for session 180
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '180' AND game_id = '81';
-- map via giantbomb id for session 181
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '181' AND game_id = '81';
-- map via giantbomb id for session 182
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '182' AND game_id = '1';
-- map via giantbomb id for session 183
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '183' AND game_id = '81';
-- map via giantbomb id for session 184
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '184' AND game_id = '78';
-- map via giantbomb id for session 185
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '185' AND game_id = '81';
-- map via giantbomb id for session 186
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '186' AND game_id = '1';
-- map via giantbomb id for session 187
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '187' AND game_id = '81';
-- map via giantbomb id for session 188
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '188' AND game_id = '1';
-- map via giantbomb id for session 189
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '189' AND game_id = '81';
-- map via giantbomb id for session 190
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '190' AND game_id = '1';
-- map via giantbomb id for session 191
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '191' AND game_id = '81';
-- map via giantbomb id for session 192
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '192' AND game_id = '81';
-- map via giantbomb id for session 193
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '193' AND game_id = '81';
-- map via giantbomb id for session 194
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '194' AND game_id = '81';
-- map via giantbomb id for session 195
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '195' AND game_id = '82';
-- map via giantbomb id for session 196
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '196' AND game_id = '82';
-- map via giantbomb id for session 197
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '197' AND game_id = '81';
-- map via giantbomb id for session 198
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '198' AND game_id = '82';
-- map via giantbomb id for session 199
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '199' AND game_id = '82';
-- map via giantbomb id for session 200
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '200' AND game_id = '81';
-- map via giantbomb id for session 201
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '201' AND game_id = '82';
-- map via giantbomb id for session 202
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '202' AND game_id = '82';
-- map via giantbomb id for session 203
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '203' AND game_id = '82';
-- map via giantbomb id for session 204
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58593' LIMIT 1) WHERE session_id = '204' AND game_id = '81';
-- map via giantbomb id for session 205
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '205' AND game_id = '82';
-- map via giantbomb id for session 206
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '206' AND game_id = '75';
-- map via giantbomb id for session 207
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '207' AND game_id = '82';
-- map via giantbomb id for session 208
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '208' AND game_id = '82';
-- map via giantbomb id for session 209
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72146' LIMIT 1) WHERE session_id = '209' AND game_id = '83';
-- map via giantbomb id for session 210
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '210' AND game_id = '82';
-- map via giantbomb id for session 211
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72146' LIMIT 1) WHERE session_id = '211' AND game_id = '83';
-- map via giantbomb id for session 212
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72146' LIMIT 1) WHERE session_id = '212' AND game_id = '83';
-- map via giantbomb id for session 213
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '213' AND game_id = '75';
-- map via giantbomb id for session 214
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '214' AND game_id = '82';
-- map via giantbomb id for session 215
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '215' AND game_id = '75';
-- map via giantbomb id for session 216
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72146' LIMIT 1) WHERE session_id = '216' AND game_id = '83';
-- map via giantbomb id for session 217
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '217' AND game_id = '82';
-- map via giantbomb id for session 218
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '218' AND game_id = '75';
-- map via giantbomb id for session 219
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '219' AND game_id = '82';
-- map via giantbomb id for session 220
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '220' AND game_id = '82';
-- map via giantbomb id for session 221
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '221' AND game_id = '5';
-- map via giantbomb id for session 222
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '222' AND game_id = '82';
-- map via giantbomb id for session 223
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '223' AND game_id = '5';
-- map via giantbomb id for session 224
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '224' AND game_id = '5';
-- map via giantbomb id for session 225
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '225' AND game_id = '5';
-- map via giantbomb id for session 226
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '226' AND game_id = '5';
-- map via giantbomb id for session 227
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '227' AND game_id = '82';
-- map via giantbomb id for session 228
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '228' AND game_id = '5';
-- map via giantbomb id for session 229
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '229' AND game_id = '82';
-- map via giantbomb id for session 230
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '230' AND game_id = '5';
-- map via giantbomb id for session 231
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '231' AND game_id = '5';
-- map via giantbomb id for session 232
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '232' AND game_id = '82';
-- map via giantbomb id for session 233
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '233' AND game_id = '5';
-- map via giantbomb id for session 234
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '234' AND game_id = '5';
-- map via giantbomb id for session 235
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41355' LIMIT 1) WHERE session_id = '235' AND game_id = '5';
-- map via giantbomb id for session 236
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '236' AND game_id = '82';
-- map via giantbomb id for session 237
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '237' AND game_id = '75';
-- map via giantbomb id for session 238
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '238' AND game_id = '75';
-- map via giantbomb id for session 239
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '239' AND game_id = '82';
-- map via giantbomb id for session 240
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '240' AND game_id = '75';
-- map via giantbomb id for session 241
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '241' AND game_id = '75';
-- map via giantbomb id for session 242
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '242' AND game_id = '75';
-- map via giantbomb id for session 243
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '243' AND game_id = '75';
-- map via giantbomb id for session 244
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '244' AND game_id = '75';
-- map via giantbomb id for session 245
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68738' LIMIT 1) WHERE session_id = '245' AND game_id = '75';
-- map via giantbomb id for session 246
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '246' AND game_id = '82';
-- map via giantbomb id for session 247
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '247' AND game_id = '82';
-- map via giantbomb id for session 248
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '248' AND game_id = '82';
-- map via giantbomb id for session 249
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '249' AND game_id = '82';
-- map via giantbomb id for session 250
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '250' AND game_id = '1';
-- map via giantbomb id for session 251
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '251' AND game_id = '1';
-- map via giantbomb id for session 252
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '252' AND game_id = '82';
-- map via giantbomb id for session 253
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '253' AND game_id = '1';
-- map via giantbomb id for session 254
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '254' AND game_id = '1';
-- map via giantbomb id for session 255
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '255' AND game_id = '1';
-- map via giantbomb id for session 256
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '256' AND game_id = '82';
-- map via giantbomb id for session 257
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '257' AND game_id = '1';
-- map via giantbomb id for session 258
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '258' AND game_id = '1';
-- map via giantbomb id for session 259
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '259' AND game_id = '1';
-- map via giantbomb id for session 260
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '260' AND game_id = '1';
-- map via giantbomb id for session 261
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '261' AND game_id = '1';
-- map via giantbomb id for session 262
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '262' AND game_id = '82';
-- map via giantbomb id for session 263
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '263' AND game_id = '82';
-- map via giantbomb id for session 264
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '264' AND game_id = '82';
-- map via giantbomb id for session 265
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '265' AND game_id = '1';
-- map via giantbomb id for session 266
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '266' AND game_id = '82';
-- map via giantbomb id for session 267
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '267' AND game_id = '1';
-- map via giantbomb id for session 268
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '268' AND game_id = '82';
-- map via giantbomb id for session 269
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '269' AND game_id = '82';
-- map via giantbomb id for session 270
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '270' AND game_id = '1';
-- map via giantbomb id for session 271
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '271' AND game_id = '82';
-- map via giantbomb id for session 272
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '272' AND game_id = '82';
-- map via giantbomb id for session 273
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '273' AND game_id = '1';
-- map via giantbomb id for session 274
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '274' AND game_id = '1';
-- map via giantbomb id for session 275
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '275' AND game_id = '1';
-- map via giantbomb id for session 276
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '276' AND game_id = '82';
-- map via giantbomb id for session 277
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '277' AND game_id = '1';
-- map via giantbomb id for session 278
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '278' AND game_id = '1';
-- map via giantbomb id for session 279
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '279' AND game_id = '1';
-- map via giantbomb id for session 280
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '280' AND game_id = '1';
-- map via giantbomb id for session 281
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '281' AND game_id = '1';
-- map via giantbomb id for session 282
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '282' AND game_id = '1';
-- map via giantbomb id for session 283
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '283' AND game_id = '1';
-- map via giantbomb id for session 284
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '284' AND game_id = '1';
-- map via giantbomb id for session 285
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '285' AND game_id = '1';
-- map via giantbomb id for session 286
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '286' AND game_id = '1';
-- map via giantbomb id for session 287
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '287' AND game_id = '1';
-- map via giantbomb id for session 288
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '288' AND game_id = '1';
-- map via giantbomb id for session 289
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '289' AND game_id = '1';
-- map via giantbomb id for session 290
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '290' AND game_id = '1';
-- map via giantbomb id for session 291
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '291' AND game_id = '82';
-- map via giantbomb id for session 292
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '292' AND game_id = '82';
-- map via giantbomb id for session 293
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '293' AND game_id = '82';
-- map via giantbomb id for session 294
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '294' AND game_id = '82';
-- map via giantbomb id for session 295
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '295' AND game_id = '1';
-- map via giantbomb id for session 296
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '296' AND game_id = '82';
-- map via giantbomb id for session 297
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '297' AND game_id = '82';
-- map via giantbomb id for session 298
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '298' AND game_id = '1';
-- map via giantbomb id for session 299
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '299' AND game_id = '82';
-- map via giantbomb id for session 300
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '300' AND game_id = '82';
-- map via giantbomb id for session 301
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '301' AND game_id = '82';
-- map via giantbomb id for session 302
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '302' AND game_id = '82';
-- map via giantbomb id for session 303
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '303' AND game_id = '82';
-- map via giantbomb id for session 304
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '304' AND game_id = '82';
-- map via giantbomb id for session 305
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '305' AND game_id = '82';
-- map via giantbomb id for session 306
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '306' AND game_id = '82';
-- map via giantbomb id for session 307
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '307' AND game_id = '82';
-- map via giantbomb id for session 308
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '308' AND game_id = '82';
-- map via giantbomb id for session 309
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '309' AND game_id = '82';
-- map via giantbomb id for session 310
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '310' AND game_id = '82';
-- map via giantbomb id for session 311
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '311' AND game_id = '82';
-- map via giantbomb id for session 312
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '312' AND game_id = '82';
-- map via giantbomb id for session 313
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '313' AND game_id = '82';
-- map via giantbomb id for session 314
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '314' AND game_id = '82';
-- map via giantbomb id for session 315
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '315' AND game_id = '82';
-- map via giantbomb id for session 316
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '316' AND game_id = '82';
-- map via giantbomb id for session 317
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '317' AND game_id = '84';
-- map via giantbomb id for session 318
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '318' AND game_id = '84';
-- map via giantbomb id for session 319
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '319' AND game_id = '84';
-- map via giantbomb id for session 320
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '320' AND game_id = '84';
-- map via giantbomb id for session 321
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '321' AND game_id = '82';
-- map via giantbomb id for session 322
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '322' AND game_id = '84';
-- map via giantbomb id for session 323
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '323' AND game_id = '84';
-- map via giantbomb id for session 324
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '324' AND game_id = '84';
-- map via giantbomb id for session 325
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '325' AND game_id = '85';
-- map via giantbomb id for session 326
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '326' AND game_id = '85';
-- map via giantbomb id for session 327
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '327' AND game_id = '84';
-- map via giantbomb id for session 328
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '328' AND game_id = '84';
-- map via giantbomb id for session 329
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '329' AND game_id = '85';
-- map via giantbomb id for session 330
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '330' AND game_id = '84';
-- map via giantbomb id for session 331
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '331' AND game_id = '82';
-- map via giantbomb id for session 332
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '332' AND game_id = '82';
-- map via giantbomb id for session 333
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '333' AND game_id = '84';
-- map via giantbomb id for session 334
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '334' AND game_id = '84';
-- map via giantbomb id for session 335
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '335' AND game_id = '84';
-- map via giantbomb id for session 336
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '336' AND game_id = '84';
-- map via giantbomb id for session 337
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '337' AND game_id = '84';
-- map via giantbomb id for session 338
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '338' AND game_id = '84';
-- map via giantbomb id for session 339
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58596' LIMIT 1) WHERE session_id = '339' AND game_id = '84';
-- map via giantbomb id for session 340
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '340' AND game_id = '63';
-- map via giantbomb id for session 341
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '341' AND game_id = '63';
-- map via giantbomb id for session 342
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '342' AND game_id = '63';
-- map via giantbomb id for session 343
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '343' AND game_id = '63';
-- map via giantbomb id for session 344
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '344' AND game_id = '82';
-- map via giantbomb id for session 345
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '345' AND game_id = '63';
-- map via giantbomb id for session 346
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '346' AND game_id = '63';
-- map via giantbomb id for session 347
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '347' AND game_id = '63';
-- map via giantbomb id for session 348
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '348' AND game_id = '63';
-- map via giantbomb id for session 349
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '349' AND game_id = '82';
-- map via giantbomb id for session 350
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '350' AND game_id = '63';
-- map via giantbomb id for session 351
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '351' AND game_id = '86';
-- map via giantbomb id for session 352
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '352' AND game_id = '82';
-- map via giantbomb id for session 353
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '353' AND game_id = '86';
-- map via giantbomb id for session 354
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '354' AND game_id = '63';
-- map via giantbomb id for session 355
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '355' AND game_id = '86';
-- map via giantbomb id for session 356
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58234' LIMIT 1) WHERE session_id = '356' AND game_id = '63';
-- map via giantbomb id for session 357
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '357' AND game_id = '86';
-- map via giantbomb id for session 358
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '358' AND game_id = '86';
-- map via giantbomb id for session 359
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '359' AND game_id = '82';
-- map via giantbomb id for session 360
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '360' AND game_id = '86';
-- map via giantbomb id for session 361
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '361' AND game_id = '82';
-- map via giantbomb id for session 362
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '362' AND game_id = '86';
-- map via giantbomb id for session 363
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '363' AND game_id = '82';
-- map via giantbomb id for session 364
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '364' AND game_id = '82';
-- map via giantbomb id for session 365
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '365' AND game_id = '86';
-- map via giantbomb id for session 366
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '366' AND game_id = '82';
-- map via giantbomb id for session 367
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '367' AND game_id = '86';
-- map via giantbomb id for session 368
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '368' AND game_id = '82';
-- map via giantbomb id for session 369
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '369' AND game_id = '82';
-- map via giantbomb id for session 370
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54215' LIMIT 1) WHERE session_id = '370' AND game_id = '48';
-- map via giantbomb id for session 371
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '371' AND game_id = '82';
-- map via giantbomb id for session 372
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '372' AND game_id = '86';
-- map via giantbomb id for session 373
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '373' AND game_id = '86';
-- map via giantbomb id for session 374
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '374' AND game_id = '85';
-- map via giantbomb id for session 375
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '375' AND game_id = '85';
-- map via giantbomb id for session 376
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '376' AND game_id = '82';
-- map via giantbomb id for session 377
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '377' AND game_id = '82';
-- map via giantbomb id for session 378
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '378' AND game_id = '85';
-- map via giantbomb id for session 379
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '379' AND game_id = '85';
-- map via giantbomb id for session 380
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '380' AND game_id = '85';
-- map via giantbomb id for session 381
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '381' AND game_id = '82';
-- map via giantbomb id for session 382
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '382' AND game_id = '85';
-- map via giantbomb id for session 383
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '383' AND game_id = '82';
-- map via giantbomb id for session 384
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '384' AND game_id = '85';
-- map via giantbomb id for session 385
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '385' AND game_id = '82';
-- map via giantbomb id for session 386
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '386' AND game_id = '85';
-- map via giantbomb id for session 387
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '387' AND game_id = '82';
-- map via giantbomb id for session 388
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '388' AND game_id = '82';
-- map via giantbomb id for session 389
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '389' AND game_id = '85';
-- map via giantbomb id for session 390
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '390' AND game_id = '82';
-- map via giantbomb id for session 391
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '391' AND game_id = '82';
-- map via giantbomb id for session 392
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '392' AND game_id = '85';
-- map via giantbomb id for session 393
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '393' AND game_id = '85';
-- map via giantbomb id for session 394
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '394' AND game_id = '85';
-- map via giantbomb id for session 395
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '395' AND game_id = '82';
-- map via giantbomb id for session 396
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '396' AND game_id = '85';
-- map via giantbomb id for session 397
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '397' AND game_id = '82';
-- map via giantbomb id for session 398
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '398' AND game_id = '85';
-- map via giantbomb id for session 399
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '399' AND game_id = '82';
-- map via giantbomb id for session 400
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '400' AND game_id = '85';
-- map via giantbomb id for session 401
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '401' AND game_id = '85';
-- map via giantbomb id for session 402
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '402' AND game_id = '73';
-- map via giantbomb id for session 403
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '403' AND game_id = '82';
-- map via giantbomb id for session 404
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '404' AND game_id = '85';
-- map via giantbomb id for session 405
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '405' AND game_id = '73';
-- map via giantbomb id for session 406
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '406' AND game_id = '82';
-- map via giantbomb id for session 407
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '407' AND game_id = '73';
-- map via giantbomb id for session 408
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '408' AND game_id = '73';
-- map via giantbomb id for session 409
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '409' AND game_id = '85';
-- map via giantbomb id for session 410
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '410' AND game_id = '73';
-- map via giantbomb id for session 411
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '411' AND game_id = '85';
-- map via giantbomb id for session 412
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '412' AND game_id = '82';
-- map via giantbomb id for session 413
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '413' AND game_id = '73';
-- map via giantbomb id for session 414
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '414' AND game_id = '85';
-- map via giantbomb id for session 415
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '415' AND game_id = '73';
-- map via giantbomb id for session 416
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '416' AND game_id = '82';
-- map via giantbomb id for session 417
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '417' AND game_id = '85';
-- map via giantbomb id for session 418
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '418' AND game_id = '82';
-- map via giantbomb id for session 419
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '419' AND game_id = '73';
-- map via giantbomb id for session 420
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '420' AND game_id = '82';
-- map via giantbomb id for session 421
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '421' AND game_id = '85';
-- map via giantbomb id for session 422
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '422' AND game_id = '85';
-- map via giantbomb id for session 423
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '423' AND game_id = '82';
-- map via giantbomb id for session 424
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '424' AND game_id = '85';
-- map via giantbomb id for session 425
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '425' AND game_id = '82';
-- map via giantbomb id for session 426
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '426' AND game_id = '82';
-- map via giantbomb id for session 427
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '427' AND game_id = '85';
-- map via giantbomb id for session 428
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '428' AND game_id = '85';
-- map via giantbomb id for session 429
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '429' AND game_id = '85';
-- map via giantbomb id for session 430
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '430' AND game_id = '82';
-- map via giantbomb id for session 431
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '431' AND game_id = '85';
-- map via giantbomb id for session 432
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '432' AND game_id = '82';
-- map via giantbomb id for session 433
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '433' AND game_id = '73';
-- map via giantbomb id for session 434
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '434' AND game_id = '85';
-- map via giantbomb id for session 435
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '435' AND game_id = '85';
-- map via giantbomb id for session 436
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '436' AND game_id = '85';
-- map via giantbomb id for session 437
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '437' AND game_id = '82';
-- map via giantbomb id for session 438
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '438' AND game_id = '82';
-- map via giantbomb id for session 439
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '439' AND game_id = '85';
-- map via giantbomb id for session 440
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '440' AND game_id = '82';
-- map via giantbomb id for session 441
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '441' AND game_id = '85';
-- map via giantbomb id for session 442
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '442' AND game_id = '82';
-- map via giantbomb id for session 443
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '443' AND game_id = '85';
-- map via giantbomb id for session 444
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '444' AND game_id = '85';
-- map via giantbomb id for session 445
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '445' AND game_id = '85';
-- map via giantbomb id for session 446
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '446' AND game_id = '85';
-- map via giantbomb id for session 447
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '447' AND game_id = '73';
-- map via giantbomb id for session 448
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '448' AND game_id = '82';
-- map via giantbomb id for session 449
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '449' AND game_id = '85';
-- map via giantbomb id for session 450
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '450' AND game_id = '85';
-- map via giantbomb id for session 451
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '451' AND game_id = '85';
-- map via giantbomb id for session 452
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '452' AND game_id = '82';
-- map via giantbomb id for session 453
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '453' AND game_id = '85';
-- map via giantbomb id for session 454
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '454' AND game_id = '82';
-- map via giantbomb id for session 455
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '455' AND game_id = '85';
-- map via giantbomb id for session 456
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '456' AND game_id = '85';
-- map via giantbomb id for session 457
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '457' AND game_id = '85';
-- map via giantbomb id for session 458
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '458' AND game_id = '85';
-- map via giantbomb id for session 459
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '459' AND game_id = '85';
-- map via giantbomb id for session 460
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '460' AND game_id = '85';
-- map via giantbomb id for session 461
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '461' AND game_id = '85';
-- map via giantbomb id for session 462
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '462' AND game_id = '85';
-- map via giantbomb id for session 463
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '463' AND game_id = '85';
-- map via giantbomb id for session 464
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '464' AND game_id = '85';
-- map via giantbomb id for session 465
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '465' AND game_id = '85';
-- map via giantbomb id for session 466
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '466' AND game_id = '82';
-- map via giantbomb id for session 467
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '467' AND game_id = '85';
-- map via giantbomb id for session 468
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '468' AND game_id = '82';
-- map via giantbomb id for session 469
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '469' AND game_id = '85';
-- map via giantbomb id for session 470
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '470' AND game_id = '82';
-- map via giantbomb id for session 471
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '471' AND game_id = '82';
-- map via giantbomb id for session 472
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52278' LIMIT 1) WHERE session_id = '472' AND game_id = '87';
-- map via giantbomb id for session 473
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59383' LIMIT 1) WHERE session_id = '473' AND game_id = '85';
-- map via giantbomb id for session 474
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '474' AND game_id = '82';
-- map via giantbomb id for session 475
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '475' AND game_id = '82';
-- map via giantbomb id for session 476
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52278' LIMIT 1) WHERE session_id = '476' AND game_id = '87';
-- map via giantbomb id for session 477
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '477' AND game_id = '82';
-- map via giantbomb id for session 478
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '478' AND game_id = '82';
-- map via giantbomb id for session 479
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52278' LIMIT 1) WHERE session_id = '479' AND game_id = '87';
-- map via giantbomb id for session 480
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '43940' LIMIT 1) WHERE session_id = '480' AND game_id = '88';
-- map via giantbomb id for session 481
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '43940' LIMIT 1) WHERE session_id = '481' AND game_id = '88';
-- map via giantbomb id for session 482
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '482' AND game_id = '82';
-- map via giantbomb id for session 483
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '483' AND game_id = '82';
-- map via giantbomb id for session 484
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '484' AND game_id = '89';
-- map via giantbomb id for session 485
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '485' AND game_id = '89';
-- map via giantbomb id for session 486
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '486' AND game_id = '89';
-- map via giantbomb id for session 487
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '487' AND game_id = '82';
-- map via giantbomb id for session 488
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '488' AND game_id = '89';
-- map via giantbomb id for session 489
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '489' AND game_id = '89';
-- map via giantbomb id for session 490
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '490' AND game_id = '89';
-- map via giantbomb id for session 491
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '491' AND game_id = '82';
-- map via giantbomb id for session 492
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '492' AND game_id = '89';
-- map via giantbomb id for session 493
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '493' AND game_id = '89';
-- map via giantbomb id for session 494
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '494' AND game_id = '82';
-- map via giantbomb id for session 495
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '495' AND game_id = '39';
-- map via giantbomb id for session 496
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '496' AND game_id = '82';
-- map via giantbomb id for session 497
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '497' AND game_id = '89';
-- map via giantbomb id for session 498
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '498' AND game_id = '89';
-- map via giantbomb id for session 499
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '499' AND game_id = '89';
-- map via giantbomb id for session 500
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '500' AND game_id = '82';
-- map via giantbomb id for session 501
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71299' LIMIT 1) WHERE session_id = '501' AND game_id = '89';
-- map via giantbomb id for session 502
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '502' AND game_id = '82';
-- map via giantbomb id for session 503
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '503' AND game_id = '82';
-- map via giantbomb id for session 504
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '504' AND game_id = '90';
-- map via giantbomb id for session 505
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '505' AND game_id = '90';
-- map via giantbomb id for session 506
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '506' AND game_id = '90';
-- map via giantbomb id for session 507
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '507' AND game_id = '82';
-- map via giantbomb id for session 508
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '508' AND game_id = '82';
-- map via giantbomb id for session 509
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '509' AND game_id = '82';
-- map via giantbomb id for session 510
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '510' AND game_id = '82';
-- map via giantbomb id for session 511
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '511' AND game_id = '90';
-- map via giantbomb id for session 512
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '512' AND game_id = '90';
-- map via giantbomb id for session 513
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '513' AND game_id = '90';
-- map via giantbomb id for session 514
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '514' AND game_id = '90';
-- map via giantbomb id for session 515
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '515' AND game_id = '82';
-- map via giantbomb id for session 516
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '516' AND game_id = '82';
-- map via giantbomb id for session 517
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '517' AND game_id = '82';
-- map via giantbomb id for session 518
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '518' AND game_id = '90';
-- map via giantbomb id for session 519
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '519' AND game_id = '82';
-- map via giantbomb id for session 520
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '520' AND game_id = '90';
-- map via giantbomb id for session 521
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '521' AND game_id = '82';
-- map via giantbomb id for session 522
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '522' AND game_id = '90';
-- map via giantbomb id for session 523
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '523' AND game_id = '82';
-- map via giantbomb id for session 524
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '524' AND game_id = '90';
-- map via giantbomb id for session 525
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '525' AND game_id = '82';
-- map via giantbomb id for session 526
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '526' AND game_id = '82';
-- map via giantbomb id for session 527
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '527' AND game_id = '90';
-- map via giantbomb id for session 528
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '528' AND game_id = '90';
-- map via giantbomb id for session 529
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '529' AND game_id = '90';
-- map via giantbomb id for session 530
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '530' AND game_id = '90';
-- map via giantbomb id for session 531
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '531' AND game_id = '90';
-- map via giantbomb id for session 532
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '532' AND game_id = '90';
-- map via giantbomb id for session 533
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66000' LIMIT 1) WHERE session_id = '533' AND game_id = '90';
-- map via giantbomb id for session 534
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '534' AND game_id = '91';
-- map via giantbomb id for session 535
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '535' AND game_id = '91';
-- map via giantbomb id for session 536
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '536' AND game_id = '91';
-- map via giantbomb id for session 537
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '537' AND game_id = '91';
-- map via giantbomb id for session 538
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '538' AND game_id = '91';
-- map via giantbomb id for session 539
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '539' AND game_id = '82';
-- map via giantbomb id for session 540
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '540' AND game_id = '91';
-- map via giantbomb id for session 541
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '541' AND game_id = '91';
-- map via giantbomb id for session 542
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '542' AND game_id = '91';
-- map via giantbomb id for session 543
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '543' AND game_id = '91';
-- map via giantbomb id for session 544
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '544' AND game_id = '91';
-- map via giantbomb id for session 545
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '545' AND game_id = '78';
-- map via giantbomb id for session 546
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '546' AND game_id = '78';
-- map via giantbomb id for session 547
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '547' AND game_id = '78';
-- map via giantbomb id for session 548
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '548' AND game_id = '91';
-- map via giantbomb id for session 549
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '549' AND game_id = '91';
-- map via giantbomb id for session 550
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '550' AND game_id = '78';
-- map via giantbomb id for session 551
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '551' AND game_id = '91';
-- map via giantbomb id for session 552
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '552' AND game_id = '91';
-- map via giantbomb id for session 553
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '553' AND game_id = '78';
-- map via giantbomb id for session 554
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '554' AND game_id = '78';
-- map via giantbomb id for session 555
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '555' AND game_id = '91';
-- map via giantbomb id for session 556
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '556' AND game_id = '91';
-- map via giantbomb id for session 557
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '557' AND game_id = '78';
-- map via giantbomb id for session 558
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '558' AND game_id = '91';
-- map via giantbomb id for session 559
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '559' AND game_id = '78';
-- map via giantbomb id for session 560
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '560' AND game_id = '91';
-- map via giantbomb id for session 561
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '561' AND game_id = '91';
-- map via giantbomb id for session 562
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '562' AND game_id = '78';
-- map via giantbomb id for session 563
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '563' AND game_id = '91';
-- map via giantbomb id for session 564
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '564' AND game_id = '91';
-- map via giantbomb id for session 565
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '565' AND game_id = '91';
-- map via giantbomb id for session 566
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '566' AND game_id = '78';
-- map via giantbomb id for session 567
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '567' AND game_id = '91';
-- map via giantbomb id for session 568
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '568' AND game_id = '91';
-- map via giantbomb id for session 569
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '569' AND game_id = '91';
-- map via giantbomb id for session 570
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '570' AND game_id = '91';
-- map via giantbomb id for session 571
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '571' AND game_id = '91';
-- map via giantbomb id for session 572
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '572' AND game_id = '91';
-- map via giantbomb id for session 573
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '573' AND game_id = '91';
-- map via giantbomb id for session 574
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '574' AND game_id = '91';
-- map via giantbomb id for session 575
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '575' AND game_id = '91';
-- map via giantbomb id for session 576
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68907' LIMIT 1) WHERE session_id = '576' AND game_id = '91';
-- map via giantbomb id for session 577
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49344' LIMIT 1) WHERE session_id = '577' AND game_id = '92';
-- map via giantbomb id for session 578
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '578' AND game_id = '82';
-- map via giantbomb id for session 579
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49344' LIMIT 1) WHERE session_id = '579' AND game_id = '92';
-- map via giantbomb id for session 580
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49344' LIMIT 1) WHERE session_id = '580' AND game_id = '92';
-- map via giantbomb id for session 581
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '581' AND game_id = '82';
-- map via giantbomb id for session 582
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '582' AND game_id = '82';
-- map via giantbomb id for session 583
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49344' LIMIT 1) WHERE session_id = '583' AND game_id = '92';
-- map via giantbomb id for session 584
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67074' LIMIT 1) WHERE session_id = '584' AND game_id = '93';
-- map via giantbomb id for session 585
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '585' AND game_id = '82';
-- map via giantbomb id for session 586
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49344' LIMIT 1) WHERE session_id = '586' AND game_id = '92';
-- map via giantbomb id for session 587
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '587' AND game_id = '82';
-- map via giantbomb id for session 588
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '588' AND game_id = '82';
-- map via giantbomb id for session 589
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '589' AND game_id = '82';
-- map via giantbomb id for session 590
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49344' LIMIT 1) WHERE session_id = '590' AND game_id = '92';
-- map via giantbomb id for session 591
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49344' LIMIT 1) WHERE session_id = '591' AND game_id = '92';
-- map via giantbomb id for session 592
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49344' LIMIT 1) WHERE session_id = '592' AND game_id = '92';
-- map via giantbomb id for session 593
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49344' LIMIT 1) WHERE session_id = '593' AND game_id = '92';
-- map via giantbomb id for session 594
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49344' LIMIT 1) WHERE session_id = '594' AND game_id = '92';
-- map via giantbomb id for session 595
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46573' LIMIT 1) WHERE session_id = '595' AND game_id = '94';
-- map via giantbomb id for session 596
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46573' LIMIT 1) WHERE session_id = '596' AND game_id = '94';
-- map via giantbomb id for session 597
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '597' AND game_id = '82';
-- map via giantbomb id for session 598
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46573' LIMIT 1) WHERE session_id = '598' AND game_id = '94';
-- map via giantbomb id for session 599
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48329' LIMIT 1) WHERE session_id = '599' AND game_id = '95';
-- map via giantbomb id for session 600
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68948' LIMIT 1) WHERE session_id = '600' AND game_id = '57';
-- map via giantbomb id for session 601
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '601' AND game_id = '9';
-- map via giantbomb id for session 602
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '602' AND game_id = '82';
-- map via giantbomb id for session 603
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '603' AND game_id = '82';
-- map via giantbomb id for session 604
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41082' LIMIT 1) WHERE session_id = '604' AND game_id = '96';
-- map via giantbomb id for session 605
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '605' AND game_id = '82';
-- map via giantbomb id for session 606
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '606' AND game_id = '1';
-- map via giantbomb id for session 607
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68948' LIMIT 1) WHERE session_id = '607' AND game_id = '57';
-- map via giantbomb id for session 608
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '608' AND game_id = '9';
-- map via giantbomb id for session 609
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54225' LIMIT 1) WHERE session_id = '609' AND game_id = '97';
-- map via giantbomb id for session 610
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '41082' LIMIT 1) WHERE session_id = '610' AND game_id = '96';
-- map via giantbomb id for session 611
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '611' AND game_id = '98';
-- map via giantbomb id for session 612
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '612' AND game_id = '98';
-- map via giantbomb id for session 613
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '613' AND game_id = '98';
-- map via giantbomb id for session 614
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '614' AND game_id = '82';
-- map via giantbomb id for session 615
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '615' AND game_id = '98';
-- map via giantbomb id for session 616
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '616' AND game_id = '82';
-- map via giantbomb id for session 617
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '617' AND game_id = '98';
-- map via giantbomb id for session 618
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '618' AND game_id = '82';
-- map via giantbomb id for session 619
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '619' AND game_id = '98';
-- map via giantbomb id for session 620
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '620' AND game_id = '98';
-- map via giantbomb id for session 621
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '621' AND game_id = '9';
-- map via giantbomb id for session 622
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '622' AND game_id = '98';
-- map via giantbomb id for session 623
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '623' AND game_id = '98';
-- map via giantbomb id for session 624
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '624' AND game_id = '98';
-- map via giantbomb id for session 625
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '625' AND game_id = '98';
-- map via giantbomb id for session 626
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '626' AND game_id = '82';
-- map via giantbomb id for session 627
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '627' AND game_id = '98';
-- map via giantbomb id for session 628
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '628' AND game_id = '98';
-- map via giantbomb id for session 629
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '629' AND game_id = '98';
-- map via giantbomb id for session 630
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '630' AND game_id = '82';
-- map via giantbomb id for session 631
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '631' AND game_id = '98';
-- map via giantbomb id for session 632
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '632' AND game_id = '98';
-- map via giantbomb id for session 633
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '633' AND game_id = '98';
-- map via giantbomb id for session 634
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '634' AND game_id = '98';
-- map via giantbomb id for session 635
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '635' AND game_id = '98';
-- map via giantbomb id for session 636
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '636' AND game_id = '98';
-- map via giantbomb id for session 637
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '637' AND game_id = '98';
-- map via giantbomb id for session 638
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '638' AND game_id = '98';
-- map via giantbomb id for session 639
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '639' AND game_id = '82';
-- map via giantbomb id for session 640
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '640' AND game_id = '82';
-- map via giantbomb id for session 641
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '641' AND game_id = '82';
-- map via giantbomb id for session 642
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '642' AND game_id = '98';
-- map via giantbomb id for session 643
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '643' AND game_id = '82';
-- map via giantbomb id for session 644
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '644' AND game_id = '98';
-- map via giantbomb id for session 645
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '645' AND game_id = '98';
-- map via giantbomb id for session 646
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '646' AND game_id = '82';
-- map via giantbomb id for session 647
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '647' AND game_id = '98';
-- map via giantbomb id for session 648
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '648' AND game_id = '98';
-- map via giantbomb id for session 649
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '649' AND game_id = '82';
-- map via giantbomb id for session 650
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '650' AND game_id = '98';
-- map via giantbomb id for session 651
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '651' AND game_id = '98';
-- map via giantbomb id for session 652
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '652' AND game_id = '82';
-- map via giantbomb id for session 653
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '653' AND game_id = '98';
-- map via giantbomb id for session 654
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '654' AND game_id = '82';
-- map via giantbomb id for session 655
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '655' AND game_id = '98';
-- map via giantbomb id for session 656
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '656' AND game_id = '98';
-- map via giantbomb id for session 657
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '657' AND game_id = '98';
-- map via giantbomb id for session 658
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '658' AND game_id = '98';
-- map via giantbomb id for session 659
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '659' AND game_id = '98';
-- map via giantbomb id for session 660
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '660' AND game_id = '82';
-- map via giantbomb id for session 661
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '661' AND game_id = '82';
-- map via giantbomb id for session 662
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '662' AND game_id = '98';
-- map via giantbomb id for session 663
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '663' AND game_id = '98';
-- map via giantbomb id for session 664
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '664' AND game_id = '98';
-- map via giantbomb id for session 665
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '665' AND game_id = '98';
-- map via giantbomb id for session 666
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '666' AND game_id = '82';
-- map via giantbomb id for session 667
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '667' AND game_id = '82';
-- map via giantbomb id for session 668
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '668' AND game_id = '98';
-- map via giantbomb id for session 669
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '669' AND game_id = '82';
-- map via giantbomb id for session 670
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '670' AND game_id = '99';
-- map via giantbomb id for session 671
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '671' AND game_id = '99';
-- map via giantbomb id for session 672
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '672' AND game_id = '82';
-- map via giantbomb id for session 673
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '673' AND game_id = '99';
-- map via giantbomb id for session 674
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '674' AND game_id = '98';
-- map via giantbomb id for session 675
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59938' LIMIT 1) WHERE session_id = '675' AND game_id = '98';
-- map via giantbomb id for session 676
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '676' AND game_id = '99';
-- map via giantbomb id for session 677
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '677' AND game_id = '99';
-- map via giantbomb id for session 678
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77550' LIMIT 1) WHERE session_id = '678' AND game_id = '100';
-- map via giantbomb id for session 679
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '679' AND game_id = '99';
-- map via giantbomb id for session 680
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '65427' LIMIT 1) WHERE session_id = '680' AND game_id = '101';
-- map via giantbomb id for session 681
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '681' AND game_id = '82';
-- map via giantbomb id for session 682
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77550' LIMIT 1) WHERE session_id = '682' AND game_id = '100';
-- map via giantbomb id for session 683
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '683' AND game_id = '99';
-- map via giantbomb id for session 684
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '684' AND game_id = '99';
-- map via giantbomb id for session 685
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '685' AND game_id = '82';
-- map via giantbomb id for session 686
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '686' AND game_id = '82';
-- map via giantbomb id for session 687
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '687' AND game_id = '99';
-- map via giantbomb id for session 688
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '688' AND game_id = '82';
-- map via giantbomb id for session 689
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '65427' LIMIT 1) WHERE session_id = '689' AND game_id = '101';
-- map via giantbomb id for session 690
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '690' AND game_id = '99';
-- map via giantbomb id for session 691
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '691' AND game_id = '82';
-- map via giantbomb id for session 692
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '692' AND game_id = '99';
-- map via giantbomb id for session 693
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '693' AND game_id = '9';
-- map via giantbomb id for session 694
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '694' AND game_id = '99';
-- map via giantbomb id for session 695
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '695' AND game_id = '82';
-- map via giantbomb id for session 696
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '696' AND game_id = '99';
-- map via giantbomb id for session 697
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '697' AND game_id = '82';
-- map via giantbomb id for session 698
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '698' AND game_id = '99';
-- map via giantbomb id for session 699
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '699' AND game_id = '82';
-- map via giantbomb id for session 700
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77550' LIMIT 1) WHERE session_id = '700' AND game_id = '100';
-- map via giantbomb id for session 701
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '65427' LIMIT 1) WHERE session_id = '701' AND game_id = '101';
-- map via giantbomb id for session 702
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '702' AND game_id = '99';
-- map via giantbomb id for session 703
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77550' LIMIT 1) WHERE session_id = '703' AND game_id = '100';
-- map via giantbomb id for session 704
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '704' AND game_id = '99';
-- map via giantbomb id for session 705
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '705' AND game_id = '82';
-- map via giantbomb id for session 706
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '706' AND game_id = '82';
-- map via giantbomb id for session 707
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '707' AND game_id = '99';
-- map via giantbomb id for session 708
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '708' AND game_id = '99';
-- map via giantbomb id for session 709
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '709' AND game_id = '82';
-- map via giantbomb id for session 710
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '710' AND game_id = '99';
-- map via giantbomb id for session 711
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '711' AND game_id = '82';
-- map via giantbomb id for session 712
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '712' AND game_id = '99';
-- map via giantbomb id for session 713
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '713' AND game_id = '82';
-- map via giantbomb id for session 714
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '714' AND game_id = '99';
-- map via giantbomb id for session 715
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '715' AND game_id = '82';
-- map via giantbomb id for session 716
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '716' AND game_id = '102';
-- map via giantbomb id for session 717
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '717' AND game_id = '99';
-- map via giantbomb id for session 718
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77550' LIMIT 1) WHERE session_id = '718' AND game_id = '100';
-- map via giantbomb id for session 719
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '719' AND game_id = '99';
-- map via giantbomb id for session 720
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '720' AND game_id = '99';
-- map via giantbomb id for session 721
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '721' AND game_id = '9';
-- map via giantbomb id for session 722
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '722' AND game_id = '102';
-- map via giantbomb id for session 723
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '723' AND game_id = '82';
-- map via giantbomb id for session 724
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '724' AND game_id = '99';
-- map via giantbomb id for session 725
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '725' AND game_id = '102';
-- map via giantbomb id for session 726
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '726' AND game_id = '82';
-- map via giantbomb id for session 727
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '727' AND game_id = '102';
-- map via giantbomb id for session 728
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '728' AND game_id = '99';
-- map via giantbomb id for session 729
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '729' AND game_id = '102';
-- map via giantbomb id for session 730
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '730' AND game_id = '39';
-- map via giantbomb id for session 731
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '731' AND game_id = '9';
-- map via giantbomb id for session 732
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '732' AND game_id = '99';
-- map via giantbomb id for session 733
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '733' AND game_id = '82';
-- map via giantbomb id for session 734
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '734' AND game_id = '102';
-- map via giantbomb id for session 735
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '735' AND game_id = '82';
-- map via giantbomb id for session 736
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '736' AND game_id = '99';
-- map via giantbomb id for session 737
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '737' AND game_id = '99';
-- map via giantbomb id for session 738
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '738' AND game_id = '82';
-- map via giantbomb id for session 739
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '739' AND game_id = '39';
-- map via giantbomb id for session 740
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '740' AND game_id = '99';
-- map via giantbomb id for session 741
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '741' AND game_id = '99';
-- map via giantbomb id for session 742
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '742' AND game_id = '102';
-- map via giantbomb id for session 743
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '743' AND game_id = '82';
-- map via giantbomb id for session 744
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '744' AND game_id = '99';
-- map via giantbomb id for session 745
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '745' AND game_id = '82';
-- map via giantbomb id for session 746
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '746' AND game_id = '102';
-- map via giantbomb id for session 747
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '747' AND game_id = '99';
-- map via giantbomb id for session 748
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '748' AND game_id = '9';
-- map via giantbomb id for session 749
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '749' AND game_id = '99';
-- map via giantbomb id for session 750
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '750' AND game_id = '99';
-- map via giantbomb id for session 751
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '751' AND game_id = '82';
-- map via giantbomb id for session 752
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '752' AND game_id = '102';
-- map via giantbomb id for session 753
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '753' AND game_id = '102';
-- map via giantbomb id for session 754
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '754' AND game_id = '99';
-- map via giantbomb id for session 755
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '755' AND game_id = '39';
-- map via giantbomb id for session 756
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77550' LIMIT 1) WHERE session_id = '756' AND game_id = '100';
-- map via giantbomb id for session 757
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59902' LIMIT 1) WHERE session_id = '757' AND game_id = '102';
-- map via giantbomb id for session 758
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '758' AND game_id = '78';
-- map via giantbomb id for session 759
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '759' AND game_id = '9';
-- map via giantbomb id for session 760
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '760' AND game_id = '99';
-- map via giantbomb id for session 761
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '761' AND game_id = '82';
-- map via giantbomb id for session 762
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '762' AND game_id = '99';
-- map via giantbomb id for session 763
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '763' AND game_id = '9';
-- map via giantbomb id for session 764
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '764' AND game_id = '99';
-- map via giantbomb id for session 765
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '765' AND game_id = '82';
-- map via giantbomb id for session 766
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '766' AND game_id = '99';
-- map via giantbomb id for session 767
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71298' LIMIT 1) WHERE session_id = '767' AND game_id = '103';
-- map via giantbomb id for session 768
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '768' AND game_id = '99';
-- map via giantbomb id for session 769
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '769' AND game_id = '82';
-- map via giantbomb id for session 770
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '770' AND game_id = '99';
-- map via giantbomb id for session 771
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '771' AND game_id = '99';
-- map via giantbomb id for session 772
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '772' AND game_id = '99';
-- map via giantbomb id for session 773
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '773' AND game_id = '82';
-- map via giantbomb id for session 774
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '774' AND game_id = '99';
-- map via giantbomb id for session 775
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71298' LIMIT 1) WHERE session_id = '775' AND game_id = '103';
-- map via giantbomb id for session 776
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '776' AND game_id = '99';
-- map via giantbomb id for session 777
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '777' AND game_id = '99';
-- map via giantbomb id for session 778
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '778' AND game_id = '82';
-- map via giantbomb id for session 779
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '779' AND game_id = '39';
-- map via giantbomb id for session 780
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '780' AND game_id = '99';
-- map via giantbomb id for session 781
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '781' AND game_id = '39';
-- map via giantbomb id for session 782
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '782' AND game_id = '99';
-- map via giantbomb id for session 783
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '783' AND game_id = '99';
-- map via giantbomb id for session 784
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '784' AND game_id = '9';
-- map via giantbomb id for session 785
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '785' AND game_id = '82';
-- map via giantbomb id for session 786
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '786' AND game_id = '99';
-- map via giantbomb id for session 787
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '787' AND game_id = '99';
-- map via giantbomb id for session 788
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '788' AND game_id = '99';
-- map via giantbomb id for session 789
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '789' AND game_id = '99';
-- map via giantbomb id for session 790
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '790' AND game_id = '82';
-- map via giantbomb id for session 791
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '791' AND game_id = '99';
-- map via giantbomb id for session 792
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '792' AND game_id = '82';
-- map via giantbomb id for session 793
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '793' AND game_id = '99';
-- map via giantbomb id for session 794
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '794' AND game_id = '99';
-- map via giantbomb id for session 795
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '795' AND game_id = '82';
-- map via giantbomb id for session 796
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '796' AND game_id = '99';
-- map via giantbomb id for session 797
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '797' AND game_id = '104';
-- map via giantbomb id for session 798
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '798' AND game_id = '99';
-- map via giantbomb id for session 799
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '799' AND game_id = '82';
-- map via giantbomb id for session 800
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '800' AND game_id = '99';
-- map via giantbomb id for session 801
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '801' AND game_id = '104';
-- map via giantbomb id for session 802
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '802' AND game_id = '99';
-- map via giantbomb id for session 803
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '803' AND game_id = '82';
-- map via giantbomb id for session 804
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '804' AND game_id = '104';
-- map via giantbomb id for session 805
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '805' AND game_id = '99';
-- map via giantbomb id for session 806
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '806' AND game_id = '99';
-- map via giantbomb id for session 807
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '807' AND game_id = '104';
-- map via giantbomb id for session 808
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '808' AND game_id = '99';
-- map via giantbomb id for session 809
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '809' AND game_id = '9';
-- map via giantbomb id for session 810
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '810' AND game_id = '99';
-- map via giantbomb id for session 811
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '811' AND game_id = '99';
-- map via giantbomb id for session 812
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77550' LIMIT 1) WHERE session_id = '812' AND game_id = '100';
-- map via giantbomb id for session 813
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '813' AND game_id = '104';
-- map via giantbomb id for session 814
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '814' AND game_id = '99';
-- map via giantbomb id for session 815
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '815' AND game_id = '104';
-- map via giantbomb id for session 816
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '816' AND game_id = '99';
-- map via giantbomb id for session 817
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '817' AND game_id = '82';
-- map via giantbomb id for session 818
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '818' AND game_id = '99';
-- map via giantbomb id for session 819
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '819' AND game_id = '104';
-- map via giantbomb id for session 820
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '820' AND game_id = '99';
-- map via giantbomb id for session 821
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '821' AND game_id = '82';
-- map via giantbomb id for session 822
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '822' AND game_id = '104';
-- map via giantbomb id for session 823
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '823' AND game_id = '99';
-- map via giantbomb id for session 824
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '824' AND game_id = '99';
-- map via giantbomb id for session 825
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '825' AND game_id = '82';
-- map via giantbomb id for session 826
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '826' AND game_id = '39';
-- map via giantbomb id for session 827
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '827' AND game_id = '99';
-- map via giantbomb id for session 828
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '828' AND game_id = '104';
-- map via giantbomb id for session 829
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '829' AND game_id = '99';
-- map via giantbomb id for session 830
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '830' AND game_id = '82';
-- map via giantbomb id for session 831
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '831' AND game_id = '99';
-- map via giantbomb id for session 832
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '832' AND game_id = '104';
-- map via giantbomb id for session 833
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '833' AND game_id = '99';
-- map via giantbomb id for session 834
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '834' AND game_id = '104';
-- map via giantbomb id for session 835
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '835' AND game_id = '99';
-- map via giantbomb id for session 836
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '836' AND game_id = '39';
-- map via giantbomb id for session 837
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '837' AND game_id = '99';
-- map via giantbomb id for session 838
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '838' AND game_id = '82';
-- map via giantbomb id for session 839
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '839' AND game_id = '104';
-- map via giantbomb id for session 840
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '840' AND game_id = '99';
-- map via giantbomb id for session 841
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '841' AND game_id = '99';
-- map via giantbomb id for session 842
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '842' AND game_id = '99';
-- map via giantbomb id for session 843
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '843' AND game_id = '82';
-- map via giantbomb id for session 844
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '844' AND game_id = '104';
-- map via giantbomb id for session 845
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '845' AND game_id = '99';
-- map via giantbomb id for session 846
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '846' AND game_id = '99';
-- map via giantbomb id for session 847
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '847' AND game_id = '82';
-- map via giantbomb id for session 848
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '848' AND game_id = '99';
-- map via giantbomb id for session 849
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '849' AND game_id = '99';
-- map via giantbomb id for session 850
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '850' AND game_id = '99';
-- map via giantbomb id for session 851
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '851' AND game_id = '82';
-- map via giantbomb id for session 852
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '852' AND game_id = '99';
-- map via giantbomb id for session 853
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '853' AND game_id = '104';
-- map via giantbomb id for session 854
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '854' AND game_id = '99';
-- map via giantbomb id for session 855
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '855' AND game_id = '82';
-- map via giantbomb id for session 856
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '856' AND game_id = '99';
-- map via giantbomb id for session 857
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '857' AND game_id = '104';
-- map via giantbomb id for session 858
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '858' AND game_id = '99';
-- map via giantbomb id for session 859
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '859' AND game_id = '99';
-- map via giantbomb id for session 860
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '860' AND game_id = '99';
-- map via giantbomb id for session 861
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '861' AND game_id = '99';
-- map via giantbomb id for session 862
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77550' LIMIT 1) WHERE session_id = '862' AND game_id = '100';
-- map via giantbomb id for session 863
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '863' AND game_id = '82';
-- map via giantbomb id for session 864
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '864' AND game_id = '99';
-- map via giantbomb id for session 865
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '865' AND game_id = '99';
-- map via giantbomb id for session 866
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '866' AND game_id = '99';
-- map via giantbomb id for session 867
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '867' AND game_id = '82';
-- map via giantbomb id for session 868
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '868' AND game_id = '99';
-- map via giantbomb id for session 869
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '869' AND game_id = '99';
-- map via giantbomb id for session 870
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '870' AND game_id = '82';
-- map via giantbomb id for session 871
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '871' AND game_id = '99';
-- map via giantbomb id for session 872
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '872' AND game_id = '104';
-- map via giantbomb id for session 873
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '873' AND game_id = '82';
-- map via giantbomb id for session 874
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '874' AND game_id = '99';
-- map via giantbomb id for session 875
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '875' AND game_id = '104';
-- map via giantbomb id for session 876
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '876' AND game_id = '99';
-- map via giantbomb id for session 877
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '877' AND game_id = '99';
-- map via giantbomb id for session 878
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '878' AND game_id = '82';
-- map via giantbomb id for session 879
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '879' AND game_id = '104';
-- map via giantbomb id for session 880
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '880' AND game_id = '99';
-- map via giantbomb id for session 881
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '881' AND game_id = '82';
-- map via giantbomb id for session 882
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '882' AND game_id = '99';
-- map via giantbomb id for session 883
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '883' AND game_id = '99';
-- map via giantbomb id for session 884
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '884' AND game_id = '99';
-- map via giantbomb id for session 885
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '885' AND game_id = '99';
-- map via giantbomb id for session 886
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '886' AND game_id = '99';
-- map via giantbomb id for session 887
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '887' AND game_id = '104';
-- map via giantbomb id for session 888
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '888' AND game_id = '82';
-- map via giantbomb id for session 889
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '889' AND game_id = '99';
-- map via giantbomb id for session 890
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '890' AND game_id = '82';
-- map via giantbomb id for session 891
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '891' AND game_id = '99';
-- map via giantbomb id for session 892
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '892' AND game_id = '99';
-- map via giantbomb id for session 893
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '893' AND game_id = '82';
-- map via giantbomb id for session 894
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '894' AND game_id = '82';
-- map via giantbomb id for session 895
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '895' AND game_id = '99';
-- map via giantbomb id for session 896
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '896' AND game_id = '104';
-- map via giantbomb id for session 897
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '897' AND game_id = '99';
-- map via giantbomb id for session 898
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '898' AND game_id = '82';
-- map via giantbomb id for session 899
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '899' AND game_id = '99';
-- map via giantbomb id for session 900
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '900' AND game_id = '99';
-- map via giantbomb id for session 901
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '901' AND game_id = '82';
-- map via giantbomb id for session 902
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '902' AND game_id = '82';
-- map via giantbomb id for session 903
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '903' AND game_id = '105';
-- map via giantbomb id for session 904
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '904' AND game_id = '99';
-- map via giantbomb id for session 905
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '905' AND game_id = '99';
-- map via giantbomb id for session 906
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '906' AND game_id = '106';
-- map via giantbomb id for session 907
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '907' AND game_id = '99';
-- map via giantbomb id for session 908
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '908' AND game_id = '105';
-- map via giantbomb id for session 909
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '909' AND game_id = '99';
-- map via giantbomb id for session 910
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '910' AND game_id = '106';
-- map via giantbomb id for session 911
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '911' AND game_id = '105';
-- map via giantbomb id for session 912
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '912' AND game_id = '99';
-- map via giantbomb id for session 913
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '913' AND game_id = '99';
-- map via giantbomb id for session 914
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '914' AND game_id = '105';
-- map via giantbomb id for session 915
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '915' AND game_id = '106';
-- map via giantbomb id for session 916
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '916' AND game_id = '106';
-- map via giantbomb id for session 917
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '917' AND game_id = '82';
-- map via giantbomb id for session 918
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '918' AND game_id = '105';
-- map via giantbomb id for session 919
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '919' AND game_id = '99';
-- map via giantbomb id for session 920
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '920' AND game_id = '82';
-- map via giantbomb id for session 921
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '921' AND game_id = '82';
-- map via giantbomb id for session 922
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '922' AND game_id = '105';
-- map via giantbomb id for session 923
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '923' AND game_id = '106';
-- map via giantbomb id for session 924
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '924' AND game_id = '99';
-- map via giantbomb id for session 925
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '925' AND game_id = '106';
-- map via giantbomb id for session 926
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '926' AND game_id = '99';
-- map via giantbomb id for session 927
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '927' AND game_id = '106';
-- map via giantbomb id for session 928
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '928' AND game_id = '105';
-- map via giantbomb id for session 929
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '929' AND game_id = '99';
-- map via giantbomb id for session 930
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '930' AND game_id = '82';
-- map via giantbomb id for session 931
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '931' AND game_id = '105';
-- map via giantbomb id for session 932
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '932' AND game_id = '99';
-- map via giantbomb id for session 933
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '933' AND game_id = '106';
-- map via giantbomb id for session 934
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '934' AND game_id = '82';
-- map via giantbomb id for session 935
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '935' AND game_id = '105';
-- map via giantbomb id for session 936
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '936' AND game_id = '99';
-- map via giantbomb id for session 937
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '937' AND game_id = '99';
-- map via giantbomb id for session 938
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '938' AND game_id = '99';
-- map via giantbomb id for session 939
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '939' AND game_id = '99';
-- map via giantbomb id for session 940
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '940' AND game_id = '99';
-- map via giantbomb id for session 941
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '941' AND game_id = '99';
-- map via giantbomb id for session 942
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '942' AND game_id = '99';
-- map via giantbomb id for session 943
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '943' AND game_id = '82';
-- map via giantbomb id for session 944
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '944' AND game_id = '105';
-- map via giantbomb id for session 945
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '945' AND game_id = '99';
-- map via giantbomb id for session 946
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '946' AND game_id = '82';
-- map via giantbomb id for session 947
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '947' AND game_id = '99';
-- map via giantbomb id for session 948
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '948' AND game_id = '105';
-- map via giantbomb id for session 949
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '949' AND game_id = '99';
-- map via giantbomb id for session 950
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '950' AND game_id = '82';
-- map via giantbomb id for session 951
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '951' AND game_id = '105';
-- map via giantbomb id for session 952
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '952' AND game_id = '99';
-- map via giantbomb id for session 953
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '953' AND game_id = '82';
-- map via giantbomb id for session 954
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '954' AND game_id = '99';
-- map via giantbomb id for session 955
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '955' AND game_id = '99';
-- map via giantbomb id for session 956
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '956' AND game_id = '105';
-- map via giantbomb id for session 957
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '957' AND game_id = '105';
-- map via giantbomb id for session 958
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '958' AND game_id = '99';
-- map via giantbomb id for session 959
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '959' AND game_id = '105';
-- map via giantbomb id for session 960
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '960' AND game_id = '105';
-- map via giantbomb id for session 961
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '961' AND game_id = '105';
-- map via giantbomb id for session 962
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '962' AND game_id = '99';
-- map via giantbomb id for session 963
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '963' AND game_id = '82';
-- map via giantbomb id for session 964
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '964' AND game_id = '82';
-- map via giantbomb id for session 965
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '965' AND game_id = '82';
-- map via giantbomb id for session 966
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '966' AND game_id = '105';
-- map via giantbomb id for session 967
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '967' AND game_id = '99';
-- map via giantbomb id for session 968
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '968' AND game_id = '82';
-- map via giantbomb id for session 969
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '969' AND game_id = '105';
-- map via giantbomb id for session 970
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '970' AND game_id = '105';
-- map via giantbomb id for session 971
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '971' AND game_id = '99';
-- map via giantbomb id for session 972
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '972' AND game_id = '82';
-- map via giantbomb id for session 973
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '973' AND game_id = '105';
-- map via giantbomb id for session 974
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '974' AND game_id = '105';
-- map via giantbomb id for session 975
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '975' AND game_id = '99';
-- map via giantbomb id for session 976
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '976' AND game_id = '82';
-- map via giantbomb id for session 977
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '977' AND game_id = '105';
-- map via giantbomb id for session 978
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '978' AND game_id = '105';
-- map via giantbomb id for session 979
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '979' AND game_id = '99';
-- map via giantbomb id for session 980
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '980' AND game_id = '82';
-- map via giantbomb id for session 981
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '981' AND game_id = '105';
-- map via giantbomb id for session 982
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '982' AND game_id = '99';
-- map via giantbomb id for session 983
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '983' AND game_id = '99';
-- map via giantbomb id for session 984
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '984' AND game_id = '105';
-- map via giantbomb id for session 985
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '985' AND game_id = '107';
-- map via giantbomb id for session 986
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '986' AND game_id = '107';
-- map via giantbomb id for session 987
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '987' AND game_id = '99';
-- map via giantbomb id for session 988
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '988' AND game_id = '107';
-- map via giantbomb id for session 989
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '989' AND game_id = '107';
-- map via giantbomb id for session 990
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '990' AND game_id = '105';
-- map via giantbomb id for session 991
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '991' AND game_id = '99';
-- map via giantbomb id for session 992
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '992' AND game_id = '82';
-- map via giantbomb id for session 993
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '993' AND game_id = '105';
-- map via giantbomb id for session 994
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '994' AND game_id = '107';
-- map via giantbomb id for session 995
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '995' AND game_id = '99';
-- map via giantbomb id for session 996
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '996' AND game_id = '82';
-- map via giantbomb id for session 997
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '997' AND game_id = '82';
-- map via giantbomb id for session 998
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '998' AND game_id = '105';
-- map via giantbomb id for session 999
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '999' AND game_id = '107';
-- map via giantbomb id for session 1000
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1000' AND game_id = '99';
-- map via giantbomb id for session 1001
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1001' AND game_id = '82';
-- map via giantbomb id for session 1002
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1002' AND game_id = '105';
-- map via giantbomb id for session 1003
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1003' AND game_id = '107';
-- map via giantbomb id for session 1004
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1004' AND game_id = '99';
-- map via giantbomb id for session 1005
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1005' AND game_id = '82';
-- map via giantbomb id for session 1006
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1006' AND game_id = '82';
-- map via giantbomb id for session 1007
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1007' AND game_id = '105';
-- map via giantbomb id for session 1008
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '1008' AND game_id = '1';
-- map via giantbomb id for session 1009
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1009' AND game_id = '107';
-- map via giantbomb id for session 1010
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1010' AND game_id = '99';
-- map via giantbomb id for session 1011
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1011' AND game_id = '82';
-- map via giantbomb id for session 1012
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1012' AND game_id = '82';
-- map via giantbomb id for session 1013
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53060' LIMIT 1) WHERE session_id = '1013' AND game_id = '104';
-- map via giantbomb id for session 1014
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1014' AND game_id = '99';
-- map via giantbomb id for session 1015
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1015' AND game_id = '107';
-- map via giantbomb id for session 1016
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1016' AND game_id = '99';
-- map via giantbomb id for session 1017
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1017' AND game_id = '105';
-- map via giantbomb id for session 1018
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1018' AND game_id = '99';
-- map via giantbomb id for session 1019
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1019' AND game_id = '107';
-- map via giantbomb id for session 1020
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1020' AND game_id = '99';
-- map via giantbomb id for session 1021
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1021' AND game_id = '107';
-- map via giantbomb id for session 1022
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1022' AND game_id = '99';
-- map via giantbomb id for session 1023
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1023' AND game_id = '82';
-- map via giantbomb id for session 1024
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1024' AND game_id = '82';
-- map via giantbomb id for session 1025
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1025' AND game_id = '105';
-- map via giantbomb id for session 1026
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1026' AND game_id = '107';
-- map via giantbomb id for session 1027
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1027' AND game_id = '99';
-- map via giantbomb id for session 1028
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1028' AND game_id = '82';
-- map via giantbomb id for session 1029
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1029' AND game_id = '82';
-- map via giantbomb id for session 1030
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1030' AND game_id = '105';
-- map via giantbomb id for session 1031
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1031' AND game_id = '82';
-- map via giantbomb id for session 1032
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1032' AND game_id = '107';
-- map via giantbomb id for session 1033
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1033' AND game_id = '99';
-- map via giantbomb id for session 1034
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1034' AND game_id = '82';
-- map via giantbomb id for session 1035
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1035' AND game_id = '99';
-- map via giantbomb id for session 1036
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1036' AND game_id = '82';
-- map via giantbomb id for session 1037
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1037' AND game_id = '99';
-- map via giantbomb id for session 1038
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1038' AND game_id = '105';
-- map via giantbomb id for session 1039
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1039' AND game_id = '99';
-- map via giantbomb id for session 1040
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1040' AND game_id = '82';
-- map via giantbomb id for session 1041
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1041' AND game_id = '99';
-- map via giantbomb id for session 1042
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1042' AND game_id = '105';
-- map via giantbomb id for session 1043
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1043' AND game_id = '107';
-- map via giantbomb id for session 1044
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1044' AND game_id = '107';
-- map via giantbomb id for session 1045
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1045' AND game_id = '99';
-- map via giantbomb id for session 1046
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '1046' AND game_id = '9';
-- map via giantbomb id for session 1047
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1047' AND game_id = '107';
-- map via giantbomb id for session 1048
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1048' AND game_id = '99';
-- map via giantbomb id for session 1049
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1049' AND game_id = '105';
-- map via giantbomb id for session 1050
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1050' AND game_id = '82';
-- map via giantbomb id for session 1051
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1051' AND game_id = '99';
-- map via giantbomb id for session 1052
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '1052' AND game_id = '107';
-- map via giantbomb id for session 1053
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1053' AND game_id = '99';
-- map via giantbomb id for session 1054
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1054' AND game_id = '82';
-- map via giantbomb id for session 1055
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1055' AND game_id = '105';
-- map via giantbomb id for session 1056
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1056' AND game_id = '105';
-- map via giantbomb id for session 1057
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1057' AND game_id = '99';
-- map via giantbomb id for session 1058
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1058' AND game_id = '99';
-- map via giantbomb id for session 1059
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1059' AND game_id = '105';
-- map via giantbomb id for session 1060
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1060' AND game_id = '99';
-- map via giantbomb id for session 1061
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1061' AND game_id = '99';
-- map via giantbomb id for session 1062
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1062' AND game_id = '105';
-- map via giantbomb id for session 1063
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1063' AND game_id = '106';
-- map via giantbomb id for session 1064
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1064' AND game_id = '99';
-- map via giantbomb id for session 1065
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1065' AND game_id = '105';
-- map via giantbomb id for session 1066
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1066' AND game_id = '108';
-- map via giantbomb id for session 1067
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1067' AND game_id = '99';
-- map via giantbomb id for session 1068
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1068' AND game_id = '99';
-- map via giantbomb id for session 1069
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1069' AND game_id = '108';
-- map via giantbomb id for session 1070
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52924' LIMIT 1) WHERE session_id = '1070' AND game_id = '109';
-- map via giantbomb id for session 1071
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52924' LIMIT 1) WHERE session_id = '1071' AND game_id = '109';
-- map via giantbomb id for session 1072
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1072' AND game_id = '99';
-- map via giantbomb id for session 1073
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1073' AND game_id = '99';
-- map via giantbomb id for session 1074
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1074' AND game_id = '108';
-- map via giantbomb id for session 1075
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52924' LIMIT 1) WHERE session_id = '1075' AND game_id = '109';
-- map via giantbomb id for session 1076
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1076' AND game_id = '99';
-- map via giantbomb id for session 1077
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1077' AND game_id = '105';
-- map via giantbomb id for session 1078
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1078' AND game_id = '99';
-- map via giantbomb id for session 1079
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '1079' AND game_id = '105';
-- map via giantbomb id for session 1080
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1080' AND game_id = '99';
-- map via giantbomb id for session 1081
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1081' AND game_id = '99';
-- map via giantbomb id for session 1082
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1082' AND game_id = '99';
-- map via giantbomb id for session 1083
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1083' AND game_id = '99';
-- map via giantbomb id for session 1084
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '75680' LIMIT 1) WHERE session_id = '1084' AND game_id = '110';
-- map via giantbomb id for session 1085
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '75680' LIMIT 1) WHERE session_id = '1085' AND game_id = '110';
-- map via giantbomb id for session 1086
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1086' AND game_id = '108';
-- map via giantbomb id for session 1087
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1087' AND game_id = '99';
-- map via giantbomb id for session 1088
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1088' AND game_id = '108';
-- map via giantbomb id for session 1089
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1089' AND game_id = '99';
-- map via giantbomb id for session 1090
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1090' AND game_id = '99';
-- map via giantbomb id for session 1091
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1091' AND game_id = '99';
-- map via giantbomb id for session 1092
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70241' LIMIT 1) WHERE session_id = '1092' AND game_id = '99';
-- map via giantbomb id for session 1093
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48325' LIMIT 1) WHERE session_id = '1093' AND game_id = '111';
-- map via giantbomb id for session 1094
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1094' AND game_id = '108';
-- map via giantbomb id for session 1095
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73781' LIMIT 1) WHERE session_id = '1095' AND game_id = '112';
-- map via giantbomb id for session 1096
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1096' AND game_id = '108';
-- map via giantbomb id for session 1097
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1097' AND game_id = '108';
-- map via giantbomb id for session 1098
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58197' LIMIT 1) WHERE session_id = '1098' AND game_id = '113';
-- map via giantbomb id for session 1099
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62378' LIMIT 1) WHERE session_id = '1099' AND game_id = '114';
-- map via giantbomb id for session 1100
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61156' LIMIT 1) WHERE session_id = '1100' AND game_id = '115';
-- map via giantbomb id for session 1101
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1101' AND game_id = '73';
-- map via giantbomb id for session 1102
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '1102' AND game_id = '39';
-- map via giantbomb id for session 1103
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61156' LIMIT 1) WHERE session_id = '1103' AND game_id = '115';
-- map via giantbomb id for session 1104
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '58490' LIMIT 1) WHERE session_id = '1104' AND game_id = '40';
-- map via giantbomb id for session 1105
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1105' AND game_id = '73';
-- map via giantbomb id for session 1106
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1106' AND game_id = '73';
-- map via giantbomb id for session 1107
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1107' AND game_id = '73';
-- map via giantbomb id for session 1108
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73776' LIMIT 1) WHERE session_id = '1108' AND game_id = '116';
-- map via giantbomb id for session 1109
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1109' AND game_id = '73';
-- map via giantbomb id for session 1110
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73776' LIMIT 1) WHERE session_id = '1110' AND game_id = '116';
-- map via giantbomb id for session 1111
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73776' LIMIT 1) WHERE session_id = '1111' AND game_id = '116';
-- map via giantbomb id for session 1112
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1112' AND game_id = '73';
-- map via giantbomb id for session 1113
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1113' AND game_id = '108';
-- map via giantbomb id for session 1114
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1114' AND game_id = '117';
-- map via giantbomb id for session 1115
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1115' AND game_id = '117';
-- map via giantbomb id for session 1116
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73765' LIMIT 1) WHERE session_id = '1116' AND game_id = '118';
-- map via giantbomb id for session 1117
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73776' LIMIT 1) WHERE session_id = '1117' AND game_id = '116';
-- map via giantbomb id for session 1118
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1118' AND game_id = '117';
-- map via giantbomb id for session 1119
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73776' LIMIT 1) WHERE session_id = '1119' AND game_id = '116';
-- map via giantbomb id for session 1120
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1120' AND game_id = '117';
-- map via giantbomb id for session 1121
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1121' AND game_id = '73';
-- map via giantbomb id for session 1122
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73776' LIMIT 1) WHERE session_id = '1122' AND game_id = '116';
-- map via giantbomb id for session 1123
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1123' AND game_id = '108';
-- map via giantbomb id for session 1124
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1124' AND game_id = '73';
-- map via giantbomb id for session 1125
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1125' AND game_id = '117';
-- map via giantbomb id for session 1126
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73776' LIMIT 1) WHERE session_id = '1126' AND game_id = '116';
-- map via giantbomb id for session 1127
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1127' AND game_id = '73';
-- map via giantbomb id for session 1128
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1128' AND game_id = '117';
-- map via giantbomb id for session 1129
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1129' AND game_id = '73';
-- map via giantbomb id for session 1130
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1130' AND game_id = '117';
-- map via giantbomb id for session 1131
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '75996' LIMIT 1) WHERE session_id = '1131' AND game_id = '119';
-- map via giantbomb id for session 1132
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1132' AND game_id = '73';
-- map via giantbomb id for session 1133
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1133' AND game_id = '117';
-- map via giantbomb id for session 1134
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '75996' LIMIT 1) WHERE session_id = '1134' AND game_id = '119';
-- map via giantbomb id for session 1135
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1135' AND game_id = '117';
-- map via giantbomb id for session 1136
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1136' AND game_id = '117';
-- map via giantbomb id for session 1137
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1137' AND game_id = '117';
-- map via giantbomb id for session 1138
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1138' AND game_id = '117';
-- map via giantbomb id for session 1139
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1139' AND game_id = '117';
-- map via giantbomb id for session 1140
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1140' AND game_id = '108';
-- map via giantbomb id for session 1141
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '75742' LIMIT 1) WHERE session_id = '1141' AND game_id = '120';
-- map via giantbomb id for session 1142
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '75996' LIMIT 1) WHERE session_id = '1142' AND game_id = '119';
-- map via giantbomb id for session 1143
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1143' AND game_id = '73';
-- map via giantbomb id for session 1144
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '75742' LIMIT 1) WHERE session_id = '1144' AND game_id = '120';
-- map via giantbomb id for session 1145
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1145' AND game_id = '117';
-- map via giantbomb id for session 1146
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1146' AND game_id = '117';
-- map via giantbomb id for session 1147
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1147' AND game_id = '117';
-- map via giantbomb id for session 1148
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1148' AND game_id = '117';
-- map via giantbomb id for session 1149
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70938' LIMIT 1) WHERE session_id = '1149' AND game_id = '121';
-- map via giantbomb id for session 1150
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1150' AND game_id = '73';
-- map via giantbomb id for session 1151
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '75996' LIMIT 1) WHERE session_id = '1151' AND game_id = '119';
-- map via giantbomb id for session 1152
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1152' AND game_id = '117';
-- map via giantbomb id for session 1153
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70938' LIMIT 1) WHERE session_id = '1153' AND game_id = '121';
-- map via giantbomb id for session 1154
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1154' AND game_id = '117';
-- map via giantbomb id for session 1155
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1155' AND game_id = '117';
-- map via giantbomb id for session 1156
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1156' AND game_id = '117';
-- map via giantbomb id for session 1157
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1157' AND game_id = '73';
-- map via giantbomb id for session 1158
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '23133' LIMIT 1) WHERE session_id = '1158' AND game_id = '122';
-- map via giantbomb id for session 1159
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73044' LIMIT 1) WHERE session_id = '1159' AND game_id = '123';
-- map via giantbomb id for session 1160
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '1160' AND game_id = '9';
-- map via giantbomb id for session 1161
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70938' LIMIT 1) WHERE session_id = '1161' AND game_id = '121';
-- map via giantbomb id for session 1162
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1162' AND game_id = '73';
-- map via giantbomb id for session 1163
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52572' LIMIT 1) WHERE session_id = '1163' AND game_id = '124';
-- map via giantbomb id for session 1164
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1164' AND game_id = '117';
-- map via giantbomb id for session 1165
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1165' AND game_id = '117';
-- map via giantbomb id for session 1166
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1166' AND game_id = '117';
-- map via giantbomb id for session 1167
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1167' AND game_id = '117';
-- map via giantbomb id for session 1168
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1168' AND game_id = '125';
-- map via giantbomb id for session 1169
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1169' AND game_id = '125';
-- map via giantbomb id for session 1170
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1170' AND game_id = '125';
-- map via giantbomb id for session 1171
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1171' AND game_id = '125';
-- map via giantbomb id for session 1172
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73764' LIMIT 1) WHERE session_id = '1172' AND game_id = '117';
-- map via giantbomb id for session 1173
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42712' LIMIT 1) WHERE session_id = '1173' AND game_id = '108';
-- map via giantbomb id for session 1174
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1174' AND game_id = '125';
-- map via giantbomb id for session 1175
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1175' AND game_id = '125';
-- map via giantbomb id for session 1176
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1176' AND game_id = '125';
-- map via giantbomb id for session 1177
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1177' AND game_id = '126';
-- map via giantbomb id for session 1178
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1178' AND game_id = '126';
-- map via giantbomb id for session 1179
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1179' AND game_id = '126';
-- map via giantbomb id for session 1180
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1180' AND game_id = '126';
-- map via giantbomb id for session 1181
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70938' LIMIT 1) WHERE session_id = '1181' AND game_id = '121';
-- map via giantbomb id for session 1182
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1182' AND game_id = '126';
-- map via giantbomb id for session 1183
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1183' AND game_id = '125';
-- map via giantbomb id for session 1184
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1184' AND game_id = '126';
-- map via giantbomb id for session 1185
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1185' AND game_id = '126';
-- map via giantbomb id for session 1186
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1186' AND game_id = '126';
-- map via giantbomb id for session 1187
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1187' AND game_id = '126';
-- map via giantbomb id for session 1188
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1188' AND game_id = '126';
-- map via giantbomb id for session 1189
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1189' AND game_id = '125';
-- map via giantbomb id for session 1190
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1190' AND game_id = '126';
-- map via giantbomb id for session 1191
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1191' AND game_id = '125';
-- map via giantbomb id for session 1192
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1192' AND game_id = '126';
-- map via giantbomb id for session 1193
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1193' AND game_id = '126';
-- map via giantbomb id for session 1194
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1194' AND game_id = '125';
-- map via giantbomb id for session 1195
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1195' AND game_id = '126';
-- map via giantbomb id for session 1196
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1196' AND game_id = '126';
-- map via giantbomb id for session 1197
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1197' AND game_id = '125';
-- map via giantbomb id for session 1198
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1198' AND game_id = '126';
-- map via giantbomb id for session 1199
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1199' AND game_id = '126';
-- map via giantbomb id for session 1200
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1200' AND game_id = '125';
-- map via giantbomb id for session 1201
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1201' AND game_id = '126';
-- map via giantbomb id for session 1202
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1202' AND game_id = '126';
-- map via giantbomb id for session 1203
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1203' AND game_id = '126';
-- map via giantbomb id for session 1204
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1204' AND game_id = '125';
-- map via giantbomb id for session 1205
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1205' AND game_id = '126';
-- map via giantbomb id for session 1206
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1206' AND game_id = '126';
-- map via giantbomb id for session 1207
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1207' AND game_id = '125';
-- map via giantbomb id for session 1208
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1208' AND game_id = '126';
-- map via giantbomb id for session 1209
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1209' AND game_id = '126';
-- map via giantbomb id for session 1210
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1210' AND game_id = '125';
-- map via giantbomb id for session 1211
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1211' AND game_id = '126';
-- map via giantbomb id for session 1212
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1212' AND game_id = '126';
-- map via giantbomb id for session 1213
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1213' AND game_id = '126';
-- map via giantbomb id for session 1214
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1214' AND game_id = '125';
-- map via giantbomb id for session 1215
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1215' AND game_id = '126';
-- map via giantbomb id for session 1216
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1216' AND game_id = '126';
-- map via giantbomb id for session 1217
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1217' AND game_id = '126';
-- map via giantbomb id for session 1218
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1218' AND game_id = '126';
-- map via giantbomb id for session 1219
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1219' AND game_id = '126';
-- map via giantbomb id for session 1220
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '74598' LIMIT 1) WHERE session_id = '1220' AND game_id = '127';
-- map via giantbomb id for session 1221
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1221' AND game_id = '126';
-- map via giantbomb id for session 1222
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '74598' LIMIT 1) WHERE session_id = '1222' AND game_id = '127';
-- map via giantbomb id for session 1223
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1223' AND game_id = '126';
-- map via giantbomb id for session 1224
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1224' AND game_id = '126';
-- map via giantbomb id for session 1225
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1225' AND game_id = '126';
-- map via giantbomb id for session 1226
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '74598' LIMIT 1) WHERE session_id = '1226' AND game_id = '127';
-- map via giantbomb id for session 1227
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1227' AND game_id = '126';
-- map via giantbomb id for session 1228
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1228' AND game_id = '126';
-- map via giantbomb id for session 1229
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1229' AND game_id = '126';
-- map via giantbomb id for session 1230
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54215' LIMIT 1) WHERE session_id = '1230' AND game_id = '48';
-- map via giantbomb id for session 1231
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1231' AND game_id = '126';
-- map via giantbomb id for session 1232
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1232' AND game_id = '126';
-- map via giantbomb id for session 1233
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1233' AND game_id = '126';
-- map via giantbomb id for session 1234
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1234' AND game_id = '126';
-- map via giantbomb id for session 1235
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1235' AND game_id = '126';
-- map via giantbomb id for session 1236
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1236' AND game_id = '126';
-- map via giantbomb id for session 1237
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1237' AND game_id = '126';
-- map via giantbomb id for session 1238
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1238' AND game_id = '126';
-- map via giantbomb id for session 1239
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1239' AND game_id = '126';
-- map via giantbomb id for session 1240
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1240' AND game_id = '125';
-- map via giantbomb id for session 1241
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1241' AND game_id = '126';
-- map via giantbomb id for session 1242
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1242' AND game_id = '125';
-- map via giantbomb id for session 1243
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1243' AND game_id = '126';
-- map via giantbomb id for session 1244
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52572' LIMIT 1) WHERE session_id = '1244' AND game_id = '124';
-- map via giantbomb id for session 1245
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1245' AND game_id = '126';
-- map via giantbomb id for session 1246
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1246' AND game_id = '125';
-- map via giantbomb id for session 1247
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1247' AND game_id = '126';
-- map via giantbomb id for session 1248
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1248' AND game_id = '126';
-- map via giantbomb id for session 1249
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1249' AND game_id = '126';
-- map via giantbomb id for session 1250
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1250' AND game_id = '125';
-- map via giantbomb id for session 1251
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1251' AND game_id = '126';
-- map via giantbomb id for session 1252
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1252' AND game_id = '126';
-- map via giantbomb id for session 1253
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1253' AND game_id = '126';
-- map via giantbomb id for session 1254
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1254' AND game_id = '125';
-- map via giantbomb id for session 1255
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1255' AND game_id = '126';
-- map via giantbomb id for session 1256
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1256' AND game_id = '126';
-- map via giantbomb id for session 1257
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1257' AND game_id = '126';
-- map via giantbomb id for session 1258
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1258' AND game_id = '126';
-- map via giantbomb id for session 1259
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1259' AND game_id = '126';
-- map via giantbomb id for session 1260
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70421' LIMIT 1) WHERE session_id = '1260' AND game_id = '128';
-- map via giantbomb id for session 1261
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70421' LIMIT 1) WHERE session_id = '1261' AND game_id = '128';
-- map via giantbomb id for session 1262
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1262' AND game_id = '82';
-- map via giantbomb id for session 1263
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1263' AND game_id = '82';
-- map via giantbomb id for session 1264
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1264' AND game_id = '126';
-- map via giantbomb id for session 1265
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1265' AND game_id = '125';
-- map via giantbomb id for session 1266
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1266' AND game_id = '126';
-- map via giantbomb id for session 1267
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1267' AND game_id = '126';
-- map via giantbomb id for session 1268
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1268' AND game_id = '126';
-- map via giantbomb id for session 1269
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1269' AND game_id = '126';
-- map via giantbomb id for session 1270
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1270' AND game_id = '126';
-- map via giantbomb id for session 1271
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1271' AND game_id = '126';
-- map via giantbomb id for session 1272
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1272' AND game_id = '126';
-- map via giantbomb id for session 1273
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1273' AND game_id = '126';
-- map via giantbomb id for session 1274
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '65652' LIMIT 1) WHERE session_id = '1274' AND game_id = '44';
-- map via giantbomb id for session 1275
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78973' LIMIT 1) WHERE session_id = '1275' AND game_id = '129';
-- map via giantbomb id for session 1276
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1276' AND game_id = '126';
-- map via giantbomb id for session 1277
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '65652' LIMIT 1) WHERE session_id = '1277' AND game_id = '44';
-- map via giantbomb id for session 1278
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1278' AND game_id = '126';
-- map via giantbomb id for session 1279
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1279' AND game_id = '126';
-- map via giantbomb id for session 1280
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1280' AND game_id = '126';
-- map via giantbomb id for session 1281
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1281' AND game_id = '126';
-- map via giantbomb id for session 1282
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1282' AND game_id = '126';
-- map via giantbomb id for session 1283
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1283' AND game_id = '126';
-- map via giantbomb id for session 1284
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1284' AND game_id = '126';
-- map via giantbomb id for session 1285
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1285' AND game_id = '126';
-- map via giantbomb id for session 1286
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1286' AND game_id = '126';
-- map via giantbomb id for session 1287
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1287' AND game_id = '126';
-- map via giantbomb id for session 1288
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1288' AND game_id = '82';
-- map via giantbomb id for session 1289
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1289' AND game_id = '126';
-- map via giantbomb id for session 1290
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1290' AND game_id = '126';
-- map via giantbomb id for session 1291
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78973' LIMIT 1) WHERE session_id = '1291' AND game_id = '129';
-- map via giantbomb id for session 1292
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1292' AND game_id = '126';
-- map via giantbomb id for session 1293
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1293' AND game_id = '126';
-- map via giantbomb id for session 1294
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1294' AND game_id = '126';
-- map via giantbomb id for session 1295
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1295' AND game_id = '126';
-- map via giantbomb id for session 1296
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1296' AND game_id = '126';
-- map via giantbomb id for session 1297
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '1297' AND game_id = '86';
-- map via giantbomb id for session 1298
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1298' AND game_id = '126';
-- map via giantbomb id for session 1299
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1299' AND game_id = '126';
-- map via giantbomb id for session 1300
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1300' AND game_id = '126';
-- map via giantbomb id for session 1301
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1301' AND game_id = '126';
-- map via giantbomb id for session 1302
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1302' AND game_id = '126';
-- map via giantbomb id for session 1303
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1303' AND game_id = '126';
-- map via giantbomb id for session 1304
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1304' AND game_id = '126';
-- map via giantbomb id for session 1305
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1305' AND game_id = '126';
-- map via giantbomb id for session 1306
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1306' AND game_id = '126';
-- map via giantbomb id for session 1307
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1307' AND game_id = '126';
-- map via giantbomb id for session 1308
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1308' AND game_id = '126';
-- map via giantbomb id for session 1309
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1309' AND game_id = '126';
-- map via giantbomb id for session 1310
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '65652' LIMIT 1) WHERE session_id = '1310' AND game_id = '44';
-- map via giantbomb id for session 1311
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1311' AND game_id = '126';
-- map via giantbomb id for session 1312
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1312' AND game_id = '126';
-- map via giantbomb id for session 1313
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1313' AND game_id = '126';
-- map via giantbomb id for session 1314
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1314' AND game_id = '126';
-- map via giantbomb id for session 1315
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1315' AND game_id = '126';
-- map via giantbomb id for session 1316
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '65652' LIMIT 1) WHERE session_id = '1316' AND game_id = '44';
-- map via giantbomb id for session 1317
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1317' AND game_id = '126';
-- map via giantbomb id for session 1318
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1318' AND game_id = '126';
-- map via giantbomb id for session 1319
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1319' AND game_id = '126';
-- map via giantbomb id for session 1320
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1320' AND game_id = '126';
-- map via giantbomb id for session 1321
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1321' AND game_id = '126';
-- map via giantbomb id for session 1322
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1322' AND game_id = '126';
-- map via giantbomb id for session 1323
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1323' AND game_id = '126';
-- map via giantbomb id for session 1324
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1324' AND game_id = '126';
-- map via giantbomb id for session 1325
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1325' AND game_id = '126';
-- map via giantbomb id for session 1326
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1326' AND game_id = '126';
-- map via giantbomb id for session 1327
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1327' AND game_id = '126';
-- map via giantbomb id for session 1328
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1328' AND game_id = '126';
-- map via giantbomb id for session 1329
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1329' AND game_id = '126';
-- map via giantbomb id for session 1330
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1330' AND game_id = '126';
-- map via giantbomb id for session 1331
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1331' AND game_id = '130';
-- map via giantbomb id for session 1332
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1332' AND game_id = '126';
-- map via giantbomb id for session 1333
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1333' AND game_id = '130';
-- map via giantbomb id for session 1334
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1334' AND game_id = '126';
-- map via giantbomb id for session 1335
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1335' AND game_id = '126';
-- map via giantbomb id for session 1336
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1336' AND game_id = '126';
-- map via giantbomb id for session 1337
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1337' AND game_id = '126';
-- map via giantbomb id for session 1338
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1338' AND game_id = '126';
-- map via giantbomb id for session 1339
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1339' AND game_id = '130';
-- map via giantbomb id for session 1340
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1340' AND game_id = '126';
-- map via giantbomb id for session 1341
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1341' AND game_id = '126';
-- map via giantbomb id for session 1342
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1342' AND game_id = '130';
-- map via giantbomb id for session 1343
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1343' AND game_id = '126';
-- map via giantbomb id for session 1344
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1344' AND game_id = '126';
-- map via giantbomb id for session 1345
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1345' AND game_id = '126';
-- map via giantbomb id for session 1346
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1346' AND game_id = '126';
-- map via giantbomb id for session 1347
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1347' AND game_id = '126';
-- map via giantbomb id for session 1348
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1348' AND game_id = '82';
-- map via giantbomb id for session 1349
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1349' AND game_id = '126';
-- map via giantbomb id for session 1350
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59927' LIMIT 1) WHERE session_id = '1350' AND game_id = '131';
-- map via giantbomb id for session 1351
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1351' AND game_id = '126';
-- map via giantbomb id for session 1352
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1352' AND game_id = '126';
-- map via giantbomb id for session 1353
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1353' AND game_id = '126';
-- map via giantbomb id for session 1354
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1354' AND game_id = '126';
-- map via giantbomb id for session 1355
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1355' AND game_id = '126';
-- map via giantbomb id for session 1356
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1356' AND game_id = '126';
-- map via giantbomb id for session 1357
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1357' AND game_id = '126';
-- map via giantbomb id for session 1358
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1358' AND game_id = '126';
-- map via giantbomb id for session 1359
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1359' AND game_id = '126';
-- map via giantbomb id for session 1360
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1360' AND game_id = '126';
-- map via giantbomb id for session 1361
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1361' AND game_id = '126';
-- map via giantbomb id for session 1362
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1362' AND game_id = '126';
-- map via giantbomb id for session 1363
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1363' AND game_id = '126';
-- map via giantbomb id for session 1364
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1364' AND game_id = '126';
-- map via giantbomb id for session 1365
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1365' AND game_id = '126';
-- map via giantbomb id for session 1366
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1366' AND game_id = '126';
-- map via giantbomb id for session 1367
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1367' AND game_id = '126';
-- map via giantbomb id for session 1368
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1368' AND game_id = '126';
-- map via giantbomb id for session 1369
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1369' AND game_id = '126';
-- map via giantbomb id for session 1370
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1370' AND game_id = '126';
-- map via giantbomb id for session 1371
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1371' AND game_id = '126';
-- map via giantbomb id for session 1372
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1372' AND game_id = '126';
-- map via giantbomb id for session 1373
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1373' AND game_id = '126';
-- map via giantbomb id for session 1374
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1374' AND game_id = '126';
-- map via giantbomb id for session 1375
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1375' AND game_id = '126';
-- map via giantbomb id for session 1376
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1376' AND game_id = '130';
-- map via giantbomb id for session 1377
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76068' LIMIT 1) WHERE session_id = '1377' AND game_id = '132';
-- map via giantbomb id for session 1378
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1378' AND game_id = '126';
-- map via giantbomb id for session 1379
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1379' AND game_id = '126';
-- map via giantbomb id for session 1380
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1380' AND game_id = '126';
-- map via giantbomb id for session 1381
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1381' AND game_id = '130';
-- map via giantbomb id for session 1382
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1382' AND game_id = '126';
-- map via giantbomb id for session 1383
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1383' AND game_id = '126';
-- map via giantbomb id for session 1384
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1384' AND game_id = '130';
-- map via giantbomb id for session 1385
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1385' AND game_id = '126';
-- map via giantbomb id for session 1386
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1386' AND game_id = '126';
-- map via giantbomb id for session 1387
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1387' AND game_id = '130';
-- map via giantbomb id for session 1388
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1388' AND game_id = '126';
-- map via giantbomb id for session 1389
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1389' AND game_id = '82';
-- map via giantbomb id for session 1390
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1390' AND game_id = '126';
-- map via giantbomb id for session 1391
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1391' AND game_id = '130';
-- map via giantbomb id for session 1392
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1392' AND game_id = '126';
-- map via giantbomb id for session 1393
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1393' AND game_id = '126';
-- map via giantbomb id for session 1394
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1394' AND game_id = '126';
-- map via giantbomb id for session 1395
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1395' AND game_id = '126';
-- map via giantbomb id for session 1396
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1396' AND game_id = '130';
-- map via giantbomb id for session 1397
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1397' AND game_id = '126';
-- map via giantbomb id for session 1398
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1398' AND game_id = '126';
-- map via giantbomb id for session 1399
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1399' AND game_id = '130';
-- map via giantbomb id for session 1400
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1400' AND game_id = '126';
-- map via giantbomb id for session 1401
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76068' LIMIT 1) WHERE session_id = '1401' AND game_id = '132';
-- map via giantbomb id for session 1402
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1402' AND game_id = '126';
-- map via giantbomb id for session 1403
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68917' LIMIT 1) WHERE session_id = '1403' AND game_id = '130';
-- map via giantbomb id for session 1404
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78541' LIMIT 1) WHERE session_id = '1404' AND game_id = '133';
-- map via giantbomb id for session 1405
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1405' AND game_id = '126';
-- map via giantbomb id for session 1406
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76068' LIMIT 1) WHERE session_id = '1406' AND game_id = '132';
-- map via giantbomb id for session 1407
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78541' LIMIT 1) WHERE session_id = '1407' AND game_id = '133';
-- map via giantbomb id for session 1408
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1408' AND game_id = '126';
-- map via giantbomb id for session 1409
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1409' AND game_id = '126';
-- map via giantbomb id for session 1410
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1410' AND game_id = '126';
-- map via giantbomb id for session 1411
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1411' AND game_id = '126';
-- map via giantbomb id for session 1412
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1412' AND game_id = '126';
-- map via giantbomb id for session 1413
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1413' AND game_id = '126';
-- map via giantbomb id for session 1414
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1414' AND game_id = '126';
-- map via giantbomb id for session 1415
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1415' AND game_id = '126';
-- map via giantbomb id for session 1416
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1416' AND game_id = '126';
-- map via giantbomb id for session 1417
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1417' AND game_id = '126';
-- map via giantbomb id for session 1418
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1418' AND game_id = '126';
-- map via giantbomb id for session 1419
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1419' AND game_id = '126';
-- map via giantbomb id for session 1420
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1420' AND game_id = '126';
-- map via giantbomb id for session 1421
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1421' AND game_id = '126';
-- map via giantbomb id for session 1422
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1422' AND game_id = '126';
-- map via giantbomb id for session 1423
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1423' AND game_id = '126';
-- map via giantbomb id for session 1424
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1424' AND game_id = '126';
-- map via giantbomb id for session 1425
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1425' AND game_id = '126';
-- map via giantbomb id for session 1426
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1426' AND game_id = '126';
-- map via giantbomb id for session 1427
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76068' LIMIT 1) WHERE session_id = '1427' AND game_id = '132';
-- map via giantbomb id for session 1428
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1428' AND game_id = '126';
-- map via giantbomb id for session 1429
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1429' AND game_id = '126';
-- map via giantbomb id for session 1430
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1430' AND game_id = '125';
-- map via giantbomb id for session 1431
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1431' AND game_id = '126';
-- map via giantbomb id for session 1432
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76068' LIMIT 1) WHERE session_id = '1432' AND game_id = '132';
-- map via giantbomb id for session 1433
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1433' AND game_id = '126';
-- map via giantbomb id for session 1434
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1434' AND game_id = '125';
-- map via giantbomb id for session 1435
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1435' AND game_id = '126';
-- map via giantbomb id for session 1436
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1436' AND game_id = '125';
-- map via giantbomb id for session 1437
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1437' AND game_id = '126';
-- map via giantbomb id for session 1438
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1438' AND game_id = '126';
-- map via giantbomb id for session 1439
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68937' LIMIT 1) WHERE session_id = '1439' AND game_id = '134';
-- map via giantbomb id for session 1440
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1440' AND game_id = '126';
-- map via giantbomb id for session 1441
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1441' AND game_id = '126';
-- map via giantbomb id for session 1442
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1442' AND game_id = '126';
-- map via giantbomb id for session 1443
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1443' AND game_id = '125';
-- map via giantbomb id for session 1444
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1444' AND game_id = '126';
-- map via giantbomb id for session 1445
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1445' AND game_id = '126';
-- map via giantbomb id for session 1446
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1446' AND game_id = '126';
-- map via giantbomb id for session 1447
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68937' LIMIT 1) WHERE session_id = '1447' AND game_id = '134';
-- map via giantbomb id for session 1448
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1448' AND game_id = '125';
-- map via giantbomb id for session 1449
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1449' AND game_id = '126';
-- map via giantbomb id for session 1450
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1450' AND game_id = '126';
-- map via giantbomb id for session 1451
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1451' AND game_id = '126';
-- map via giantbomb id for session 1452
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1452' AND game_id = '82';
-- map via giantbomb id for session 1453
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1453' AND game_id = '126';
-- map via giantbomb id for session 1454
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1454' AND game_id = '125';
-- map via giantbomb id for session 1455
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1455' AND game_id = '125';
-- map via giantbomb id for session 1456
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1456' AND game_id = '125';
-- map via giantbomb id for session 1457
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76068' LIMIT 1) WHERE session_id = '1457' AND game_id = '132';
-- map via giantbomb id for session 1458
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1458' AND game_id = '126';
-- map via giantbomb id for session 1459
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1459' AND game_id = '126';
-- map via giantbomb id for session 1460
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1460' AND game_id = '82';
-- map via giantbomb id for session 1461
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79149' LIMIT 1) WHERE session_id = '1461' AND game_id = '135';
-- map via giantbomb id for session 1462
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1462' AND game_id = '126';
-- map via giantbomb id for session 1463
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78541' LIMIT 1) WHERE session_id = '1463' AND game_id = '133';
-- map via giantbomb id for session 1464
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1464' AND game_id = '125';
-- map via giantbomb id for session 1465
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1465' AND game_id = '125';
-- map via giantbomb id for session 1466
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1466' AND game_id = '126';
-- map via giantbomb id for session 1467
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78541' LIMIT 1) WHERE session_id = '1467' AND game_id = '133';
-- map via giantbomb id for session 1468
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1468' AND game_id = '125';
-- map via giantbomb id for session 1469
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1469' AND game_id = '125';
-- map via giantbomb id for session 1470
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76961' LIMIT 1) WHERE session_id = '1470' AND game_id = '136';
-- map via giantbomb id for session 1471
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '47388' LIMIT 1) WHERE session_id = '1471' AND game_id = '137';
-- map via giantbomb id for session 1472
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1472' AND game_id = '125';
-- map via giantbomb id for session 1473
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1473' AND game_id = '126';
-- map via giantbomb id for session 1474
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1474' AND game_id = '126';
-- map via giantbomb id for session 1475
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1475' AND game_id = '125';
-- map via giantbomb id for session 1476
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1476' AND game_id = '126';
-- map via giantbomb id for session 1477
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1477' AND game_id = '126';
-- map via giantbomb id for session 1478
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1478' AND game_id = '125';
-- map via giantbomb id for session 1479
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1479' AND game_id = '126';
-- map via giantbomb id for session 1480
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71297' LIMIT 1) WHERE session_id = '1480' AND game_id = '125';
-- map via giantbomb id for session 1481
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1481' AND game_id = '126';
-- map via giantbomb id for session 1482
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1482' AND game_id = '126';
-- map via giantbomb id for session 1483
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '1483' AND game_id = '39';
-- map via giantbomb id for session 1484
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1484' AND game_id = '126';
-- map via giantbomb id for session 1485
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1485' AND game_id = '126';
-- map via giantbomb id for session 1486
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1486' AND game_id = '126';
-- map via giantbomb id for session 1487
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76957' LIMIT 1) WHERE session_id = '1487' AND game_id = '138';
-- map via giantbomb id for session 1488
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76957' LIMIT 1) WHERE session_id = '1488' AND game_id = '138';
-- map via giantbomb id for session 1489
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76957' LIMIT 1) WHERE session_id = '1489' AND game_id = '138';
-- map via giantbomb id for session 1490
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76957' LIMIT 1) WHERE session_id = '1490' AND game_id = '138';
-- map via giantbomb id for session 1491
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76957' LIMIT 1) WHERE session_id = '1491' AND game_id = '138';
-- map via giantbomb id for session 1492
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1492' AND game_id = '126';
-- map via giantbomb id for session 1493
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1493' AND game_id = '126';
-- map via giantbomb id for session 1494
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76068' LIMIT 1) WHERE session_id = '1494' AND game_id = '132';
-- map via giantbomb id for session 1495
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1495' AND game_id = '126';
-- map via giantbomb id for session 1496
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76957' LIMIT 1) WHERE session_id = '1496' AND game_id = '138';
-- map via giantbomb id for session 1497
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1497' AND game_id = '126';
-- map via giantbomb id for session 1498
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1498' AND game_id = '126';
-- map via giantbomb id for session 1499
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1499' AND game_id = '126';
-- map via giantbomb id for session 1500
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1500' AND game_id = '126';
-- map via giantbomb id for session 1501
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1501' AND game_id = '126';
-- map via giantbomb id for session 1502
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1502' AND game_id = '126';
-- map via giantbomb id for session 1503
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1503' AND game_id = '126';
-- map via giantbomb id for session 1504
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1504' AND game_id = '126';
-- map via giantbomb id for session 1505
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1505' AND game_id = '126';
-- map via giantbomb id for session 1506
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1506' AND game_id = '126';
-- map via giantbomb id for session 1507
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '47388' LIMIT 1) WHERE session_id = '1507' AND game_id = '137';
-- map via giantbomb id for session 1508
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1508' AND game_id = '126';
-- map via giantbomb id for session 1509
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1509' AND game_id = '126';
-- map via giantbomb id for session 1510
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1510' AND game_id = '126';
-- map via giantbomb id for session 1511
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81738' LIMIT 1) WHERE session_id = '1511' AND game_id = '139';
-- map via giantbomb id for session 1512
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1512' AND game_id = '126';
-- map via giantbomb id for session 1513
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1513' AND game_id = '126';
-- map via giantbomb id for session 1514
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1514' AND game_id = '126';
-- map via giantbomb id for session 1515
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1515' AND game_id = '126';
-- map via giantbomb id for session 1516
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1516' AND game_id = '126';
-- map via giantbomb id for session 1517
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1517' AND game_id = '82';
-- map via giantbomb id for session 1518
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1518' AND game_id = '126';
-- map via giantbomb id for session 1519
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1519' AND game_id = '126';
-- map via giantbomb id for session 1520
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1520' AND game_id = '126';
-- map via giantbomb id for session 1521
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1521' AND game_id = '126';
-- map via giantbomb id for session 1522
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1522' AND game_id = '126';
-- map via giantbomb id for session 1523
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1523' AND game_id = '126';
-- map via giantbomb id for session 1524
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1524' AND game_id = '126';
-- map via giantbomb id for session 1525
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1525' AND game_id = '126';
-- map via giantbomb id for session 1526
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1526' AND game_id = '126';
-- map via giantbomb id for session 1527
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1527' AND game_id = '126';
-- map via giantbomb id for session 1528
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1528' AND game_id = '126';
-- map via giantbomb id for session 1529
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70232' LIMIT 1) WHERE session_id = '1529' AND game_id = '140';
-- map via giantbomb id for session 1530
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1530' AND game_id = '126';
-- map via giantbomb id for session 1531
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70232' LIMIT 1) WHERE session_id = '1531' AND game_id = '140';
-- map via giantbomb id for session 1532
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1532' AND game_id = '126';
-- map via giantbomb id for session 1533
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1533' AND game_id = '126';
-- map via giantbomb id for session 1534
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1534' AND game_id = '141';
-- map via giantbomb id for session 1535
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1535' AND game_id = '141';
-- map via giantbomb id for session 1536
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1536' AND game_id = '141';
-- map via giantbomb id for session 1537
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1537' AND game_id = '126';
-- map via giantbomb id for session 1538
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1538' AND game_id = '141';
-- map via giantbomb id for session 1539
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1539' AND game_id = '141';
-- map via giantbomb id for session 1540
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '1540' AND game_id = '39';
-- map via giantbomb id for session 1541
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1541' AND game_id = '141';
-- map via giantbomb id for session 1542
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1542' AND game_id = '126';
-- map via giantbomb id for session 1543
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1543' AND game_id = '141';
-- map via giantbomb id for session 1544
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1544' AND game_id = '141';
-- map via giantbomb id for session 1545
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1545' AND game_id = '126';
-- map via giantbomb id for session 1546
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1546' AND game_id = '126';
-- map via giantbomb id for session 1547
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1547' AND game_id = '141';
-- map via giantbomb id for session 1548
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1548' AND game_id = '126';
-- map via giantbomb id for session 1549
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1549' AND game_id = '141';
-- map via giantbomb id for session 1550
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1550' AND game_id = '141';
-- map via giantbomb id for session 1551
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1551' AND game_id = '141';
-- map via giantbomb id for session 1552
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1552' AND game_id = '141';
-- map via giantbomb id for session 1553
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1553' AND game_id = '141';
-- map via giantbomb id for session 1554
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1554' AND game_id = '141';
-- map via giantbomb id for session 1555
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1555' AND game_id = '141';
-- map via giantbomb id for session 1556
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1556' AND game_id = '141';
-- map via giantbomb id for session 1557
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1557' AND game_id = '141';
-- map via giantbomb id for session 1558
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1558' AND game_id = '141';
-- map via giantbomb id for session 1559
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1559' AND game_id = '141';
-- map via giantbomb id for session 1560
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1560' AND game_id = '141';
-- map via giantbomb id for session 1561
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1561' AND game_id = '141';
-- map via giantbomb id for session 1562
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1562' AND game_id = '141';
-- map via giantbomb id for session 1563
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1563' AND game_id = '141';
-- map via giantbomb id for session 1564
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '1564' AND game_id = '39';
-- map via giantbomb id for session 1565
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1565' AND game_id = '141';
-- map via giantbomb id for session 1566
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79147' LIMIT 1) WHERE session_id = '1566' AND game_id = '142';
-- map via giantbomb id for session 1567
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79147' LIMIT 1) WHERE session_id = '1567' AND game_id = '142';
-- map via giantbomb id for session 1568
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '8292' LIMIT 1) WHERE session_id = '1568' AND game_id = '143';
-- map via giantbomb id for session 1569
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1569' AND game_id = '141';
-- map via giantbomb id for session 1570
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79147' LIMIT 1) WHERE session_id = '1570' AND game_id = '142';
-- map via giantbomb id for session 1571
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1571' AND game_id = '141';
-- map via giantbomb id for session 1572
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1572' AND game_id = '141';
-- map via giantbomb id for session 1573
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79147' LIMIT 1) WHERE session_id = '1573' AND game_id = '142';
-- map via giantbomb id for session 1574
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53678' LIMIT 1) WHERE session_id = '1574' AND game_id = '141';
-- map via giantbomb id for session 1575
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79147' LIMIT 1) WHERE session_id = '1575' AND game_id = '142';
-- map via giantbomb id for session 1576
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52163' LIMIT 1) WHERE session_id = '1576' AND game_id = '144';
-- map via giantbomb id for session 1577
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52163' LIMIT 1) WHERE session_id = '1577' AND game_id = '144';
-- map via giantbomb id for session 1578
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52163' LIMIT 1) WHERE session_id = '1578' AND game_id = '144';
-- map via giantbomb id for session 1579
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52163' LIMIT 1) WHERE session_id = '1579' AND game_id = '144';
-- map via giantbomb id for session 1580
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79147' LIMIT 1) WHERE session_id = '1580' AND game_id = '142';
-- map via giantbomb id for session 1581
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52163' LIMIT 1) WHERE session_id = '1581' AND game_id = '144';
-- map via giantbomb id for session 1582
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72225' LIMIT 1) WHERE session_id = '1582' AND game_id = '145';
-- map via giantbomb id for session 1583
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79147' LIMIT 1) WHERE session_id = '1583' AND game_id = '142';
-- map via giantbomb id for session 1584
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72225' LIMIT 1) WHERE session_id = '1584' AND game_id = '145';
-- map via giantbomb id for session 1585
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79147' LIMIT 1) WHERE session_id = '1585' AND game_id = '142';
-- map via giantbomb id for session 1586
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79147' LIMIT 1) WHERE session_id = '1586' AND game_id = '142';
-- map via giantbomb id for session 1587
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79147' LIMIT 1) WHERE session_id = '1587' AND game_id = '142';
-- map via giantbomb id for session 1588
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53284' LIMIT 1) WHERE session_id = '1588' AND game_id = '29';
-- map via giantbomb id for session 1589
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1589' AND game_id = '126';
-- map via giantbomb id for session 1590
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59913' LIMIT 1) WHERE session_id = '1590' AND game_id = '146';
-- map via giantbomb id for session 1591
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59913' LIMIT 1) WHERE session_id = '1591' AND game_id = '146';
-- map via giantbomb id for session 1592
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59913' LIMIT 1) WHERE session_id = '1592' AND game_id = '146';
-- map via giantbomb id for session 1593
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1593' AND game_id = '106';
-- map via giantbomb id for session 1594
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59913' LIMIT 1) WHERE session_id = '1594' AND game_id = '146';
-- map via giantbomb id for session 1595
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59913' LIMIT 1) WHERE session_id = '1595' AND game_id = '146';
-- map via giantbomb id for session 1596
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59913' LIMIT 1) WHERE session_id = '1596' AND game_id = '146';
-- map via giantbomb id for session 1597
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59913' LIMIT 1) WHERE session_id = '1597' AND game_id = '146';
-- map via giantbomb id for session 1598
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1598' AND game_id = '126';
-- map via giantbomb id for session 1599
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59913' LIMIT 1) WHERE session_id = '1599' AND game_id = '146';
-- map via giantbomb id for session 1600
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59913' LIMIT 1) WHERE session_id = '1600' AND game_id = '146';
-- map via giantbomb id for session 1601
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1601' AND game_id = '106';
-- map via giantbomb id for session 1602
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1602' AND game_id = '106';
-- map via giantbomb id for session 1603
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83460' LIMIT 1) WHERE session_id = '1603' AND game_id = '147';
-- map via giantbomb id for session 1604
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '65652' LIMIT 1) WHERE session_id = '1604' AND game_id = '44';
-- map via giantbomb id for session 1605
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1605' AND game_id = '106';
-- map via giantbomb id for session 1606
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61964' LIMIT 1) WHERE session_id = '1606' AND game_id = '148';
-- map via giantbomb id for session 1607
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '1607' AND game_id = '39';
-- map via giantbomb id for session 1608
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1608' AND game_id = '106';
-- map via giantbomb id for session 1609
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82548' LIMIT 1) WHERE session_id = '1609' AND game_id = '149';
-- map via giantbomb id for session 1610
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1610' AND game_id = '126';
-- map via giantbomb id for session 1611
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82548' LIMIT 1) WHERE session_id = '1611' AND game_id = '149';
-- map via giantbomb id for session 1612
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82548' LIMIT 1) WHERE session_id = '1612' AND game_id = '149';
-- map via giantbomb id for session 1613
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82548' LIMIT 1) WHERE session_id = '1613' AND game_id = '149';
-- map via giantbomb id for session 1614
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1614' AND game_id = '126';
-- map via giantbomb id for session 1615
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82548' LIMIT 1) WHERE session_id = '1615' AND game_id = '149';
-- map via giantbomb id for session 1616
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '1616' AND game_id = '39';
-- map via giantbomb id for session 1617
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1617' AND game_id = '106';
-- map via giantbomb id for session 1618
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82548' LIMIT 1) WHERE session_id = '1618' AND game_id = '149';
-- map via giantbomb id for session 1619
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82548' LIMIT 1) WHERE session_id = '1619' AND game_id = '149';
-- map via giantbomb id for session 1620
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82548' LIMIT 1) WHERE session_id = '1620' AND game_id = '149';
-- map via giantbomb id for session 1621
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1621' AND game_id = '106';
-- map via giantbomb id for session 1622
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1622' AND game_id = '106';
-- map via giantbomb id for session 1623
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1623' AND game_id = '73';
-- map via giantbomb id for session 1624
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1624' AND game_id = '106';
-- map via giantbomb id for session 1625
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1625' AND game_id = '73';
-- map via giantbomb id for session 1626
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68836' LIMIT 1) WHERE session_id = '1626' AND game_id = '86';
-- map via giantbomb id for session 1627
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1627' AND game_id = '73';
-- map via giantbomb id for session 1628
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '67871' LIMIT 1) WHERE session_id = '1628' AND game_id = '73';
-- map via giantbomb id for session 1629
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1629' AND game_id = '106';
-- map via giantbomb id for session 1630
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1630' AND game_id = '150';
-- map via giantbomb id for session 1631
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1631' AND game_id = '150';
-- map via giantbomb id for session 1632
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1632' AND game_id = '150';
-- map via giantbomb id for session 1633
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1633' AND game_id = '150';
-- map via giantbomb id for session 1634
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1634' AND game_id = '150';
-- map via giantbomb id for session 1635
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1635' AND game_id = '150';
-- map via giantbomb id for session 1636
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1636' AND game_id = '106';
-- map via giantbomb id for session 1637
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1637' AND game_id = '150';
-- map via giantbomb id for session 1638
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1638' AND game_id = '126';
-- map via giantbomb id for session 1639
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1639' AND game_id = '150';
-- map via giantbomb id for session 1640
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1640' AND game_id = '151';
-- map via giantbomb id for session 1641
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1641' AND game_id = '126';
-- map via giantbomb id for session 1642
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1642' AND game_id = '150';
-- map via giantbomb id for session 1643
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1643' AND game_id = '106';
-- map via giantbomb id for session 1644
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1644' AND game_id = '150';
-- map via giantbomb id for session 1645
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1645' AND game_id = '150';
-- map via giantbomb id for session 1646
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1646' AND game_id = '151';
-- map via giantbomb id for session 1647
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1647' AND game_id = '106';
-- map via giantbomb id for session 1648
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1648' AND game_id = '150';
-- map via giantbomb id for session 1649
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1649' AND game_id = '151';
-- map via giantbomb id for session 1650
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1650' AND game_id = '150';
-- map via giantbomb id for session 1651
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '1651' AND game_id = '39';
-- map via giantbomb id for session 1652
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1652' AND game_id = '126';
-- map via giantbomb id for session 1653
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1653' AND game_id = '151';
-- map via giantbomb id for session 1654
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1654' AND game_id = '106';
-- map via giantbomb id for session 1655
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1655' AND game_id = '150';
-- map via giantbomb id for session 1656
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1656' AND game_id = '151';
-- map via giantbomb id for session 1657
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1657' AND game_id = '126';
-- map via giantbomb id for session 1658
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1658' AND game_id = '150';
-- map via giantbomb id for session 1659
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1659' AND game_id = '151';
-- map via giantbomb id for session 1660
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1660' AND game_id = '150';
-- map via giantbomb id for session 1661
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1661' AND game_id = '151';
-- map via giantbomb id for session 1662
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1662' AND game_id = '126';
-- map via giantbomb id for session 1663
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1663' AND game_id = '126';
-- map via giantbomb id for session 1664
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1664' AND game_id = '106';
-- map via giantbomb id for session 1665
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1665' AND game_id = '150';
-- map via giantbomb id for session 1666
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1666' AND game_id = '151';
-- map via giantbomb id for session 1667
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1667' AND game_id = '150';
-- map via giantbomb id for session 1668
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1668' AND game_id = '126';
-- map via giantbomb id for session 1669
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1669' AND game_id = '150';
-- map via giantbomb id for session 1670
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1670' AND game_id = '151';
-- map via giantbomb id for session 1671
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1671' AND game_id = '150';
-- map via giantbomb id for session 1672
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1672' AND game_id = '150';
-- map via giantbomb id for session 1673
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1673' AND game_id = '150';
-- map via giantbomb id for session 1674
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1674' AND game_id = '151';
-- map via giantbomb id for session 1675
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1675' AND game_id = '151';
-- map via giantbomb id for session 1676
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1676' AND game_id = '106';
-- map via giantbomb id for session 1677
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1677' AND game_id = '150';
-- map via giantbomb id for session 1678
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '1678' AND game_id = '39';
-- map via giantbomb id for session 1679
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1679' AND game_id = '150';
-- map via giantbomb id for session 1680
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1680' AND game_id = '151';
-- map via giantbomb id for session 1681
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '44656' LIMIT 1) WHERE session_id = '1681' AND game_id = '55';
-- map via giantbomb id for session 1682
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1682' AND game_id = '150';
-- map via giantbomb id for session 1683
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1683' AND game_id = '150';
-- map via giantbomb id for session 1684
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1684' AND game_id = '126';
-- map via giantbomb id for session 1685
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1685' AND game_id = '150';
-- map via giantbomb id for session 1686
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1686' AND game_id = '151';
-- map via giantbomb id for session 1687
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1687' AND game_id = '150';
-- map via giantbomb id for session 1688
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1688' AND game_id = '150';
-- map via giantbomb id for session 1689
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1689' AND game_id = '150';
-- map via giantbomb id for session 1690
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1690' AND game_id = '151';
-- map via giantbomb id for session 1691
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '49966' LIMIT 1) WHERE session_id = '1691' AND game_id = '39';
-- map via giantbomb id for session 1692
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1692' AND game_id = '150';
-- map via giantbomb id for session 1693
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1693' AND game_id = '151';
-- map via giantbomb id for session 1694
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1694' AND game_id = '150';
-- map via giantbomb id for session 1695
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1695' AND game_id = '150';
-- map via giantbomb id for session 1696
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1696' AND game_id = '150';
-- map via giantbomb id for session 1697
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1697' AND game_id = '150';
-- map via giantbomb id for session 1698
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1698' AND game_id = '150';
-- map via giantbomb id for session 1699
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1699' AND game_id = '151';
-- map via giantbomb id for session 1700
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1700' AND game_id = '150';
-- map via giantbomb id for session 1701
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1701' AND game_id = '106';
-- map via giantbomb id for session 1702
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1702' AND game_id = '150';
-- map via giantbomb id for session 1703
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '52263' LIMIT 1) WHERE session_id = '1703' AND game_id = '151';
-- map via giantbomb id for session 1704
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1704' AND game_id = '150';
-- map via giantbomb id for session 1705
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1705' AND game_id = '106';
-- map via giantbomb id for session 1706
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1706' AND game_id = '150';
-- map via giantbomb id for session 1707
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1707' AND game_id = '150';
-- map via giantbomb id for session 1708
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1708' AND game_id = '106';
-- map via giantbomb id for session 1709
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1709' AND game_id = '150';
-- map via giantbomb id for session 1710
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1710' AND game_id = '150';
-- map via giantbomb id for session 1711
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68926' LIMIT 1) WHERE session_id = '1711' AND game_id = '152';
-- map via giantbomb id for session 1712
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1712' AND game_id = '150';
-- map via giantbomb id for session 1713
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1713' AND game_id = '150';
-- map via giantbomb id for session 1714
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1714' AND game_id = '150';
-- map via giantbomb id for session 1715
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1715' AND game_id = '150';
-- map via giantbomb id for session 1716
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1716' AND game_id = '150';
-- map via giantbomb id for session 1717
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1717' AND game_id = '150';
-- map via giantbomb id for session 1718
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1718' AND game_id = '150';
-- map via giantbomb id for session 1719
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1719' AND game_id = '150';
-- map via giantbomb id for session 1720
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1720' AND game_id = '150';
-- map via giantbomb id for session 1721
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1721' AND game_id = '150';
-- map via giantbomb id for session 1722
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1722' AND game_id = '150';
-- map via giantbomb id for session 1723
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1723' AND game_id = '150';
-- map via giantbomb id for session 1724
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1724' AND game_id = '150';
-- map via giantbomb id for session 1725
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1725' AND game_id = '150';
-- map via giantbomb id for session 1726
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1726' AND game_id = '150';
-- map via giantbomb id for session 1727
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1727' AND game_id = '150';
-- map via giantbomb id for session 1728
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1728' AND game_id = '150';
-- map via giantbomb id for session 1729
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1729' AND game_id = '150';
-- map via giantbomb id for session 1730
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1730' AND game_id = '150';
-- map via giantbomb id for session 1731
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1731' AND game_id = '150';
-- map via giantbomb id for session 1732
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1732' AND game_id = '150';
-- map via giantbomb id for session 1733
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1733' AND game_id = '150';
-- map via giantbomb id for session 1734
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1734' AND game_id = '150';
-- map via giantbomb id for session 1735
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1735' AND game_id = '150';
-- map via giantbomb id for session 1736
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42529' LIMIT 1) WHERE session_id = '1736' AND game_id = '153';
-- map via giantbomb id for session 1737
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1737' AND game_id = '150';
-- map via giantbomb id for session 1738
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68227' LIMIT 1) WHERE session_id = '1738' AND game_id = '154';
-- map via giantbomb id for session 1739
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1739' AND game_id = '150';
-- map via giantbomb id for session 1740
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1740' AND game_id = '150';
-- map via giantbomb id for session 1741
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1741' AND game_id = '150';
-- map via giantbomb id for session 1742
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1742' AND game_id = '150';
-- map via giantbomb id for session 1743
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1743' AND game_id = '150';
-- map via giantbomb id for session 1744
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1744' AND game_id = '150';
-- map via giantbomb id for session 1745
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1745' AND game_id = '150';
-- map via giantbomb id for session 1746
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1746' AND game_id = '150';
-- map via giantbomb id for session 1747
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1747' AND game_id = '150';
-- map via giantbomb id for session 1748
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1748' AND game_id = '150';
-- map via giantbomb id for session 1749
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1749' AND game_id = '150';
-- map via giantbomb id for session 1750
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1750' AND game_id = '150';
-- map via giantbomb id for session 1751
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1751' AND game_id = '150';
-- map via giantbomb id for session 1752
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1752' AND game_id = '150';
-- map via giantbomb id for session 1753
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1753' AND game_id = '150';
-- map via giantbomb id for session 1754
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1754' AND game_id = '82';
-- map via giantbomb id for session 1755
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1755' AND game_id = '150';
-- map via giantbomb id for session 1756
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1756' AND game_id = '150';
-- map via giantbomb id for session 1757
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1757' AND game_id = '150';
-- map via giantbomb id for session 1758
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1758' AND game_id = '150';
-- map via giantbomb id for session 1759
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1759' AND game_id = '155';
-- map via giantbomb id for session 1760
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1760' AND game_id = '155';
-- map via giantbomb id for session 1761
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1761' AND game_id = '155';
-- map via giantbomb id for session 1762
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1762' AND game_id = '155';
-- map via giantbomb id for session 1763
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1763' AND game_id = '155';
-- map via giantbomb id for session 1764
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1764' AND game_id = '155';
-- map via giantbomb id for session 1765
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1765' AND game_id = '155';
-- map via giantbomb id for session 1766
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1766' AND game_id = '155';
-- map via giantbomb id for session 1767
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1767' AND game_id = '155';
-- map via giantbomb id for session 1768
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1768' AND game_id = '155';
-- map via giantbomb id for session 1769
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1769' AND game_id = '155';
-- map via giantbomb id for session 1770
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1770' AND game_id = '155';
-- map via giantbomb id for session 1771
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1771' AND game_id = '150';
-- map via giantbomb id for session 1772
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1772' AND game_id = '155';
-- map via giantbomb id for session 1773
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1773' AND game_id = '155';
-- map via giantbomb id for session 1774
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1774' AND game_id = '150';
-- map via giantbomb id for session 1775
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1775' AND game_id = '155';
-- map via giantbomb id for session 1776
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1776' AND game_id = '156';
-- map via giantbomb id for session 1777
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1777' AND game_id = '155';
-- map via giantbomb id for session 1778
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1778' AND game_id = '156';
-- map via giantbomb id for session 1779
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1779' AND game_id = '155';
-- map via giantbomb id for session 1780
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1780' AND game_id = '150';
-- map via giantbomb id for session 1781
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1781' AND game_id = '156';
-- map via giantbomb id for session 1782
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1782' AND game_id = '150';
-- map via giantbomb id for session 1783
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1783' AND game_id = '156';
-- map via giantbomb id for session 1784
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1784' AND game_id = '155';
-- map via giantbomb id for session 1785
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1785' AND game_id = '156';
-- map via giantbomb id for session 1786
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1786' AND game_id = '155';
-- map via giantbomb id for session 1787
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1787' AND game_id = '150';
-- map via giantbomb id for session 1788
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1788' AND game_id = '155';
-- map via giantbomb id for session 1789
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1789' AND game_id = '150';
-- map via giantbomb id for session 1790
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1790' AND game_id = '150';
-- map via giantbomb id for session 1791
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1791' AND game_id = '150';
-- map via giantbomb id for session 1792
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1792' AND game_id = '155';
-- map via giantbomb id for session 1793
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1793' AND game_id = '150';
-- map via giantbomb id for session 1794
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1794' AND game_id = '150';
-- map via giantbomb id for session 1795
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1795' AND game_id = '150';
-- map via giantbomb id for session 1796
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82985' LIMIT 1) WHERE session_id = '1796' AND game_id = '155';
-- map via giantbomb id for session 1797
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1797' AND game_id = '150';
-- map via giantbomb id for session 1798
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1798' AND game_id = '150';
-- map via giantbomb id for session 1799
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1799' AND game_id = '150';
-- map via giantbomb id for session 1800
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1800' AND game_id = '150';
-- map via giantbomb id for session 1801
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1801' AND game_id = '150';
-- map via giantbomb id for session 1802
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1802' AND game_id = '156';
-- map via giantbomb id for session 1803
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1803' AND game_id = '150';
-- map via giantbomb id for session 1804
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1804' AND game_id = '150';
-- map via giantbomb id for session 1805
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1805' AND game_id = '126';
-- map via giantbomb id for session 1806
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1806' AND game_id = '150';
-- map via giantbomb id for session 1807
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1807' AND game_id = '150';
-- map via giantbomb id for session 1808
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1808' AND game_id = '126';
-- map via giantbomb id for session 1809
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1809' AND game_id = '150';
-- map via giantbomb id for session 1810
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1810' AND game_id = '150';
-- map via giantbomb id for session 1811
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1811' AND game_id = '150';
-- map via giantbomb id for session 1812
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1812' AND game_id = '78';
-- map via giantbomb id for session 1813
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1813' AND game_id = '150';
-- map via giantbomb id for session 1814
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1814' AND game_id = '78';
-- map via giantbomb id for session 1815
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1815' AND game_id = '150';
-- map via giantbomb id for session 1816
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1816' AND game_id = '78';
-- map via giantbomb id for session 1817
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1817' AND game_id = '78';
-- map via giantbomb id for session 1818
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1818' AND game_id = '78';
-- map via giantbomb id for session 1819
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1819' AND game_id = '78';
-- map via giantbomb id for session 1820
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1820' AND game_id = '78';
-- map via giantbomb id for session 1821
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1821' AND game_id = '106';
-- map via giantbomb id for session 1822
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1822' AND game_id = '78';
-- map via giantbomb id for session 1823
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1823' AND game_id = '78';
-- map via giantbomb id for session 1824
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1824' AND game_id = '78';
-- map via giantbomb id for session 1825
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1825' AND game_id = '78';
-- map via giantbomb id for session 1826
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1826' AND game_id = '78';
-- map via giantbomb id for session 1827
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1827' AND game_id = '78';
-- map via giantbomb id for session 1828
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1828' AND game_id = '78';
-- map via giantbomb id for session 1829
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1829' AND game_id = '78';
-- map via giantbomb id for session 1830
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1830' AND game_id = '78';
-- map via giantbomb id for session 1831
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1831' AND game_id = '78';
-- map via giantbomb id for session 1832
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1832' AND game_id = '78';
-- map via giantbomb id for session 1833
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1833' AND game_id = '78';
-- map via giantbomb id for session 1834
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1834' AND game_id = '156';
-- map via giantbomb id for session 1835
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1835' AND game_id = '78';
-- map via giantbomb id for session 1836
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1836' AND game_id = '156';
-- map via giantbomb id for session 1837
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1837' AND game_id = '156';
-- map via giantbomb id for session 1838
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70513' LIMIT 1) WHERE session_id = '1838' AND game_id = '157';
-- map via giantbomb id for session 1839
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1839' AND game_id = '78';
-- map via giantbomb id for session 1840
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1840' AND game_id = '156';
-- map via giantbomb id for session 1841
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1841' AND game_id = '78';
-- map via giantbomb id for session 1842
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1842' AND game_id = '78';
-- map via giantbomb id for session 1843
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1843' AND game_id = '78';
-- map via giantbomb id for session 1844
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1844' AND game_id = '78';
-- map via giantbomb id for session 1845
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1845' AND game_id = '156';
-- map via giantbomb id for session 1846
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1846' AND game_id = '78';
-- map via giantbomb id for session 1847
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1847' AND game_id = '156';
-- map via giantbomb id for session 1848
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1848' AND game_id = '156';
-- map via giantbomb id for session 1849
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1849' AND game_id = '156';
-- map via giantbomb id for session 1850
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1850' AND game_id = '106';
-- map via giantbomb id for session 1851
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1851' AND game_id = '156';
-- map via giantbomb id for session 1852
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1852' AND game_id = '156';
-- map via giantbomb id for session 1853
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1853' AND game_id = '156';
-- map via giantbomb id for session 1854
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1854' AND game_id = '156';
-- map via giantbomb id for session 1855
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1855' AND game_id = '156';
-- map via giantbomb id for session 1856
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1856' AND game_id = '78';
-- map via giantbomb id for session 1857
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1857' AND game_id = '156';
-- map via giantbomb id for session 1858
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1858' AND game_id = '156';
-- map via giantbomb id for session 1859
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1859' AND game_id = '156';
-- map via giantbomb id for session 1860
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1860' AND game_id = '156';
-- map via giantbomb id for session 1861
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1861' AND game_id = '156';
-- map via giantbomb id for session 1862
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1862' AND game_id = '156';
-- map via giantbomb id for session 1863
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1863' AND game_id = '78';
-- map via giantbomb id for session 1864
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1864' AND game_id = '156';
-- map via giantbomb id for session 1865
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1865' AND game_id = '78';
-- map via giantbomb id for session 1866
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1866' AND game_id = '78';
-- map via giantbomb id for session 1867
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '1867' AND game_id = '106';
-- map via giantbomb id for session 1868
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1868' AND game_id = '78';
-- map via giantbomb id for session 1869
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1869' AND game_id = '78';
-- map via giantbomb id for session 1870
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1870' AND game_id = '78';
-- map via giantbomb id for session 1871
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1871' AND game_id = '156';
-- map via giantbomb id for session 1872
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1872' AND game_id = '78';
-- map via giantbomb id for session 1873
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1873' AND game_id = '156';
-- map via giantbomb id for session 1874
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1874' AND game_id = '78';
-- map via giantbomb id for session 1875
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1875' AND game_id = '78';
-- map via giantbomb id for session 1876
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1876' AND game_id = '78';
-- map via giantbomb id for session 1877
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1877' AND game_id = '78';
-- map via giantbomb id for session 1878
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1878' AND game_id = '78';
-- map via giantbomb id for session 1879
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69916' LIMIT 1) WHERE session_id = '1879' AND game_id = '158';
-- map via giantbomb id for session 1880
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1880' AND game_id = '78';
-- map via giantbomb id for session 1881
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1881' AND game_id = '78';
-- map via giantbomb id for session 1882
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69916' LIMIT 1) WHERE session_id = '1882' AND game_id = '158';
-- map via giantbomb id for session 1883
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1883' AND game_id = '159';
-- map via giantbomb id for session 1884
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69916' LIMIT 1) WHERE session_id = '1884' AND game_id = '158';
-- map via giantbomb id for session 1885
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1885' AND game_id = '159';
-- map via giantbomb id for session 1886
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1886' AND game_id = '78';
-- map via giantbomb id for session 1887
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1887' AND game_id = '78';
-- map via giantbomb id for session 1888
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1888' AND game_id = '78';
-- map via giantbomb id for session 1889
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1889' AND game_id = '78';
-- map via giantbomb id for session 1890
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70513' LIMIT 1) WHERE session_id = '1890' AND game_id = '157';
-- map via giantbomb id for session 1891
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1891' AND game_id = '78';
-- map via giantbomb id for session 1892
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1892' AND game_id = '159';
-- map via giantbomb id for session 1893
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1893' AND game_id = '78';
-- map via giantbomb id for session 1894
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1894' AND game_id = '78';
-- map via giantbomb id for session 1895
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1895' AND game_id = '78';
-- map via giantbomb id for session 1896
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1896' AND game_id = '78';
-- map via giantbomb id for session 1897
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1897' AND game_id = '78';
-- map via giantbomb id for session 1898
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1898' AND game_id = '159';
-- map via giantbomb id for session 1899
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1899' AND game_id = '159';
-- map via giantbomb id for session 1900
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1900' AND game_id = '156';
-- map via giantbomb id for session 1901
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1901' AND game_id = '78';
-- map via giantbomb id for session 1902
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1902' AND game_id = '159';
-- map via giantbomb id for session 1903
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69916' LIMIT 1) WHERE session_id = '1903' AND game_id = '158';
-- map via giantbomb id for session 1904
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1904' AND game_id = '159';
-- map via giantbomb id for session 1905
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1905' AND game_id = '78';
-- map via giantbomb id for session 1906
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69916' LIMIT 1) WHERE session_id = '1906' AND game_id = '158';
-- map via giantbomb id for session 1907
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1907' AND game_id = '159';
-- map via giantbomb id for session 1908
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1908' AND game_id = '78';
-- map via giantbomb id for session 1909
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69916' LIMIT 1) WHERE session_id = '1909' AND game_id = '158';
-- map via giantbomb id for session 1910
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1910' AND game_id = '159';
-- map via giantbomb id for session 1911
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1911' AND game_id = '78';
-- map via giantbomb id for session 1912
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1912' AND game_id = '159';
-- map via giantbomb id for session 1913
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1913' AND game_id = '78';
-- map via giantbomb id for session 1914
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1914' AND game_id = '159';
-- map via giantbomb id for session 1915
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1915' AND game_id = '159';
-- map via giantbomb id for session 1916
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1916' AND game_id = '78';
-- map via giantbomb id for session 1917
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1917' AND game_id = '159';
-- map via giantbomb id for session 1918
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1918' AND game_id = '78';
-- map via giantbomb id for session 1919
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1919' AND game_id = '159';
-- map via giantbomb id for session 1920
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1920' AND game_id = '126';
-- map via giantbomb id for session 1921
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1921' AND game_id = '159';
-- map via giantbomb id for session 1922
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1922' AND game_id = '78';
-- map via giantbomb id for session 1923
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1923' AND game_id = '159';
-- map via giantbomb id for session 1924
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1924' AND game_id = '156';
-- map via giantbomb id for session 1925
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1925' AND game_id = '159';
-- map via giantbomb id for session 1926
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1926' AND game_id = '78';
-- map via giantbomb id for session 1927
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82149' LIMIT 1) WHERE session_id = '1927' AND game_id = '159';
-- map via giantbomb id for session 1928
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1928' AND game_id = '78';
-- map via giantbomb id for session 1929
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1929' AND game_id = '78';
-- map via giantbomb id for session 1930
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1930' AND game_id = '78';
-- map via giantbomb id for session 1931
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1931' AND game_id = '78';
-- map via giantbomb id for session 1932
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1932' AND game_id = '78';
-- map via giantbomb id for session 1933
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1933' AND game_id = '156';
-- map via giantbomb id for session 1934
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '30475' LIMIT 1) WHERE session_id = '1934' AND game_id = '78';
-- map via giantbomb id for session 1935
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69916' LIMIT 1) WHERE session_id = '1935' AND game_id = '158';
-- map via giantbomb id for session 1936
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59900' LIMIT 1) WHERE session_id = '1936' AND game_id = '160';
-- map via giantbomb id for session 1937
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59900' LIMIT 1) WHERE session_id = '1937' AND game_id = '160';
-- map via giantbomb id for session 1938
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69916' LIMIT 1) WHERE session_id = '1938' AND game_id = '158';
-- map via giantbomb id for session 1939
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70513' LIMIT 1) WHERE session_id = '1939' AND game_id = '157';
-- map via giantbomb id for session 1940
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59900' LIMIT 1) WHERE session_id = '1940' AND game_id = '160';
-- map via giantbomb id for session 1941
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1941' AND game_id = '156';
-- map via giantbomb id for session 1942
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59900' LIMIT 1) WHERE session_id = '1942' AND game_id = '160';
-- map via giantbomb id for session 1943
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1943' AND game_id = '156';
-- map via giantbomb id for session 1944
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '1944' AND game_id = '126';
-- map via giantbomb id for session 1945
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1945' AND game_id = '156';
-- map via giantbomb id for session 1946
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1946' AND game_id = '156';
-- map via giantbomb id for session 1947
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1947' AND game_id = '156';
-- map via giantbomb id for session 1948
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1948' AND game_id = '156';
-- map via giantbomb id for session 1949
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1949' AND game_id = '156';
-- map via giantbomb id for session 1950
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '1950' AND game_id = '156';
-- map via giantbomb id for session 1951
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1951' AND game_id = '161';
-- map via giantbomb id for session 1952
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1952' AND game_id = '161';
-- map via giantbomb id for session 1953
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1953' AND game_id = '150';
-- map via giantbomb id for session 1954
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68947' LIMIT 1) WHERE session_id = '1954' AND game_id = '67';
-- map via giantbomb id for session 1955
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1955' AND game_id = '161';
-- map via giantbomb id for session 1956
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1956' AND game_id = '150';
-- map via giantbomb id for session 1957
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1957' AND game_id = '161';
-- map via giantbomb id for session 1958
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1958' AND game_id = '161';
-- map via giantbomb id for session 1959
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1959' AND game_id = '150';
-- map via giantbomb id for session 1960
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1960' AND game_id = '161';
-- map via giantbomb id for session 1961
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1961' AND game_id = '150';
-- map via giantbomb id for session 1962
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1962' AND game_id = '161';
-- map via giantbomb id for session 1963
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1963' AND game_id = '161';
-- map via giantbomb id for session 1964
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66900' LIMIT 1) WHERE session_id = '1964' AND game_id = '79';
-- map via giantbomb id for session 1965
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1965' AND game_id = '161';
-- map via giantbomb id for session 1966
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1966' AND game_id = '161';
-- map via giantbomb id for session 1967
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1967' AND game_id = '82';
-- map via giantbomb id for session 1968
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1968' AND game_id = '161';
-- map via giantbomb id for session 1969
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1969' AND game_id = '161';
-- map via giantbomb id for session 1970
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1970' AND game_id = '161';
-- map via giantbomb id for session 1971
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '1971' AND game_id = '82';
-- map via giantbomb id for session 1972
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1972' AND game_id = '161';
-- map via giantbomb id for session 1973
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1973' AND game_id = '161';
-- map via giantbomb id for session 1974
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1974' AND game_id = '161';
-- map via giantbomb id for session 1975
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1975' AND game_id = '161';
-- map via giantbomb id for session 1976
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1976' AND game_id = '161';
-- map via giantbomb id for session 1977
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1977' AND game_id = '161';
-- map via giantbomb id for session 1978
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1978' AND game_id = '161';
-- map via giantbomb id for session 1979
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1979' AND game_id = '150';
-- map via giantbomb id for session 1980
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1980' AND game_id = '161';
-- map via giantbomb id for session 1981
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '1981' AND game_id = '9';
-- map via giantbomb id for session 1982
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1982' AND game_id = '161';
-- map via giantbomb id for session 1983
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1983' AND game_id = '161';
-- map via giantbomb id for session 1984
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1984' AND game_id = '150';
-- map via giantbomb id for session 1985
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1985' AND game_id = '150';
-- map via giantbomb id for session 1986
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1986' AND game_id = '161';
-- map via giantbomb id for session 1987
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1987' AND game_id = '150';
-- map via giantbomb id for session 1988
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1988' AND game_id = '150';
-- map via giantbomb id for session 1989
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1989' AND game_id = '161';
-- map via giantbomb id for session 1990
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1990' AND game_id = '150';
-- map via giantbomb id for session 1991
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1991' AND game_id = '161';
-- map via giantbomb id for session 1992
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1992' AND game_id = '150';
-- map via giantbomb id for session 1993
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1993' AND game_id = '150';
-- map via giantbomb id for session 1994
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1994' AND game_id = '161';
-- map via giantbomb id for session 1995
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1995' AND game_id = '150';
-- map via giantbomb id for session 1996
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1996' AND game_id = '150';
-- map via giantbomb id for session 1997
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81915' LIMIT 1) WHERE session_id = '1997' AND game_id = '161';
-- map via giantbomb id for session 1998
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '1998' AND game_id = '150';
-- map via giantbomb id for session 1999
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '1999' AND game_id = '162';
-- map via giantbomb id for session 2000
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2000' AND game_id = '162';
-- map via giantbomb id for session 2001
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2001' AND game_id = '150';
-- map via giantbomb id for session 2002
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2002' AND game_id = '162';
-- map via giantbomb id for session 2003
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2003' AND game_id = '162';
-- map via giantbomb id for session 2004
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2004' AND game_id = '162';
-- map via giantbomb id for session 2005
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2005' AND game_id = '150';
-- map via giantbomb id for session 2006
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2006' AND game_id = '162';
-- map via giantbomb id for session 2007
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2007' AND game_id = '162';
-- map via giantbomb id for session 2008
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2008' AND game_id = '162';
-- map via giantbomb id for session 2009
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2009' AND game_id = '126';
-- map via giantbomb id for session 2010
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2010' AND game_id = '162';
-- map via giantbomb id for session 2011
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2011' AND game_id = '162';
-- map via giantbomb id for session 2012
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2012' AND game_id = '162';
-- map via giantbomb id for session 2013
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2013' AND game_id = '162';
-- map via giantbomb id for session 2014
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2014' AND game_id = '162';
-- map via giantbomb id for session 2015
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2015' AND game_id = '162';
-- map via giantbomb id for session 2016
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2016' AND game_id = '162';
-- map via giantbomb id for session 2017
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2017' AND game_id = '150';
-- map via giantbomb id for session 2018
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2018' AND game_id = '162';
-- map via giantbomb id for session 2019
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2019' AND game_id = '156';
-- map via giantbomb id for session 2020
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2020' AND game_id = '162';
-- map via giantbomb id for session 2021
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2021' AND game_id = '162';
-- map via giantbomb id for session 2022
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2022' AND game_id = '150';
-- map via giantbomb id for session 2023
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2023' AND game_id = '162';
-- map via giantbomb id for session 2024
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2024' AND game_id = '150';
-- map via giantbomb id for session 2025
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2025' AND game_id = '162';
-- map via giantbomb id for session 2026
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2026' AND game_id = '162';
-- map via giantbomb id for session 2027
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2027' AND game_id = '162';
-- map via giantbomb id for session 2028
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2028' AND game_id = '162';
-- map via giantbomb id for session 2029
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2029' AND game_id = '126';
-- map via giantbomb id for session 2030
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2030' AND game_id = '162';
-- map via giantbomb id for session 2031
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2031' AND game_id = '162';
-- map via giantbomb id for session 2032
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2032' AND game_id = '162';
-- map via giantbomb id for session 2033
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2033' AND game_id = '162';
-- map via giantbomb id for session 2034
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2034' AND game_id = '162';
-- map via giantbomb id for session 2035
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2035' AND game_id = '162';
-- map via giantbomb id for session 2036
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2036' AND game_id = '162';
-- map via giantbomb id for session 2037
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2037' AND game_id = '162';
-- map via giantbomb id for session 2038
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2038' AND game_id = '162';
-- map via giantbomb id for session 2039
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2039' AND game_id = '156';
-- map via giantbomb id for session 2040
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '46569' LIMIT 1) WHERE session_id = '2040' AND game_id = '162';
-- map via giantbomb id for session 2041
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2041' AND game_id = '126';
-- map via giantbomb id for session 2042
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70513' LIMIT 1) WHERE session_id = '2042' AND game_id = '157';
-- map via giantbomb id for session 2043
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '70513' LIMIT 1) WHERE session_id = '2043' AND game_id = '157';
-- map via giantbomb id for session 2044
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2044' AND game_id = '126';
-- map via giantbomb id for session 2045
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2045' AND game_id = '163';
-- map via giantbomb id for session 2046
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2046' AND game_id = '163';
-- map via giantbomb id for session 2047
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2047' AND game_id = '126';
-- map via giantbomb id for session 2048
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2048' AND game_id = '163';
-- map via giantbomb id for session 2049
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2049' AND game_id = '163';
-- map via giantbomb id for session 2050
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2050' AND game_id = '126';
-- map via giantbomb id for session 2051
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2051' AND game_id = '163';
-- map via giantbomb id for session 2052
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2052' AND game_id = '163';
-- map via giantbomb id for session 2053
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2053' AND game_id = '126';
-- map via giantbomb id for session 2054
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2054' AND game_id = '163';
-- map via giantbomb id for session 2055
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2055' AND game_id = '163';
-- map via giantbomb id for session 2056
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2056' AND game_id = '156';
-- map via giantbomb id for session 2057
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2057' AND game_id = '126';
-- map via giantbomb id for session 2058
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2058' AND game_id = '163';
-- map via giantbomb id for session 2059
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2059' AND game_id = '163';
-- map via giantbomb id for session 2060
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2060' AND game_id = '163';
-- map via giantbomb id for session 2061
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2061' AND game_id = '126';
-- map via giantbomb id for session 2062
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2062' AND game_id = '163';
-- map via giantbomb id for session 2063
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2063' AND game_id = '126';
-- map via giantbomb id for session 2064
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2064' AND game_id = '163';
-- map via giantbomb id for session 2065
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2065' AND game_id = '163';
-- map via giantbomb id for session 2066
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2066' AND game_id = '163';
-- map via giantbomb id for session 2067
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2067' AND game_id = '164';
-- map via giantbomb id for session 2068
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2068' AND game_id = '163';
-- map via giantbomb id for session 2069
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2069' AND game_id = '163';
-- map via giantbomb id for session 2070
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2070' AND game_id = '163';
-- map via giantbomb id for session 2071
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2071' AND game_id = '164';
-- map via giantbomb id for session 2072
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2072' AND game_id = '126';
-- map via giantbomb id for session 2073
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2073' AND game_id = '163';
-- map via giantbomb id for session 2074
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2074' AND game_id = '163';
-- map via giantbomb id for session 2075
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2075' AND game_id = '156';
-- map via giantbomb id for session 2076
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2076' AND game_id = '126';
-- map via giantbomb id for session 2077
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2077' AND game_id = '163';
-- map via giantbomb id for session 2078
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2078' AND game_id = '163';
-- map via giantbomb id for session 2079
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2079' AND game_id = '126';
-- map via giantbomb id for session 2080
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2080' AND game_id = '163';
-- map via giantbomb id for session 2081
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '2081' AND game_id = '9';
-- map via giantbomb id for session 2082
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2082' AND game_id = '126';
-- map via giantbomb id for session 2083
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2083' AND game_id = '163';
-- map via giantbomb id for session 2084
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2084' AND game_id = '163';
-- map via giantbomb id for session 2085
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2085' AND game_id = '163';
-- map via giantbomb id for session 2086
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2086' AND game_id = '156';
-- map via giantbomb id for session 2087
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54229' LIMIT 1) WHERE session_id = '2087' AND game_id = '163';
-- map via giantbomb id for session 2088
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2088' AND game_id = '164';
-- map via giantbomb id for session 2089
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2089' AND game_id = '126';
-- map via giantbomb id for session 2090
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2090' AND game_id = '164';
-- map via giantbomb id for session 2091
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2091' AND game_id = '164';
-- map via giantbomb id for session 2092
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2092' AND game_id = '164';
-- map via giantbomb id for session 2093
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2093' AND game_id = '156';
-- map via giantbomb id for session 2094
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2094' AND game_id = '164';
-- map via giantbomb id for session 2095
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2095' AND game_id = '164';
-- map via giantbomb id for session 2096
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '2096' AND game_id = '106';
-- map via giantbomb id for session 2097
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2097' AND game_id = '164';
-- map via giantbomb id for session 2098
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2098' AND game_id = '164';
-- map via giantbomb id for session 2099
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2099' AND game_id = '164';
-- map via giantbomb id for session 2100
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2100' AND game_id = '164';
-- map via giantbomb id for session 2101
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2101' AND game_id = '126';
-- map via giantbomb id for session 2102
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2102' AND game_id = '164';
-- map via giantbomb id for session 2103
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2103' AND game_id = '156';
-- map via giantbomb id for session 2104
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2104' AND game_id = '164';
-- map via giantbomb id for session 2105
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2105' AND game_id = '164';
-- map via giantbomb id for session 2106
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2106' AND game_id = '126';
-- map via giantbomb id for session 2107
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2107' AND game_id = '164';
-- map via giantbomb id for session 2108
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2108' AND game_id = '164';
-- map via giantbomb id for session 2109
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2109' AND game_id = '164';
-- map via giantbomb id for session 2110
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2110' AND game_id = '156';
-- map via giantbomb id for session 2111
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2111' AND game_id = '164';
-- map via giantbomb id for session 2112
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2112' AND game_id = '164';
-- map via giantbomb id for session 2113
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2113' AND game_id = '164';
-- map via giantbomb id for session 2114
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2114' AND game_id = '126';
-- map via giantbomb id for session 2115
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2115' AND game_id = '156';
-- map via giantbomb id for session 2116
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2116' AND game_id = '164';
-- map via giantbomb id for session 2117
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2117' AND game_id = '164';
-- map via giantbomb id for session 2118
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2118' AND game_id = '150';
-- map via giantbomb id for session 2119
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2119' AND game_id = '164';
-- map via giantbomb id for session 2120
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2120' AND game_id = '164';
-- map via giantbomb id for session 2121
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '2121' AND game_id = '164';
-- map via giantbomb id for session 2122
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62237' LIMIT 1) WHERE session_id = '2122' AND game_id = '165';
-- map via giantbomb id for session 2123
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '35594' LIMIT 1) WHERE session_id = '2123' AND game_id = '166';
-- map via giantbomb id for session 2124
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2124' AND game_id = '156';
-- map via giantbomb id for session 2125
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62237' LIMIT 1) WHERE session_id = '2125' AND game_id = '165';
-- map via giantbomb id for session 2126
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2126' AND game_id = '156';
-- map via giantbomb id for session 2127
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2127' AND game_id = '150';
-- map via giantbomb id for session 2128
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62237' LIMIT 1) WHERE session_id = '2128' AND game_id = '165';
-- map via giantbomb id for session 2129
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2129' AND game_id = '126';
-- map via giantbomb id for session 2130
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2130' AND game_id = '126';
-- map via giantbomb id for session 2131
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2131' AND game_id = '150';
-- map via giantbomb id for session 2132
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2132' AND game_id = '150';
-- map via giantbomb id for session 2133
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '60476' LIMIT 1) WHERE session_id = '2133' AND game_id = '167';
-- map via giantbomb id for session 2134
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '60476' LIMIT 1) WHERE session_id = '2134' AND game_id = '167';
-- map via giantbomb id for session 2135
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '60476' LIMIT 1) WHERE session_id = '2135' AND game_id = '167';
-- map via giantbomb id for session 2136
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2136' AND game_id = '126';
-- map via giantbomb id for session 2137
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2137' AND game_id = '150';
-- map via giantbomb id for session 2138
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '35594' LIMIT 1) WHERE session_id = '2138' AND game_id = '166';
-- map via giantbomb id for session 2139
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2139' AND game_id = '150';
-- map via giantbomb id for session 2140
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2140' AND game_id = '150';
-- map via giantbomb id for session 2141
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79157' LIMIT 1) WHERE session_id = '2141' AND game_id = '168';
-- map via giantbomb id for session 2142
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79157' LIMIT 1) WHERE session_id = '2142' AND game_id = '168';
-- map via giantbomb id for session 2143
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2143' AND game_id = '150';
-- map via giantbomb id for session 2144
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84221' LIMIT 1) WHERE session_id = '2144' AND game_id = '169';
-- map via giantbomb id for session 2145
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2145' AND game_id = '150';
-- map via giantbomb id for session 2146
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2146' AND game_id = '150';
-- map via giantbomb id for session 2147
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2147' AND game_id = '156';
-- map via giantbomb id for session 2148
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '79157' LIMIT 1) WHERE session_id = '2148' AND game_id = '168';
-- map via giantbomb id for session 2149
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84193' LIMIT 1) WHERE session_id = '2149' AND game_id = '170';
-- map via giantbomb id for session 2150
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2150' AND game_id = '150';
-- map via giantbomb id for session 2151
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2151' AND game_id = '156';
-- map via giantbomb id for session 2152
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2152' AND game_id = '150';
-- map via giantbomb id for session 2153
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2153' AND game_id = '150';
-- map via giantbomb id for session 2154
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78420' LIMIT 1) WHERE session_id = '2154' AND game_id = '171';
-- map via giantbomb id for session 2155
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78420' LIMIT 1) WHERE session_id = '2155' AND game_id = '171';
-- map via giantbomb id for session 2156
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2156' AND game_id = '150';
-- map via giantbomb id for session 2157
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78420' LIMIT 1) WHERE session_id = '2157' AND game_id = '171';
-- map via giantbomb id for session 2158
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2158' AND game_id = '156';
-- map via giantbomb id for session 2159
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78420' LIMIT 1) WHERE session_id = '2159' AND game_id = '171';
-- map via giantbomb id for session 2160
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2160' AND game_id = '172';
-- map via giantbomb id for session 2161
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2161' AND game_id = '172';
-- map via giantbomb id for session 2162
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2162' AND game_id = '172';
-- map via giantbomb id for session 2163
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2163' AND game_id = '172';
-- map via giantbomb id for session 2164
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2164' AND game_id = '172';
-- map via giantbomb id for session 2165
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2165' AND game_id = '172';
-- map via giantbomb id for session 2166
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2166' AND game_id = '172';
-- map via giantbomb id for session 2167
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2167' AND game_id = '172';
-- map via giantbomb id for session 2168
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2168' AND game_id = '150';
-- map via giantbomb id for session 2169
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2169' AND game_id = '172';
-- map via giantbomb id for session 2170
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2170' AND game_id = '172';
-- map via giantbomb id for session 2171
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2171' AND game_id = '172';
-- map via giantbomb id for session 2172
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2172' AND game_id = '172';
-- map via giantbomb id for session 2173
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2173' AND game_id = '156';
-- map via giantbomb id for session 2174
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2174' AND game_id = '172';
-- map via giantbomb id for session 2175
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2175' AND game_id = '172';
-- map via giantbomb id for session 2176
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2176' AND game_id = '172';
-- map via giantbomb id for session 2177
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2177' AND game_id = '172';
-- map via giantbomb id for session 2178
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2178' AND game_id = '172';
-- map via giantbomb id for session 2179
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2179' AND game_id = '172';
-- map via giantbomb id for session 2180
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2180' AND game_id = '156';
-- map via giantbomb id for session 2181
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2181' AND game_id = '172';
-- map via giantbomb id for session 2182
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2182' AND game_id = '172';
-- map via giantbomb id for session 2183
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2183' AND game_id = '172';
-- map via giantbomb id for session 2184
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2184' AND game_id = '172';
-- map via giantbomb id for session 2185
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2185' AND game_id = '172';
-- map via giantbomb id for session 2186
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2186' AND game_id = '172';
-- map via giantbomb id for session 2187
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2187' AND game_id = '172';
-- map via giantbomb id for session 2188
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2188' AND game_id = '172';
-- map via giantbomb id for session 2189
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2189' AND game_id = '172';
-- map via giantbomb id for session 2190
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2190' AND game_id = '150';
-- map via giantbomb id for session 2191
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2191' AND game_id = '172';
-- map via giantbomb id for session 2192
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2192' AND game_id = '172';
-- map via giantbomb id for session 2193
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2193' AND game_id = '172';
-- map via giantbomb id for session 2194
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2194' AND game_id = '150';
-- map via giantbomb id for session 2195
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2195' AND game_id = '172';
-- map via giantbomb id for session 2196
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2196' AND game_id = '172';
-- map via giantbomb id for session 2197
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2197' AND game_id = '172';
-- map via giantbomb id for session 2198
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68906' LIMIT 1) WHERE session_id = '2198' AND game_id = '156';
-- map via giantbomb id for session 2199
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2199' AND game_id = '172';
-- map via giantbomb id for session 2200
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2200' AND game_id = '150';
-- map via giantbomb id for session 2201
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2201' AND game_id = '150';
-- map via giantbomb id for session 2202
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2202' AND game_id = '172';
-- map via giantbomb id for session 2203
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2203' AND game_id = '150';
-- map via giantbomb id for session 2204
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2204' AND game_id = '172';
-- map via giantbomb id for session 2205
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2205' AND game_id = '172';
-- map via giantbomb id for session 2206
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2206' AND game_id = '172';
-- map via giantbomb id for session 2207
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2207' AND game_id = '150';
-- map via giantbomb id for session 2208
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2208' AND game_id = '172';
-- map via giantbomb id for session 2209
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2209' AND game_id = '172';
-- map via giantbomb id for session 2210
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2210' AND game_id = '126';
-- map via giantbomb id for session 2211
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '51691' LIMIT 1) WHERE session_id = '2211' AND game_id = '62';
-- map via giantbomb id for session 2212
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2212' AND game_id = '172';
-- map via giantbomb id for session 2213
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2213' AND game_id = '172';
-- map via giantbomb id for session 2214
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2214' AND game_id = '172';
-- map via giantbomb id for session 2215
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2215' AND game_id = '172';
-- map via giantbomb id for session 2216
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2216' AND game_id = '172';
-- map via giantbomb id for session 2217
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2217' AND game_id = '172';
-- map via giantbomb id for session 2218
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2218' AND game_id = '172';
-- map via giantbomb id for session 2219
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2219' AND game_id = '172';
-- map via giantbomb id for session 2220
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2220' AND game_id = '172';
-- map via giantbomb id for session 2221
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2221' AND game_id = '172';
-- map via giantbomb id for session 2222
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2222' AND game_id = '172';
-- map via giantbomb id for session 2223
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2223' AND game_id = '172';
-- map via giantbomb id for session 2224
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2224' AND game_id = '172';
-- map via giantbomb id for session 2225
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2225' AND game_id = '172';
-- map via giantbomb id for session 2226
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2226' AND game_id = '172';
-- map via giantbomb id for session 2227
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2227' AND game_id = '172';
-- map via giantbomb id for session 2228
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2228' AND game_id = '172';
-- map via giantbomb id for session 2229
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62379' LIMIT 1) WHERE session_id = '2229' AND game_id = '172';
-- map via giantbomb id for session 2230
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '74748' LIMIT 1) WHERE session_id = '2230' AND game_id = '173';
-- map via giantbomb id for session 2231
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '74748' LIMIT 1) WHERE session_id = '2231' AND game_id = '173';
-- map via giantbomb id for session 2232
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2232' AND game_id = '126';
-- map via giantbomb id for session 2233
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2233' AND game_id = '150';
-- map via giantbomb id for session 2234
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2234' AND game_id = '174';
-- map via giantbomb id for session 2235
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2235' AND game_id = '174';
-- map via giantbomb id for session 2236
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2236' AND game_id = '174';
-- map via giantbomb id for session 2237
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2237' AND game_id = '174';
-- map via giantbomb id for session 2238
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2238' AND game_id = '174';
-- map via giantbomb id for session 2239
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2239' AND game_id = '174';
-- map via giantbomb id for session 2240
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2240' AND game_id = '174';
-- map via giantbomb id for session 2241
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2241' AND game_id = '174';
-- map via giantbomb id for session 2242
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2242' AND game_id = '174';
-- map via giantbomb id for session 2243
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2243' AND game_id = '174';
-- map via giantbomb id for session 2244
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2244' AND game_id = '174';
-- map via giantbomb id for session 2245
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2245' AND game_id = '174';
-- map via giantbomb id for session 2246
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2246' AND game_id = '174';
-- map via giantbomb id for session 2247
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2247' AND game_id = '174';
-- map via giantbomb id for session 2248
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2248' AND game_id = '174';
-- map via giantbomb id for session 2249
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2249' AND game_id = '174';
-- map via giantbomb id for session 2250
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2250' AND game_id = '174';
-- map via giantbomb id for session 2251
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '2251' AND game_id = '82';
-- map via giantbomb id for session 2252
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '2252' AND game_id = '82';
-- map via giantbomb id for session 2253
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2253' AND game_id = '175';
-- map via giantbomb id for session 2254
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '2254' AND game_id = '9';
-- map via giantbomb id for session 2255
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2255' AND game_id = '174';
-- map via giantbomb id for session 2256
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2256' AND game_id = '174';
-- map via giantbomb id for session 2257
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2257' AND game_id = '174';
-- map via giantbomb id for session 2258
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2258' AND game_id = '174';
-- map via giantbomb id for session 2259
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2259' AND game_id = '174';
-- map via giantbomb id for session 2260
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2260' AND game_id = '174';
-- map via giantbomb id for session 2261
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2261' AND game_id = '174';
-- map via giantbomb id for session 2262
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2262' AND game_id = '126';
-- map via giantbomb id for session 2263
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2263' AND game_id = '150';
-- map via giantbomb id for session 2264
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2264' AND game_id = '174';
-- map via giantbomb id for session 2265
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2265' AND game_id = '174';
-- map via giantbomb id for session 2266
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2266' AND game_id = '126';
-- map via giantbomb id for session 2267
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2267' AND game_id = '150';
-- map via giantbomb id for session 2268
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2268' AND game_id = '174';
-- map via giantbomb id for session 2269
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2269' AND game_id = '174';
-- map via giantbomb id for session 2270
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2270' AND game_id = '174';
-- map via giantbomb id for session 2271
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2271' AND game_id = '174';
-- map via giantbomb id for session 2272
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2272' AND game_id = '174';
-- map via giantbomb id for session 2273
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2273' AND game_id = '174';
-- map via giantbomb id for session 2274
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2274' AND game_id = '174';
-- map via giantbomb id for session 2275
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2275' AND game_id = '174';
-- map via giantbomb id for session 2276
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2276' AND game_id = '174';
-- map via giantbomb id for session 2277
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2277' AND game_id = '174';
-- map via giantbomb id for session 2278
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2278' AND game_id = '174';
-- map via giantbomb id for session 2279
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2279' AND game_id = '174';
-- map via giantbomb id for session 2280
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2280' AND game_id = '174';
-- map via giantbomb id for session 2281
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2281' AND game_id = '174';
-- map via giantbomb id for session 2282
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2282' AND game_id = '174';
-- map via giantbomb id for session 2283
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2283' AND game_id = '174';
-- map via giantbomb id for session 2284
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2284' AND game_id = '174';
-- map via giantbomb id for session 2285
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2285' AND game_id = '174';
-- map via giantbomb id for session 2286
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2286' AND game_id = '126';
-- map via giantbomb id for session 2287
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2287' AND game_id = '174';
-- map via giantbomb id for session 2288
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2288' AND game_id = '174';
-- map via giantbomb id for session 2289
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2289' AND game_id = '174';
-- map via giantbomb id for session 2290
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2290' AND game_id = '174';
-- map via giantbomb id for session 2291
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '80643' LIMIT 1) WHERE session_id = '2291' AND game_id = '174';
-- map via giantbomb id for session 2292
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2292' AND game_id = '176';
-- map via giantbomb id for session 2293
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2293' AND game_id = '176';
-- map via giantbomb id for session 2294
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2294' AND game_id = '176';
-- map via giantbomb id for session 2295
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2295' AND game_id = '176';
-- map via giantbomb id for session 2296
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2296' AND game_id = '176';
-- map via giantbomb id for session 2297
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2297' AND game_id = '176';
-- map via giantbomb id for session 2298
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2298' AND game_id = '176';
-- map via giantbomb id for session 2299
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2299' AND game_id = '176';
-- map via giantbomb id for session 2300
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2300' AND game_id = '176';
-- map via giantbomb id for session 2301
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2301' AND game_id = '176';
-- map via giantbomb id for session 2302
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2302' AND game_id = '176';
-- map via giantbomb id for session 2303
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2303' AND game_id = '176';
-- map via giantbomb id for session 2304
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2304' AND game_id = '176';
-- map via giantbomb id for session 2305
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2305' AND game_id = '176';
-- map via giantbomb id for session 2306
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2306' AND game_id = '176';
-- map via giantbomb id for session 2307
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2307' AND game_id = '176';
-- map via giantbomb id for session 2308
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2308' AND game_id = '176';
-- map via giantbomb id for session 2309
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2309' AND game_id = '176';
-- map via giantbomb id for session 2310
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2310' AND game_id = '176';
-- map via giantbomb id for session 2311
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2311' AND game_id = '176';
-- map via giantbomb id for session 2312
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2312' AND game_id = '176';
-- map via giantbomb id for session 2313
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2313' AND game_id = '176';
-- map via giantbomb id for session 2314
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2314' AND game_id = '176';
-- map via giantbomb id for session 2315
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2315' AND game_id = '176';
-- map via giantbomb id for session 2316
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2316' AND game_id = '176';
-- map via giantbomb id for session 2317
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2317' AND game_id = '176';
-- map via giantbomb id for session 2318
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2318' AND game_id = '176';
-- map via giantbomb id for session 2319
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2319' AND game_id = '176';
-- map via giantbomb id for session 2320
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2320' AND game_id = '176';
-- map via giantbomb id for session 2321
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2321' AND game_id = '176';
-- map via giantbomb id for session 2322
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2322' AND game_id = '176';
-- map via giantbomb id for session 2323
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2323' AND game_id = '176';
-- map via giantbomb id for session 2324
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2324' AND game_id = '176';
-- map via giantbomb id for session 2325
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2325' AND game_id = '176';
-- map via giantbomb id for session 2326
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2326' AND game_id = '176';
-- map via giantbomb id for session 2327
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2327' AND game_id = '176';
-- map via giantbomb id for session 2328
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2328' AND game_id = '176';
-- map via giantbomb id for session 2329
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2329' AND game_id = '176';
-- map via giantbomb id for session 2330
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2330' AND game_id = '176';
-- map via giantbomb id for session 2331
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2331' AND game_id = '176';
-- map via giantbomb id for session 2332
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2332' AND game_id = '176';
-- map via giantbomb id for session 2333
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2333' AND game_id = '176';
-- map via giantbomb id for session 2334
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2334' AND game_id = '176';
-- map via giantbomb id for session 2335
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2335' AND game_id = '176';
-- map via giantbomb id for session 2336
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2336' AND game_id = '176';
-- map via giantbomb id for session 2337
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2337' AND game_id = '176';
-- map via giantbomb id for session 2338
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2338' AND game_id = '176';
-- map via giantbomb id for session 2339
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2339' AND game_id = '176';
-- map via giantbomb id for session 2340
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2340' AND game_id = '176';
-- map via giantbomb id for session 2341
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2341' AND game_id = '176';
-- map via giantbomb id for session 2342
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2342' AND game_id = '176';
-- map via giantbomb id for session 2343
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2343' AND game_id = '176';
-- map via giantbomb id for session 2344
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2344' AND game_id = '176';
-- map via giantbomb id for session 2345
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2345' AND game_id = '176';
-- map via giantbomb id for session 2346
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2346' AND game_id = '176';
-- map via giantbomb id for session 2347
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2347' AND game_id = '176';
-- map via giantbomb id for session 2348
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2348' AND game_id = '176';
-- map via giantbomb id for session 2349
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2349' AND game_id = '176';
-- map via giantbomb id for session 2350
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2350' AND game_id = '176';
-- map via giantbomb id for session 2351
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2351' AND game_id = '176';
-- map via giantbomb id for session 2352
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2352' AND game_id = '176';
-- map via giantbomb id for session 2353
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2353' AND game_id = '176';
-- map via giantbomb id for session 2354
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2354' AND game_id = '176';
-- map via giantbomb id for session 2355
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2355' AND game_id = '176';
-- map via giantbomb id for session 2356
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2356' AND game_id = '176';
-- map via giantbomb id for session 2357
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2357' AND game_id = '176';
-- map via giantbomb id for session 2358
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2358' AND game_id = '176';
-- map via giantbomb id for session 2359
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2359' AND game_id = '176';
-- map via giantbomb id for session 2360
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2360' AND game_id = '176';
-- map via giantbomb id for session 2361
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2361' AND game_id = '176';
-- map via giantbomb id for session 2362
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2362' AND game_id = '176';
-- map via giantbomb id for session 2363
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2363' AND game_id = '176';
-- map via giantbomb id for session 2364
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2364' AND game_id = '176';
-- map via giantbomb id for session 2365
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2365' AND game_id = '176';
-- map via giantbomb id for session 2366
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2366' AND game_id = '176';
-- map via giantbomb id for session 2367
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2367' AND game_id = '176';
-- map via giantbomb id for session 2368
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2368' AND game_id = '176';
-- map via giantbomb id for session 2369
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2369' AND game_id = '176';
-- map via giantbomb id for session 2370
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2370' AND game_id = '176';
-- map via giantbomb id for session 2371
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2371' AND game_id = '176';
-- map via giantbomb id for session 2372
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2372' AND game_id = '176';
-- map via giantbomb id for session 2373
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2373' AND game_id = '176';
-- map via giantbomb id for session 2374
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2374' AND game_id = '176';
-- map via giantbomb id for session 2375
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2375' AND game_id = '176';
-- map via giantbomb id for session 2376
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2376' AND game_id = '176';
-- map via giantbomb id for session 2377
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2377' AND game_id = '176';
-- map via giantbomb id for session 2378
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2378' AND game_id = '176';
-- map via giantbomb id for session 2379
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2379' AND game_id = '176';
-- map via giantbomb id for session 2380
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2380' AND game_id = '176';
-- map via giantbomb id for session 2381
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2381' AND game_id = '176';
-- map via giantbomb id for session 2382
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2382' AND game_id = '126';
-- map via giantbomb id for session 2383
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54789' LIMIT 1) WHERE session_id = '2383' AND game_id = '177';
-- map via giantbomb id for session 2384
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2384' AND game_id = '178';
-- map via giantbomb id for session 2385
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2385' AND game_id = '178';
-- map via giantbomb id for session 2386
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2386' AND game_id = '126';
-- map via giantbomb id for session 2387
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54789' LIMIT 1) WHERE session_id = '2387' AND game_id = '177';
-- map via giantbomb id for session 2388
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2388' AND game_id = '178';
-- map via giantbomb id for session 2389
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2389' AND game_id = '178';
-- map via giantbomb id for session 2390
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2390' AND game_id = '178';
-- map via giantbomb id for session 2391
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2391' AND game_id = '178';
-- map via giantbomb id for session 2392
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2392' AND game_id = '178';
-- map via giantbomb id for session 2393
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2393' AND game_id = '178';
-- map via giantbomb id for session 2394
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2394' AND game_id = '178';
-- map via giantbomb id for session 2395
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2395' AND game_id = '178';
-- map via giantbomb id for session 2396
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2396' AND game_id = '178';
-- map via giantbomb id for session 2397
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2397' AND game_id = '178';
-- map via giantbomb id for session 2398
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2398' AND game_id = '178';
-- map via giantbomb id for session 2399
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '36989' LIMIT 1) WHERE session_id = '2399' AND game_id = '178';
-- map via giantbomb id for session 2400
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50432' LIMIT 1) WHERE session_id = '2400' AND game_id = '179';
-- map via giantbomb id for session 2401
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50432' LIMIT 1) WHERE session_id = '2401' AND game_id = '179';
-- map via giantbomb id for session 2402
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2402' AND game_id = '126';
-- map via giantbomb id for session 2403
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68971' LIMIT 1) WHERE session_id = '2403' AND game_id = '180';
-- map via giantbomb id for session 2404
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2404' AND game_id = '126';
-- map via giantbomb id for session 2405
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68971' LIMIT 1) WHERE session_id = '2405' AND game_id = '180';
-- map via giantbomb id for session 2406
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68971' LIMIT 1) WHERE session_id = '2406' AND game_id = '180';
-- map via giantbomb id for session 2407
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2407' AND game_id = '181';
-- map via giantbomb id for session 2408
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2408' AND game_id = '181';
-- map via giantbomb id for session 2409
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2409' AND game_id = '181';
-- map via giantbomb id for session 2410
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2410' AND game_id = '181';
-- map via giantbomb id for session 2411
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2411' AND game_id = '181';
-- map via giantbomb id for session 2412
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68971' LIMIT 1) WHERE session_id = '2412' AND game_id = '180';
-- map via giantbomb id for session 2413
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68971' LIMIT 1) WHERE session_id = '2413' AND game_id = '180';
-- map via giantbomb id for session 2414
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2414' AND game_id = '181';
-- map via giantbomb id for session 2415
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68971' LIMIT 1) WHERE session_id = '2415' AND game_id = '180';
-- map via giantbomb id for session 2416
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2416' AND game_id = '181';
-- map via giantbomb id for session 2417
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2417' AND game_id = '181';
-- map via giantbomb id for session 2418
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2418' AND game_id = '181';
-- map via giantbomb id for session 2419
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87509' LIMIT 1) WHERE session_id = '2419' AND game_id = '182';
-- map via giantbomb id for session 2420
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2420' AND game_id = '150';
-- map via giantbomb id for session 2421
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69132' LIMIT 1) WHERE session_id = '2421' AND game_id = '183';
-- map via giantbomb id for session 2422
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2422' AND game_id = '181';
-- map via giantbomb id for session 2423
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2423' AND game_id = '181';
-- map via giantbomb id for session 2424
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '85973' LIMIT 1) WHERE session_id = '2424' AND game_id = '181';
-- map via giantbomb id for session 2425
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2425' AND game_id = '126';
-- map via giantbomb id for session 2426
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87509' LIMIT 1) WHERE session_id = '2426' AND game_id = '182';
-- map via giantbomb id for session 2427
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2427' AND game_id = '126';
-- map via giantbomb id for session 2428
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2428' AND game_id = '184';
-- map via giantbomb id for session 2429
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2429' AND game_id = '184';
-- map via giantbomb id for session 2430
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2430' AND game_id = '184';
-- map via giantbomb id for session 2431
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2431' AND game_id = '184';
-- map via giantbomb id for session 2432
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2432' AND game_id = '184';
-- map via giantbomb id for session 2433
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2433' AND game_id = '184';
-- map via giantbomb id for session 2434
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2434' AND game_id = '184';
-- map via giantbomb id for session 2435
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2435' AND game_id = '184';
-- map via giantbomb id for session 2436
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2436' AND game_id = '184';
-- map via giantbomb id for session 2437
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2437' AND game_id = '184';
-- map via giantbomb id for session 2438
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2438' AND game_id = '184';
-- map via giantbomb id for session 2439
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2439' AND game_id = '184';
-- map via giantbomb id for session 2440
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2440' AND game_id = '184';
-- map via giantbomb id for session 2441
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2441' AND game_id = '184';
-- map via giantbomb id for session 2442
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2442' AND game_id = '184';
-- map via giantbomb id for session 2443
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2443' AND game_id = '184';
-- map via giantbomb id for session 2444
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2444' AND game_id = '184';
-- map via giantbomb id for session 2445
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2445' AND game_id = '184';
-- map via giantbomb id for session 2446
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2446' AND game_id = '184';
-- map via giantbomb id for session 2447
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2447' AND game_id = '184';
-- map via giantbomb id for session 2448
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2448' AND game_id = '184';
-- map via giantbomb id for session 2449
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2449' AND game_id = '184';
-- map via giantbomb id for session 2450
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2450' AND game_id = '184';
-- map via giantbomb id for session 2451
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2451' AND game_id = '184';
-- map via giantbomb id for session 2452
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2452' AND game_id = '184';
-- map via giantbomb id for session 2453
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2453' AND game_id = '184';
-- map via giantbomb id for session 2454
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2454' AND game_id = '184';
-- map via giantbomb id for session 2455
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2455' AND game_id = '184';
-- map via giantbomb id for session 2456
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2456' AND game_id = '184';
-- map via giantbomb id for session 2457
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2457' AND game_id = '184';
-- map via giantbomb id for session 2458
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2458' AND game_id = '184';
-- map via giantbomb id for session 2459
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2459' AND game_id = '184';
-- map via giantbomb id for session 2460
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2460' AND game_id = '184';
-- map via giantbomb id for session 2461
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2461' AND game_id = '184';
-- map via giantbomb id for session 2462
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2462' AND game_id = '184';
-- map via giantbomb id for session 2463
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2463' AND game_id = '184';
-- map via giantbomb id for session 2464
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2464' AND game_id = '184';
-- map via giantbomb id for session 2465
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2465' AND game_id = '184';
-- map via giantbomb id for session 2466
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2466' AND game_id = '184';
-- map via giantbomb id for session 2467
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2467' AND game_id = '184';
-- map via giantbomb id for session 2468
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2468' AND game_id = '184';
-- map via giantbomb id for session 2469
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2469' AND game_id = '184';
-- map via giantbomb id for session 2470
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2470' AND game_id = '184';
-- map via giantbomb id for session 2471
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2471' AND game_id = '184';
-- map via giantbomb id for session 2472
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2472' AND game_id = '184';
-- map via giantbomb id for session 2473
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2473' AND game_id = '184';
-- map via giantbomb id for session 2474
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2474' AND game_id = '184';
-- map via giantbomb id for session 2475
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2475' AND game_id = '184';
-- map via giantbomb id for session 2476
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2476' AND game_id = '184';
-- map via giantbomb id for session 2477
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2477' AND game_id = '184';
-- map via giantbomb id for session 2478
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2478' AND game_id = '184';
-- map via giantbomb id for session 2479
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2479' AND game_id = '184';
-- map via giantbomb id for session 2480
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2480' AND game_id = '184';
-- map via giantbomb id for session 2481
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2481' AND game_id = '184';
-- map via giantbomb id for session 2482
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2482' AND game_id = '184';
-- map via giantbomb id for session 2483
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2483' AND game_id = '126';
-- map via giantbomb id for session 2484
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2484' AND game_id = '184';
-- map via giantbomb id for session 2485
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2485' AND game_id = '126';
-- map via giantbomb id for session 2486
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2486' AND game_id = '184';
-- map via giantbomb id for session 2487
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2487' AND game_id = '184';
-- map via giantbomb id for session 2488
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2488' AND game_id = '184';
-- map via giantbomb id for session 2489
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2489' AND game_id = '184';
-- map via giantbomb id for session 2490
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2490' AND game_id = '184';
-- map via giantbomb id for session 2491
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2491' AND game_id = '184';
-- map via giantbomb id for session 2492
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2492' AND game_id = '184';
-- map via giantbomb id for session 2493
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2493' AND game_id = '184';
-- map via giantbomb id for session 2494
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2494' AND game_id = '184';
-- map via giantbomb id for session 2495
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2495' AND game_id = '184';
-- map via giantbomb id for session 2496
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2496' AND game_id = '126';
-- map via giantbomb id for session 2497
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2497' AND game_id = '184';
-- map via giantbomb id for session 2498
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2498' AND game_id = '184';
-- map via giantbomb id for session 2499
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2499' AND game_id = '184';
-- map via giantbomb id for session 2500
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2500' AND game_id = '184';
-- map via giantbomb id for session 2501
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2501' AND game_id = '184';
-- map via giantbomb id for session 2502
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2502' AND game_id = '184';
-- map via giantbomb id for session 2503
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2503' AND game_id = '184';
-- map via giantbomb id for session 2504
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '2504' AND game_id = '9';
-- map via giantbomb id for session 2505
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2505' AND game_id = '184';
-- map via giantbomb id for session 2506
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2506' AND game_id = '184';
-- map via giantbomb id for session 2507
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2507' AND game_id = '184';
-- map via giantbomb id for session 2508
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2508' AND game_id = '184';
-- map via giantbomb id for session 2509
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2509' AND game_id = '184';
-- map via giantbomb id for session 2510
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2510' AND game_id = '184';
-- map via giantbomb id for session 2511
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2511' AND game_id = '184';
-- map via giantbomb id for session 2512
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2512' AND game_id = '184';
-- map via giantbomb id for session 2513
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2513' AND game_id = '184';
-- map via giantbomb id for session 2514
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2514' AND game_id = '184';
-- map via giantbomb id for session 2515
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2515' AND game_id = '184';
-- map via giantbomb id for session 2516
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2516' AND game_id = '184';
-- map via giantbomb id for session 2517
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2517' AND game_id = '184';
-- map via giantbomb id for session 2518
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2518' AND game_id = '184';
-- map via giantbomb id for session 2519
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2519' AND game_id = '184';
-- map via giantbomb id for session 2520
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2520' AND game_id = '184';
-- map via giantbomb id for session 2521
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2521' AND game_id = '184';
-- map via giantbomb id for session 2522
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2522' AND game_id = '184';
-- map via giantbomb id for session 2523
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2523' AND game_id = '184';
-- map via giantbomb id for session 2524
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2524' AND game_id = '184';
-- map via giantbomb id for session 2525
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2525' AND game_id = '184';
-- map via giantbomb id for session 2526
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2526' AND game_id = '184';
-- map via giantbomb id for session 2527
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2527' AND game_id = '184';
-- map via giantbomb id for session 2528
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2528' AND game_id = '184';
-- map via giantbomb id for session 2529
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2529' AND game_id = '184';
-- map via giantbomb id for session 2530
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2530' AND game_id = '184';
-- map via giantbomb id for session 2531
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2531' AND game_id = '184';
-- map via giantbomb id for session 2532
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2532' AND game_id = '184';
-- map via giantbomb id for session 2533
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2533' AND game_id = '184';
-- map via giantbomb id for session 2534
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2534' AND game_id = '184';
-- map via giantbomb id for session 2535
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2535' AND game_id = '184';
-- map via giantbomb id for session 2536
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2536' AND game_id = '184';
-- map via giantbomb id for session 2537
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2537' AND game_id = '184';
-- map via giantbomb id for session 2538
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2538' AND game_id = '184';
-- map via giantbomb id for session 2539
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2539' AND game_id = '184';
-- map via giantbomb id for session 2540
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2540' AND game_id = '184';
-- map via giantbomb id for session 2541
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2541' AND game_id = '184';
-- map via giantbomb id for session 2542
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2542' AND game_id = '184';
-- map via giantbomb id for session 2543
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2543' AND game_id = '184';
-- map via giantbomb id for session 2544
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2544' AND game_id = '184';
-- map via giantbomb id for session 2545
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2545' AND game_id = '150';
-- map via giantbomb id for session 2546
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2546' AND game_id = '184';
-- map via giantbomb id for session 2547
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2547' AND game_id = '184';
-- map via giantbomb id for session 2548
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2548' AND game_id = '184';
-- map via giantbomb id for session 2549
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2549' AND game_id = '184';
-- map via giantbomb id for session 2550
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2550' AND game_id = '184';
-- map via giantbomb id for session 2551
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2551' AND game_id = '184';
-- map via giantbomb id for session 2552
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2552' AND game_id = '184';
-- map via giantbomb id for session 2553
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2553' AND game_id = '150';
-- map via giantbomb id for session 2554
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2554' AND game_id = '184';
-- map via giantbomb id for session 2555
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2555' AND game_id = '184';
-- map via giantbomb id for session 2556
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2556' AND game_id = '184';
-- map via giantbomb id for session 2557
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2557' AND game_id = '184';
-- map via giantbomb id for session 2558
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2558' AND game_id = '184';
-- map via giantbomb id for session 2559
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2559' AND game_id = '184';
-- map via giantbomb id for session 2560
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2560' AND game_id = '184';
-- map via giantbomb id for session 2561
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2561' AND game_id = '184';
-- map via giantbomb id for session 2562
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2562' AND game_id = '184';
-- map via giantbomb id for session 2563
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2563' AND game_id = '150';
-- map via giantbomb id for session 2564
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2564' AND game_id = '184';
-- map via giantbomb id for session 2565
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2565' AND game_id = '184';
-- map via giantbomb id for session 2566
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2566' AND game_id = '184';
-- map via giantbomb id for session 2567
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2567' AND game_id = '184';
-- map via giantbomb id for session 2568
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2568' AND game_id = '184';
-- map via giantbomb id for session 2569
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2569' AND game_id = '184';
-- map via giantbomb id for session 2570
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2570' AND game_id = '184';
-- map via giantbomb id for session 2571
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2571' AND game_id = '184';
-- map via giantbomb id for session 2572
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2572' AND game_id = '184';
-- map via giantbomb id for session 2573
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2573' AND game_id = '184';
-- map via giantbomb id for session 2574
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2574' AND game_id = '184';
-- map via giantbomb id for session 2575
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2575' AND game_id = '184';
-- map via giantbomb id for session 2576
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2576' AND game_id = '184';
-- map via giantbomb id for session 2577
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2577' AND game_id = '184';
-- map via giantbomb id for session 2578
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2578' AND game_id = '184';
-- map via giantbomb id for session 2579
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2579' AND game_id = '150';
-- map via giantbomb id for session 2580
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2580' AND game_id = '184';
-- map via giantbomb id for session 2581
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2581' AND game_id = '184';
-- map via giantbomb id for session 2582
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '2582' AND game_id = '9';
-- map via giantbomb id for session 2583
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2583' AND game_id = '184';
-- map via giantbomb id for session 2584
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2584' AND game_id = '184';
-- map via giantbomb id for session 2585
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2585' AND game_id = '184';
-- map via giantbomb id for session 2586
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2586' AND game_id = '150';
-- map via giantbomb id for session 2587
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2587' AND game_id = '184';
-- map via giantbomb id for session 2588
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2588' AND game_id = '184';
-- map via giantbomb id for session 2589
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2589' AND game_id = '184';
-- map via giantbomb id for session 2590
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2590' AND game_id = '184';
-- map via giantbomb id for session 2591
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2591' AND game_id = '184';
-- map via giantbomb id for session 2592
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2592' AND game_id = '184';
-- map via giantbomb id for session 2593
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '2593' AND game_id = '9';
-- map via giantbomb id for session 2594
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2594' AND game_id = '184';
-- map via giantbomb id for session 2595
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2595' AND game_id = '150';
-- map via giantbomb id for session 2596
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2596' AND game_id = '184';
-- map via giantbomb id for session 2597
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2597' AND game_id = '184';
-- map via giantbomb id for session 2598
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '2598' AND game_id = '9';
-- map via giantbomb id for session 2599
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2599' AND game_id = '184';
-- map via giantbomb id for session 2600
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2600' AND game_id = '184';
-- map via giantbomb id for session 2601
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2601' AND game_id = '184';
-- map via giantbomb id for session 2602
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2602' AND game_id = '184';
-- map via giantbomb id for session 2603
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2603' AND game_id = '184';
-- map via giantbomb id for session 2604
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73813' LIMIT 1) WHERE session_id = '2604' AND game_id = '184';
-- map via giantbomb id for session 2605
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2605' AND game_id = '150';
-- map via giantbomb id for session 2606
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2606' AND game_id = '150';
-- map via giantbomb id for session 2607
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '2607' AND game_id = '9';
-- map via giantbomb id for session 2608
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2608' AND game_id = '175';
-- map via giantbomb id for session 2609
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2609' AND game_id = '175';
-- map via giantbomb id for session 2610
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2610' AND game_id = '175';
-- map via giantbomb id for session 2611
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2611' AND game_id = '175';
-- map via giantbomb id for session 2612
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2612' AND game_id = '175';
-- map via giantbomb id for session 2613
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2613' AND game_id = '175';
-- map via giantbomb id for session 2614
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2614' AND game_id = '150';
-- map via giantbomb id for session 2615
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2615' AND game_id = '175';
-- map via giantbomb id for session 2616
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2616' AND game_id = '175';
-- map via giantbomb id for session 2617
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2617' AND game_id = '175';
-- map via giantbomb id for session 2618
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2618' AND game_id = '175';
-- map via giantbomb id for session 2619
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2619' AND game_id = '175';
-- map via giantbomb id for session 2620
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2620' AND game_id = '175';
-- map via giantbomb id for session 2621
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2621' AND game_id = '175';
-- map via giantbomb id for session 2622
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2622' AND game_id = '175';
-- map via giantbomb id for session 2623
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2623' AND game_id = '175';
-- map via giantbomb id for session 2624
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2624' AND game_id = '175';
-- map via giantbomb id for session 2625
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2625' AND game_id = '175';
-- map via giantbomb id for session 2626
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2626' AND game_id = '175';
-- map via giantbomb id for session 2627
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2627' AND game_id = '175';
-- map via giantbomb id for session 2628
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2628' AND game_id = '175';
-- map via giantbomb id for session 2629
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2629' AND game_id = '175';
-- map via giantbomb id for session 2630
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2630' AND game_id = '175';
-- map via giantbomb id for session 2631
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2631' AND game_id = '175';
-- map via giantbomb id for session 2632
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2632' AND game_id = '175';
-- map via giantbomb id for session 2633
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2633' AND game_id = '175';
-- map via giantbomb id for session 2634
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2634' AND game_id = '175';
-- map via giantbomb id for session 2635
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2635' AND game_id = '175';
-- map via giantbomb id for session 2636
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2636' AND game_id = '175';
-- map via giantbomb id for session 2637
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2637' AND game_id = '175';
-- map via giantbomb id for session 2638
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2638' AND game_id = '175';
-- map via giantbomb id for session 2639
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2639' AND game_id = '126';
-- map via giantbomb id for session 2640
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2640' AND game_id = '175';
-- map via giantbomb id for session 2641
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2641' AND game_id = '175';
-- map via giantbomb id for session 2642
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2642' AND game_id = '175';
-- map via giantbomb id for session 2643
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2643' AND game_id = '175';
-- map via giantbomb id for session 2644
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '77804' LIMIT 1) WHERE session_id = '2644' AND game_id = '175';
-- map via giantbomb id for session 2645
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2645' AND game_id = '185';
-- map via giantbomb id for session 2646
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2646' AND game_id = '185';
-- map via giantbomb id for session 2647
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2647' AND game_id = '185';
-- map via giantbomb id for session 2648
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2648' AND game_id = '185';
-- map via giantbomb id for session 2649
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2649' AND game_id = '185';
-- map via giantbomb id for session 2650
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2650' AND game_id = '185';
-- map via giantbomb id for session 2651
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2651' AND game_id = '185';
-- map via giantbomb id for session 2652
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2652' AND game_id = '185';
-- map via giantbomb id for session 2653
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2653' AND game_id = '185';
-- map via giantbomb id for session 2654
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2654' AND game_id = '185';
-- map via giantbomb id for session 2655
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2655' AND game_id = '185';
-- map via giantbomb id for session 2656
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2656' AND game_id = '185';
-- map via giantbomb id for session 2657
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82965' LIMIT 1) WHERE session_id = '2657' AND game_id = '185';
-- map via giantbomb id for session 2658
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '31634' LIMIT 1) WHERE session_id = '2658' AND game_id = '186';
-- map via giantbomb id for session 2659
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '25262' LIMIT 1) WHERE session_id = '2659' AND game_id = '187';
-- map via giantbomb id for session 2660
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '18745' LIMIT 1) WHERE session_id = '2660' AND game_id = '188';
-- map via giantbomb id for session 2661
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83983' LIMIT 1) WHERE session_id = '2661' AND game_id = '189';
-- map via giantbomb id for session 2662
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83983' LIMIT 1) WHERE session_id = '2662' AND game_id = '189';
-- map via giantbomb id for session 2663
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89841' LIMIT 1) WHERE session_id = '2663' AND game_id = '190';
-- map via giantbomb id for session 2664
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83983' LIMIT 1) WHERE session_id = '2664' AND game_id = '189';
-- map via giantbomb id for session 2665
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83983' LIMIT 1) WHERE session_id = '2665' AND game_id = '189';
-- map via giantbomb id for session 2666
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '16769' LIMIT 1) WHERE session_id = '2666' AND game_id = '191';
-- map via giantbomb id for session 2667
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2667' AND game_id = '150';
-- map via giantbomb id for session 2668
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2668' AND game_id = '192';
-- map via giantbomb id for session 2669
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2669' AND game_id = '192';
-- map via giantbomb id for session 2670
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2670' AND game_id = '192';
-- map via giantbomb id for session 2671
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '2671' AND game_id = '126';
-- map via giantbomb id for session 2672
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2672' AND game_id = '192';
-- map via giantbomb id for session 2673
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2673' AND game_id = '192';
-- map via giantbomb id for session 2674
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2674' AND game_id = '192';
-- map via giantbomb id for session 2675
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2675' AND game_id = '192';
-- map via giantbomb id for session 2676
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2676' AND game_id = '192';
-- map via giantbomb id for session 2677
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2677' AND game_id = '192';
-- map via giantbomb id for session 2678
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2678' AND game_id = '192';
-- map via giantbomb id for session 2679
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2679' AND game_id = '192';
-- map via giantbomb id for session 2680
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2680' AND game_id = '192';
-- map via giantbomb id for session 2681
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2681' AND game_id = '192';
-- map via giantbomb id for session 2682
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2682' AND game_id = '192';
-- map via giantbomb id for session 2683
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2683' AND game_id = '192';
-- map via giantbomb id for session 2684
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2684' AND game_id = '192';
-- map via giantbomb id for session 2685
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2685' AND game_id = '192';
-- map via giantbomb id for session 2686
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2686' AND game_id = '192';
-- map via giantbomb id for session 2687
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '86321' LIMIT 1) WHERE session_id = '2687' AND game_id = '193';
-- map via giantbomb id for session 2688
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2688' AND game_id = '192';
-- map via giantbomb id for session 2689
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2689' AND game_id = '192';
-- map via giantbomb id for session 2690
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2690' AND game_id = '192';
-- map via giantbomb id for session 2691
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2691' AND game_id = '192';
-- map via giantbomb id for session 2692
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2692' AND game_id = '192';
-- map via giantbomb id for session 2693
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2693' AND game_id = '192';
-- map via giantbomb id for session 2694
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2694' AND game_id = '192';
-- map via giantbomb id for session 2695
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2695' AND game_id = '192';
-- map via giantbomb id for session 2696
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2696' AND game_id = '192';
-- map via giantbomb id for session 2697
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2697' AND game_id = '192';
-- map via giantbomb id for session 2698
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89481' LIMIT 1) WHERE session_id = '2698' AND game_id = '192';
-- map via giantbomb id for session 2699
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '2699' AND game_id = '9';
-- map via giantbomb id for session 2700
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2700' AND game_id = '194';
-- map via giantbomb id for session 2701
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2701' AND game_id = '194';
-- map via giantbomb id for session 2702
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2702' AND game_id = '194';
-- map via giantbomb id for session 2703
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2703' AND game_id = '194';
-- map via giantbomb id for session 2704
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2704' AND game_id = '194';
-- map via giantbomb id for session 2705
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2705' AND game_id = '194';
-- map via giantbomb id for session 2706
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2706' AND game_id = '194';
-- map via giantbomb id for session 2707
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2707' AND game_id = '194';
-- map via giantbomb id for session 2708
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2708' AND game_id = '194';
-- map via giantbomb id for session 2709
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2709' AND game_id = '194';
-- map via giantbomb id for session 2710
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2710' AND game_id = '195';
-- map via giantbomb id for session 2711
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2711' AND game_id = '195';
-- map via giantbomb id for session 2712
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '90118' LIMIT 1) WHERE session_id = '2712' AND game_id = '194';
-- map via giantbomb id for session 2713
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2713' AND game_id = '195';
-- map via giantbomb id for session 2714
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2714' AND game_id = '195';
-- map via giantbomb id for session 2715
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2715' AND game_id = '195';
-- map via giantbomb id for session 2716
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2716' AND game_id = '195';
-- map via giantbomb id for session 2717
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2717' AND game_id = '195';
-- map via giantbomb id for session 2718
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2718' AND game_id = '105';
-- map via giantbomb id for session 2719
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2719' AND game_id = '105';
-- map via giantbomb id for session 2720
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2720' AND game_id = '105';
-- map via giantbomb id for session 2721
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2721' AND game_id = '105';
-- map via giantbomb id for session 2722
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2722' AND game_id = '105';
-- map via giantbomb id for session 2723
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2723' AND game_id = '105';
-- map via giantbomb id for session 2724
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2724' AND game_id = '105';
-- map via giantbomb id for session 2725
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2725' AND game_id = '105';
-- map via giantbomb id for session 2726
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2726' AND game_id = '105';
-- map via giantbomb id for session 2727
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2727' AND game_id = '105';
-- map via giantbomb id for session 2728
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2728' AND game_id = '105';
-- map via giantbomb id for session 2729
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2729' AND game_id = '105';
-- map via giantbomb id for session 2730
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2730' AND game_id = '105';
-- map via giantbomb id for session 2731
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2731' AND game_id = '105';
-- map via giantbomb id for session 2732
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2732' AND game_id = '105';
-- map via giantbomb id for session 2733
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2733' AND game_id = '105';
-- map via giantbomb id for session 2734
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2734' AND game_id = '105';
-- map via giantbomb id for session 2735
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2735' AND game_id = '105';
-- map via giantbomb id for session 2736
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2736' AND game_id = '105';
-- map via giantbomb id for session 2737
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2737' AND game_id = '105';
-- map via giantbomb id for session 2738
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2738' AND game_id = '105';
-- map via giantbomb id for session 2739
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2739' AND game_id = '105';
-- map via giantbomb id for session 2740
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2740' AND game_id = '105';
-- map via giantbomb id for session 2741
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2741' AND game_id = '195';
-- map via giantbomb id for session 2742
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2742' AND game_id = '195';
-- map via giantbomb id for session 2743
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2743' AND game_id = '195';
-- map via giantbomb id for session 2744
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2744' AND game_id = '195';
-- map via giantbomb id for session 2745
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2745' AND game_id = '195';
-- map via giantbomb id for session 2746
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2746' AND game_id = '195';
-- map via giantbomb id for session 2747
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2747' AND game_id = '195';
-- map via giantbomb id for session 2748
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2748' AND game_id = '195';
-- map via giantbomb id for session 2749
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2749' AND game_id = '195';
-- map via giantbomb id for session 2750
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2750' AND game_id = '195';
-- map via giantbomb id for session 2751
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2751' AND game_id = '195';
-- map via giantbomb id for session 2752
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2752' AND game_id = '195';
-- map via giantbomb id for session 2753
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2753' AND game_id = '195';
-- map via giantbomb id for session 2754
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2754' AND game_id = '195';
-- map via giantbomb id for session 2755
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2755' AND game_id = '195';
-- map via giantbomb id for session 2756
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2756' AND game_id = '195';
-- map via giantbomb id for session 2757
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2757' AND game_id = '195';
-- map via giantbomb id for session 2758
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2758' AND game_id = '195';
-- map via giantbomb id for session 2759
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2759' AND game_id = '195';
-- map via giantbomb id for session 2760
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2760' AND game_id = '195';
-- map via giantbomb id for session 2761
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2761' AND game_id = '195';
-- map via giantbomb id for session 2762
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2762' AND game_id = '195';
-- map via giantbomb id for session 2763
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2763' AND game_id = '195';
-- map via giantbomb id for session 2764
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2764' AND game_id = '195';
-- map via giantbomb id for session 2765
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2765' AND game_id = '195';
-- map via giantbomb id for session 2766
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2766' AND game_id = '195';
-- map via giantbomb id for session 2767
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2767' AND game_id = '195';
-- map via giantbomb id for session 2768
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2768' AND game_id = '195';
-- map via giantbomb id for session 2769
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2769' AND game_id = '195';
-- map via giantbomb id for session 2770
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2770' AND game_id = '195';
-- map via giantbomb id for session 2771
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2771' AND game_id = '195';
-- map via giantbomb id for session 2772
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2772' AND game_id = '195';
-- map via giantbomb id for session 2773
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2773' AND game_id = '195';
-- map via giantbomb id for session 2774
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2774' AND game_id = '195';
-- map via giantbomb id for session 2775
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2775' AND game_id = '195';
-- map via giantbomb id for session 2776
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2776' AND game_id = '195';
-- map via giantbomb id for session 2777
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2777' AND game_id = '150';
-- map via giantbomb id for session 2778
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87950' LIMIT 1) WHERE session_id = '2778' AND game_id = '195';
-- map via giantbomb id for session 2779
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2779' AND game_id = '150';
-- map via giantbomb id for session 2780
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2780' AND game_id = '150';
-- map via giantbomb id for session 2781
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2781' AND game_id = '105';
-- map via giantbomb id for session 2782
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2782' AND game_id = '105';
-- map via giantbomb id for session 2783
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2783' AND game_id = '150';
-- map via giantbomb id for session 2784
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2784' AND game_id = '105';
-- map via giantbomb id for session 2785
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2785' AND game_id = '150';
-- map via giantbomb id for session 2786
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '2786' AND game_id = '82';
-- map via giantbomb id for session 2787
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '2787' AND game_id = '9';
-- map via giantbomb id for session 2788
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2788' AND game_id = '150';
-- map via giantbomb id for session 2789
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72742' LIMIT 1) WHERE session_id = '2789' AND game_id = '196';
-- map via giantbomb id for session 2790
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72742' LIMIT 1) WHERE session_id = '2790' AND game_id = '196';
-- map via giantbomb id for session 2791
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72742' LIMIT 1) WHERE session_id = '2791' AND game_id = '196';
-- map via giantbomb id for session 2792
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72742' LIMIT 1) WHERE session_id = '2792' AND game_id = '196';
-- map via giantbomb id for session 2793
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2793' AND game_id = '150';
-- map via giantbomb id for session 2794
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '2794' AND game_id = '106';
-- map via giantbomb id for session 2795
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2795' AND game_id = '105';
-- map via giantbomb id for session 2796
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2796' AND game_id = '105';
-- map via giantbomb id for session 2797
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2797' AND game_id = '105';
-- map via giantbomb id for session 2798
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2798' AND game_id = '105';
-- map via giantbomb id for session 2799
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2799' AND game_id = '105';
-- map via giantbomb id for session 2800
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '2800' AND game_id = '106';
-- map via giantbomb id for session 2801
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2801' AND game_id = '105';
-- map via giantbomb id for session 2802
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2802' AND game_id = '105';
-- map via giantbomb id for session 2803
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '2803' AND game_id = '106';
-- map via giantbomb id for session 2804
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2804' AND game_id = '197';
-- map via giantbomb id for session 2805
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2805' AND game_id = '197';
-- map via giantbomb id for session 2806
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2806' AND game_id = '105';
-- map via giantbomb id for session 2807
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2807' AND game_id = '197';
-- map via giantbomb id for session 2808
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2808' AND game_id = '197';
-- map via giantbomb id for session 2809
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2809' AND game_id = '197';
-- map via giantbomb id for session 2810
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2810' AND game_id = '197';
-- map via giantbomb id for session 2811
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2811' AND game_id = '197';
-- map via giantbomb id for session 2812
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2812' AND game_id = '197';
-- map via giantbomb id for session 2813
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2813' AND game_id = '197';
-- map via giantbomb id for session 2814
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53284' LIMIT 1) WHERE session_id = '2814' AND game_id = '29';
-- map via giantbomb id for session 2815
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2815' AND game_id = '197';
-- map via giantbomb id for session 2816
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2816' AND game_id = '150';
-- map via giantbomb id for session 2817
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2817' AND game_id = '105';
-- map via giantbomb id for session 2818
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2818' AND game_id = '197';
-- map via giantbomb id for session 2819
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2819' AND game_id = '197';
-- map via giantbomb id for session 2820
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2820' AND game_id = '197';
-- map via giantbomb id for session 2821
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2821' AND game_id = '197';
-- map via giantbomb id for session 2822
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2822' AND game_id = '197';
-- map via giantbomb id for session 2823
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '2823' AND game_id = '106';
-- map via giantbomb id for session 2824
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2824' AND game_id = '197';
-- map via giantbomb id for session 2825
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2825' AND game_id = '197';
-- map via giantbomb id for session 2826
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2826' AND game_id = '197';
-- map via giantbomb id for session 2827
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2827' AND game_id = '197';
-- map via giantbomb id for session 2828
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2828' AND game_id = '105';
-- map via giantbomb id for session 2829
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2829' AND game_id = '105';
-- map via giantbomb id for session 2830
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2830' AND game_id = '105';
-- map via giantbomb id for session 2831
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2831' AND game_id = '197';
-- map via giantbomb id for session 2832
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2832' AND game_id = '105';
-- map via giantbomb id for session 2833
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2833' AND game_id = '105';
-- map via giantbomb id for session 2834
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2834' AND game_id = '197';
-- map via giantbomb id for session 2835
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2835' AND game_id = '197';
-- map via giantbomb id for session 2836
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2836' AND game_id = '197';
-- map via giantbomb id for session 2837
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2837' AND game_id = '105';
-- map via giantbomb id for session 2838
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2838' AND game_id = '105';
-- map via giantbomb id for session 2839
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2839' AND game_id = '197';
-- map via giantbomb id for session 2840
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2840' AND game_id = '105';
-- map via giantbomb id for session 2841
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2841' AND game_id = '105';
-- map via giantbomb id for session 2842
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2842' AND game_id = '105';
-- map via giantbomb id for session 2843
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2843' AND game_id = '105';
-- map via giantbomb id for session 2844
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2844' AND game_id = '105';
-- map via giantbomb id for session 2845
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2845' AND game_id = '105';
-- map via giantbomb id for session 2846
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2846' AND game_id = '105';
-- map via giantbomb id for session 2847
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2847' AND game_id = '105';
-- map via giantbomb id for session 2848
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2848' AND game_id = '105';
-- map via giantbomb id for session 2849
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2849' AND game_id = '197';
-- map via giantbomb id for session 2850
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2850' AND game_id = '197';
-- map via giantbomb id for session 2851
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2851' AND game_id = '105';
-- map via giantbomb id for session 2852
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2852' AND game_id = '105';
-- map via giantbomb id for session 2853
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2853' AND game_id = '197';
-- map via giantbomb id for session 2854
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2854' AND game_id = '105';
-- map via giantbomb id for session 2855
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2855' AND game_id = '105';
-- map via giantbomb id for session 2856
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2856' AND game_id = '197';
-- map via giantbomb id for session 2857
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2857' AND game_id = '105';
-- map via giantbomb id for session 2858
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2858' AND game_id = '105';
-- map via giantbomb id for session 2859
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2859' AND game_id = '197';
-- map via giantbomb id for session 2860
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2860' AND game_id = '105';
-- map via giantbomb id for session 2861
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2861' AND game_id = '105';
-- map via giantbomb id for session 2862
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2862' AND game_id = '105';
-- map via giantbomb id for session 2863
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2863' AND game_id = '105';
-- map via giantbomb id for session 2864
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2864' AND game_id = '105';
-- map via giantbomb id for session 2865
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2865' AND game_id = '105';
-- map via giantbomb id for session 2866
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2866' AND game_id = '105';
-- map via giantbomb id for session 2867
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2867' AND game_id = '105';
-- map via giantbomb id for session 2868
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2868' AND game_id = '105';
-- map via giantbomb id for session 2869
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2869' AND game_id = '105';
-- map via giantbomb id for session 2870
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2870' AND game_id = '105';
-- map via giantbomb id for session 2871
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2871' AND game_id = '105';
-- map via giantbomb id for session 2872
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2872' AND game_id = '105';
-- map via giantbomb id for session 2873
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2873' AND game_id = '105';
-- map via giantbomb id for session 2874
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2874' AND game_id = '105';
-- map via giantbomb id for session 2875
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2875' AND game_id = '197';
-- map via giantbomb id for session 2876
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2876' AND game_id = '105';
-- map via giantbomb id for session 2877
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2877' AND game_id = '105';
-- map via giantbomb id for session 2878
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2878' AND game_id = '197';
-- map via giantbomb id for session 2879
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2879' AND game_id = '105';
-- map via giantbomb id for session 2880
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2880' AND game_id = '105';
-- map via giantbomb id for session 2881
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2881' AND game_id = '105';
-- map via giantbomb id for session 2882
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2882' AND game_id = '105';
-- map via giantbomb id for session 2883
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2883' AND game_id = '197';
-- map via giantbomb id for session 2884
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2884' AND game_id = '105';
-- map via giantbomb id for session 2885
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2885' AND game_id = '105';
-- map via giantbomb id for session 2886
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2886' AND game_id = '105';
-- map via giantbomb id for session 2887
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2887' AND game_id = '105';
-- map via giantbomb id for session 2888
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2888' AND game_id = '105';
-- map via giantbomb id for session 2889
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2889' AND game_id = '105';
-- map via giantbomb id for session 2890
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2890' AND game_id = '105';
-- map via giantbomb id for session 2891
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2891' AND game_id = '105';
-- map via giantbomb id for session 2892
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2892' AND game_id = '105';
-- map via giantbomb id for session 2893
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2893' AND game_id = '105';
-- map via giantbomb id for session 2894
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2894' AND game_id = '105';
-- map via giantbomb id for session 2895
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2895' AND game_id = '197';
-- map via giantbomb id for session 2896
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2896' AND game_id = '105';
-- map via giantbomb id for session 2897
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2897' AND game_id = '197';
-- map via giantbomb id for session 2898
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2898' AND game_id = '105';
-- map via giantbomb id for session 2899
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2899' AND game_id = '105';
-- map via giantbomb id for session 2900
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2900' AND game_id = '105';
-- map via giantbomb id for session 2901
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2901' AND game_id = '105';
-- map via giantbomb id for session 2902
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2902' AND game_id = '105';
-- map via giantbomb id for session 2903
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2903' AND game_id = '105';
-- map via giantbomb id for session 2904
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2904' AND game_id = '105';
-- map via giantbomb id for session 2905
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2905' AND game_id = '197';
-- map via giantbomb id for session 2906
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2906' AND game_id = '105';
-- map via giantbomb id for session 2907
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2907' AND game_id = '105';
-- map via giantbomb id for session 2908
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2908' AND game_id = '105';
-- map via giantbomb id for session 2909
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2909' AND game_id = '105';
-- map via giantbomb id for session 2910
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2910' AND game_id = '105';
-- map via giantbomb id for session 2911
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2911' AND game_id = '105';
-- map via giantbomb id for session 2912
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2912' AND game_id = '105';
-- map via giantbomb id for session 2913
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2913' AND game_id = '105';
-- map via giantbomb id for session 2914
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2914' AND game_id = '105';
-- map via giantbomb id for session 2915
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2915' AND game_id = '105';
-- map via giantbomb id for session 2916
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2916' AND game_id = '197';
-- map via giantbomb id for session 2917
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2917' AND game_id = '105';
-- map via giantbomb id for session 2918
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2918' AND game_id = '105';
-- map via giantbomb id for session 2919
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2919' AND game_id = '105';
-- map via giantbomb id for session 2920
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2920' AND game_id = '105';
-- map via giantbomb id for session 2921
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2921' AND game_id = '105';
-- map via giantbomb id for session 2922
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2922' AND game_id = '105';
-- map via giantbomb id for session 2923
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2923' AND game_id = '105';
-- map via giantbomb id for session 2924
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2924' AND game_id = '105';
-- map via giantbomb id for session 2925
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2925' AND game_id = '105';
-- map via giantbomb id for session 2926
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2926' AND game_id = '105';
-- map via giantbomb id for session 2927
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2927' AND game_id = '105';
-- map via giantbomb id for session 2928
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2928' AND game_id = '105';
-- map via giantbomb id for session 2929
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2929' AND game_id = '105';
-- map via giantbomb id for session 2930
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2930' AND game_id = '105';
-- map via giantbomb id for session 2931
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2931' AND game_id = '197';
-- map via giantbomb id for session 2932
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2932' AND game_id = '105';
-- map via giantbomb id for session 2933
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2933' AND game_id = '105';
-- map via giantbomb id for session 2934
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2934' AND game_id = '105';
-- map via giantbomb id for session 2935
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2935' AND game_id = '105';
-- map via giantbomb id for session 2936
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2936' AND game_id = '105';
-- map via giantbomb id for session 2937
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2937' AND game_id = '105';
-- map via giantbomb id for session 2938
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2938' AND game_id = '105';
-- map via giantbomb id for session 2939
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2939' AND game_id = '105';
-- map via giantbomb id for session 2940
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2940' AND game_id = '105';
-- map via giantbomb id for session 2941
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2941' AND game_id = '105';
-- map via giantbomb id for session 2942
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2942' AND game_id = '105';
-- map via giantbomb id for session 2943
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2943' AND game_id = '105';
-- map via giantbomb id for session 2944
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2944' AND game_id = '105';
-- map via giantbomb id for session 2945
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2945' AND game_id = '105';
-- map via giantbomb id for session 2946
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2946' AND game_id = '197';
-- map via giantbomb id for session 2947
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2947' AND game_id = '105';
-- map via giantbomb id for session 2948
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2948' AND game_id = '105';
-- map via giantbomb id for session 2949
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2949' AND game_id = '105';
-- map via giantbomb id for session 2950
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2950' AND game_id = '105';
-- map via giantbomb id for session 2951
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2951' AND game_id = '105';
-- map via giantbomb id for session 2952
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2952' AND game_id = '105';
-- map via giantbomb id for session 2953
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2953' AND game_id = '105';
-- map via giantbomb id for session 2954
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2954' AND game_id = '105';
-- map via giantbomb id for session 2955
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2955' AND game_id = '105';
-- map via giantbomb id for session 2956
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2956' AND game_id = '105';
-- map via giantbomb id for session 2957
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2957' AND game_id = '105';
-- map via giantbomb id for session 2958
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2958' AND game_id = '105';
-- map via giantbomb id for session 2959
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2959' AND game_id = '105';
-- map via giantbomb id for session 2960
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2960' AND game_id = '105';
-- map via giantbomb id for session 2961
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2961' AND game_id = '105';
-- map via giantbomb id for session 2962
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '2962' AND game_id = '197';
-- map via giantbomb id for session 2963
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2963' AND game_id = '105';
-- map via giantbomb id for session 2964
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2964' AND game_id = '105';
-- map via giantbomb id for session 2965
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2965' AND game_id = '105';
-- map via giantbomb id for session 2966
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2966' AND game_id = '105';
-- map via giantbomb id for session 2967
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2967' AND game_id = '105';
-- map via giantbomb id for session 2968
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2968' AND game_id = '105';
-- map via giantbomb id for session 2969
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2969' AND game_id = '105';
-- map via giantbomb id for session 2970
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2970' AND game_id = '105';
-- map via giantbomb id for session 2971
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2971' AND game_id = '105';
-- map via giantbomb id for session 2972
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2972' AND game_id = '105';
-- map via giantbomb id for session 2973
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2973' AND game_id = '105';
-- map via giantbomb id for session 2974
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2974' AND game_id = '105';
-- map via giantbomb id for session 2975
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71298' LIMIT 1) WHERE session_id = '2975' AND game_id = '198';
-- map via giantbomb id for session 2976
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2976' AND game_id = '150';
-- map via giantbomb id for session 2977
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2977' AND game_id = '105';
-- map via giantbomb id for session 2978
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2978' AND game_id = '105';
-- map via giantbomb id for session 2979
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '71298' LIMIT 1) WHERE session_id = '2979' AND game_id = '198';
-- map via giantbomb id for session 2980
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '2980' AND game_id = '150';
-- map via giantbomb id for session 2981
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2981' AND game_id = '176';
-- map via giantbomb id for session 2982
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2982' AND game_id = '176';
-- map via giantbomb id for session 2983
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2983' AND game_id = '105';
-- map via giantbomb id for session 2984
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2984' AND game_id = '176';
-- map via giantbomb id for session 2985
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2985' AND game_id = '176';
-- map via giantbomb id for session 2986
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2986' AND game_id = '105';
-- map via giantbomb id for session 2987
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2987' AND game_id = '176';
-- map via giantbomb id for session 2988
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2988' AND game_id = '105';
-- map via giantbomb id for session 2989
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2989' AND game_id = '176';
-- map via giantbomb id for session 2990
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2990' AND game_id = '105';
-- map via giantbomb id for session 2991
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2991' AND game_id = '105';
-- map via giantbomb id for session 2992
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2992' AND game_id = '105';
-- map via giantbomb id for session 2993
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2993' AND game_id = '176';
-- map via giantbomb id for session 2994
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2994' AND game_id = '176';
-- map via giantbomb id for session 2995
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2995' AND game_id = '176';
-- map via giantbomb id for session 2996
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2996' AND game_id = '105';
-- map via giantbomb id for session 2997
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2997' AND game_id = '105';
-- map via giantbomb id for session 2998
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '2998' AND game_id = '105';
-- map via giantbomb id for session 2999
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '2999' AND game_id = '176';
-- map via giantbomb id for session 3000
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3000' AND game_id = '105';
-- map via giantbomb id for session 3001
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3001' AND game_id = '105';
-- map via giantbomb id for session 3002
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3002' AND game_id = '176';
-- map via giantbomb id for session 3003
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3003' AND game_id = '176';
-- map via giantbomb id for session 3004
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3004' AND game_id = '105';
-- map via giantbomb id for session 3005
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3005' AND game_id = '176';
-- map via giantbomb id for session 3006
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3006' AND game_id = '176';
-- map via giantbomb id for session 3007
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3007' AND game_id = '176';
-- map via giantbomb id for session 3008
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3008' AND game_id = '176';
-- map via giantbomb id for session 3009
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3009' AND game_id = '176';
-- map via giantbomb id for session 3010
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3010' AND game_id = '105';
-- map via giantbomb id for session 3011
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3011' AND game_id = '176';
-- map via giantbomb id for session 3012
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3012' AND game_id = '176';
-- map via giantbomb id for session 3013
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3013' AND game_id = '176';
-- map via giantbomb id for session 3014
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3014' AND game_id = '176';
-- map via giantbomb id for session 3015
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3015' AND game_id = '176';
-- map via giantbomb id for session 3016
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3016' AND game_id = '176';
-- map via giantbomb id for session 3017
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3017' AND game_id = '176';
-- map via giantbomb id for session 3018
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3018' AND game_id = '176';
-- map via giantbomb id for session 3019
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3019' AND game_id = '176';
-- map via giantbomb id for session 3020
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3020' AND game_id = '176';
-- map via giantbomb id for session 3021
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3021' AND game_id = '176';
-- map via giantbomb id for session 3022
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3022' AND game_id = '176';
-- map via giantbomb id for session 3023
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3023' AND game_id = '176';
-- map via giantbomb id for session 3024
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3024' AND game_id = '176';
-- map via giantbomb id for session 3025
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3025' AND game_id = '176';
-- map via giantbomb id for session 3026
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3026' AND game_id = '176';
-- map via giantbomb id for session 3027
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3027' AND game_id = '176';
-- map via giantbomb id for session 3028
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3028' AND game_id = '176';
-- map via giantbomb id for session 3029
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3029' AND game_id = '176';
-- map via giantbomb id for session 3030
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3030' AND game_id = '176';
-- map via giantbomb id for session 3031
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3031' AND game_id = '176';
-- map via giantbomb id for session 3032
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3032' AND game_id = '176';
-- map via giantbomb id for session 3033
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3033' AND game_id = '176';
-- map via giantbomb id for session 3034
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3034' AND game_id = '176';
-- map via giantbomb id for session 3035
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3035' AND game_id = '150';
-- map via giantbomb id for session 3036
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3036' AND game_id = '199';
-- map via giantbomb id for session 3037
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3037' AND game_id = '199';
-- map via giantbomb id for session 3038
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3038' AND game_id = '199';
-- map via giantbomb id for session 3039
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3039' AND game_id = '199';
-- map via giantbomb id for session 3040
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3040' AND game_id = '199';
-- map via giantbomb id for session 3041
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3041' AND game_id = '199';
-- map via giantbomb id for session 3042
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3042' AND game_id = '199';
-- map via giantbomb id for session 3043
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3043' AND game_id = '150';
-- map via giantbomb id for session 3044
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3044' AND game_id = '199';
-- map via giantbomb id for session 3045
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3045' AND game_id = '199';
-- map via giantbomb id for session 3046
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53284' LIMIT 1) WHERE session_id = '3046' AND game_id = '29';
-- map via giantbomb id for session 3047
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3047' AND game_id = '105';
-- map via giantbomb id for session 3048
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3048' AND game_id = '199';
-- map via giantbomb id for session 3049
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3049' AND game_id = '105';
-- map via giantbomb id for session 3050
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3050' AND game_id = '105';
-- map via giantbomb id for session 3051
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3051' AND game_id = '105';
-- map via giantbomb id for session 3052
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3052' AND game_id = '105';
-- map via giantbomb id for session 3053
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3053' AND game_id = '105';
-- map via giantbomb id for session 3054
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3054' AND game_id = '105';
-- map via giantbomb id for session 3055
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3055' AND game_id = '105';
-- map via giantbomb id for session 3056
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3056' AND game_id = '199';
-- map via giantbomb id for session 3057
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3057' AND game_id = '105';
-- map via giantbomb id for session 3058
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3058' AND game_id = '105';
-- map via giantbomb id for session 3059
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3059' AND game_id = '199';
-- map via giantbomb id for session 3060
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3060' AND game_id = '105';
-- map via giantbomb id for session 3061
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3061' AND game_id = '105';
-- map via giantbomb id for session 3062
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3062' AND game_id = '105';
-- map via giantbomb id for session 3063
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3063' AND game_id = '199';
-- map via giantbomb id for session 3064
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3064' AND game_id = '199';
-- map via giantbomb id for session 3065
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3065' AND game_id = '199';
-- map via giantbomb id for session 3066
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3066' AND game_id = '199';
-- map via giantbomb id for session 3067
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3067' AND game_id = '150';
-- map via giantbomb id for session 3068
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3068' AND game_id = '199';
-- map via giantbomb id for session 3069
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3069' AND game_id = '199';
-- map via giantbomb id for session 3070
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3070' AND game_id = '199';
-- map via giantbomb id for session 3071
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3071' AND game_id = '199';
-- map via giantbomb id for session 3072
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3072' AND game_id = '199';
-- map via giantbomb id for session 3073
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3073' AND game_id = '199';
-- map via giantbomb id for session 3074
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3074' AND game_id = '199';
-- map via giantbomb id for session 3075
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3075' AND game_id = '199';
-- map via giantbomb id for session 3076
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '3076' AND game_id = '197';
-- map via giantbomb id for session 3077
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3077' AND game_id = '199';
-- map via giantbomb id for session 3078
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3078' AND game_id = '199';
-- map via giantbomb id for session 3079
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3079' AND game_id = '199';
-- map via giantbomb id for session 3080
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3080' AND game_id = '199';
-- map via giantbomb id for session 3081
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3081' AND game_id = '199';
-- map via giantbomb id for session 3082
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3082' AND game_id = '199';
-- map via giantbomb id for session 3083
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3083' AND game_id = '199';
-- map via giantbomb id for session 3084
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3084' AND game_id = '199';
-- map via giantbomb id for session 3085
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3085' AND game_id = '199';
-- map via giantbomb id for session 3086
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73745' LIMIT 1) WHERE session_id = '3086' AND game_id = '199';
-- map via giantbomb id for session 3087
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '7856' LIMIT 1) WHERE session_id = '3087' AND game_id = '200';
-- map via giantbomb id for session 3088
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3088' AND game_id = '201';
-- map via giantbomb id for session 3089
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3089' AND game_id = '201';
-- map via giantbomb id for session 3090
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3090' AND game_id = '201';
-- map via giantbomb id for session 3091
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3091' AND game_id = '201';
-- map via giantbomb id for session 3092
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3092' AND game_id = '201';
-- map via giantbomb id for session 3093
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3093' AND game_id = '201';
-- map via giantbomb id for session 3094
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3094' AND game_id = '150';
-- map via giantbomb id for session 3095
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3095' AND game_id = '201';
-- map via giantbomb id for session 3096
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3096' AND game_id = '201';
-- map via giantbomb id for session 3097
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3097' AND game_id = '201';
-- map via giantbomb id for session 3098
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3098' AND game_id = '150';
-- map via giantbomb id for session 3099
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3099' AND game_id = '201';
-- map via giantbomb id for session 3100
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3100' AND game_id = '201';
-- map via giantbomb id for session 3101
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3101' AND game_id = '201';
-- map via giantbomb id for session 3102
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3102' AND game_id = '201';
-- map via giantbomb id for session 3103
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3103' AND game_id = '201';
-- map via giantbomb id for session 3104
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3104' AND game_id = '150';
-- map via giantbomb id for session 3105
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3105' AND game_id = '201';
-- map via giantbomb id for session 3106
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3106' AND game_id = '201';
-- map via giantbomb id for session 3107
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3107' AND game_id = '201';
-- map via giantbomb id for session 3108
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '91513' LIMIT 1) WHERE session_id = '3108' AND game_id = '202';
-- map via giantbomb id for session 3109
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3109' AND game_id = '201';
-- map via giantbomb id for session 3110
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3110' AND game_id = '201';
-- map via giantbomb id for session 3111
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3111' AND game_id = '201';
-- map via giantbomb id for session 3112
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '91513' LIMIT 1) WHERE session_id = '3112' AND game_id = '202';
-- map via giantbomb id for session 3113
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3113' AND game_id = '150';
-- map via giantbomb id for session 3114
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3114' AND game_id = '201';
-- map via giantbomb id for session 3115
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3115' AND game_id = '201';
-- map via giantbomb id for session 3116
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3116' AND game_id = '201';
-- map via giantbomb id for session 3117
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3117' AND game_id = '201';
-- map via giantbomb id for session 3118
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3118' AND game_id = '201';
-- map via giantbomb id for session 3119
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3119' AND game_id = '201';
-- map via giantbomb id for session 3120
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3120' AND game_id = '201';
-- map via giantbomb id for session 3121
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3121' AND game_id = '201';
-- map via giantbomb id for session 3122
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3122' AND game_id = '201';
-- map via giantbomb id for session 3123
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3123' AND game_id = '201';
-- map via giantbomb id for session 3124
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3124' AND game_id = '201';
-- map via giantbomb id for session 3125
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '3125' AND game_id = '197';
-- map via giantbomb id for session 3126
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3126' AND game_id = '201';
-- map via giantbomb id for session 3127
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50791' LIMIT 1) WHERE session_id = '3127' AND game_id = '201';
-- map via giantbomb id for session 3128
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3128' AND game_id = '203';
-- map via giantbomb id for session 3129
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '3129' AND game_id = '106';
-- map via giantbomb id for session 3130
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3130' AND game_id = '204';
-- map via giantbomb id for session 3131
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3131' AND game_id = '204';
-- map via giantbomb id for session 3132
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3132' AND game_id = '204';
-- map via giantbomb id for session 3133
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3133' AND game_id = '204';
-- map via giantbomb id for session 3134
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3134' AND game_id = '204';
-- map via giantbomb id for session 3135
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3135' AND game_id = '204';
-- map via giantbomb id for session 3136
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3136' AND game_id = '204';
-- map via giantbomb id for session 3137
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3137' AND game_id = '204';
-- map via giantbomb id for session 3138
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3138' AND game_id = '204';
-- map via giantbomb id for session 3139
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3139' AND game_id = '204';
-- map via giantbomb id for session 3140
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '61116' LIMIT 1) WHERE session_id = '3140' AND game_id = '204';
-- map via giantbomb id for session 3141
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3141' AND game_id = '203';
-- map via giantbomb id for session 3142
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '3142' AND game_id = '106';
-- map via giantbomb id for session 3143
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3143' AND game_id = '203';
-- map via giantbomb id for session 3144
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3144' AND game_id = '203';
-- map via giantbomb id for session 3145
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3145' AND game_id = '203';
-- map via giantbomb id for session 3146
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89326' LIMIT 1) WHERE session_id = '3146' AND game_id = '205';
-- map via giantbomb id for session 3147
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3147' AND game_id = '203';
-- map via giantbomb id for session 3148
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3148' AND game_id = '203';
-- map via giantbomb id for session 3149
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '34407' LIMIT 1) WHERE session_id = '3149' AND game_id = '106';
-- map via giantbomb id for session 3150
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3150' AND game_id = '203';
-- map via giantbomb id for session 3151
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3151' AND game_id = '203';
-- map via giantbomb id for session 3152
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3152' AND game_id = '203';
-- map via giantbomb id for session 3153
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3153' AND game_id = '203';
-- map via giantbomb id for session 3154
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3154' AND game_id = '206';
-- map via giantbomb id for session 3155
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3155' AND game_id = '206';
-- map via giantbomb id for session 3156
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3156' AND game_id = '206';
-- map via giantbomb id for session 3157
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3157' AND game_id = '206';
-- map via giantbomb id for session 3158
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3158' AND game_id = '206';
-- map via giantbomb id for session 3159
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3159' AND game_id = '206';
-- map via giantbomb id for session 3160
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '3160' AND game_id = '164';
-- map via giantbomb id for session 3161
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83332' LIMIT 1) WHERE session_id = '3161' AND game_id = '164';
-- map via giantbomb id for session 3162
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3162' AND game_id = '203';
-- map via giantbomb id for session 3163
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3163' AND game_id = '206';
-- map via giantbomb id for session 3164
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3164' AND game_id = '206';
-- map via giantbomb id for session 3165
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3165' AND game_id = '206';
-- map via giantbomb id for session 3166
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3166' AND game_id = '203';
-- map via giantbomb id for session 3167
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3167' AND game_id = '206';
-- map via giantbomb id for session 3168
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3168' AND game_id = '206';
-- map via giantbomb id for session 3169
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3169' AND game_id = '206';
-- map via giantbomb id for session 3170
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3170' AND game_id = '203';
-- map via giantbomb id for session 3171
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3171' AND game_id = '203';
-- map via giantbomb id for session 3172
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3172' AND game_id = '206';
-- map via giantbomb id for session 3173
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3173' AND game_id = '206';
-- map via giantbomb id for session 3174
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3174' AND game_id = '206';
-- map via giantbomb id for session 3175
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3175' AND game_id = '203';
-- map via giantbomb id for session 3176
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3176' AND game_id = '206';
-- map via giantbomb id for session 3177
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3177' AND game_id = '206';
-- map via giantbomb id for session 3178
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3178' AND game_id = '203';
-- map via giantbomb id for session 3179
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3179' AND game_id = '203';
-- map via giantbomb id for session 3180
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3180' AND game_id = '203';
-- map via giantbomb id for session 3181
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3181' AND game_id = '203';
-- map via giantbomb id for session 3182
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3182' AND game_id = '203';
-- map via giantbomb id for session 3183
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '83764' LIMIT 1) WHERE session_id = '3183' AND game_id = '206';
-- map via giantbomb id for session 3184
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3184' AND game_id = '203';
-- map via giantbomb id for session 3185
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3185' AND game_id = '203';
-- map via giantbomb id for session 3186
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3186' AND game_id = '203';
-- map via giantbomb id for session 3187
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3187' AND game_id = '203';
-- map via giantbomb id for session 3188
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3188' AND game_id = '203';
-- map via giantbomb id for session 3189
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3189' AND game_id = '203';
-- map via giantbomb id for session 3190
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3190' AND game_id = '207';
-- map via giantbomb id for session 3191
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3191' AND game_id = '207';
-- map via giantbomb id for session 3192
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3192' AND game_id = '107';
-- map via giantbomb id for session 3193
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3193' AND game_id = '203';
-- map via giantbomb id for session 3194
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3194' AND game_id = '207';
-- map via giantbomb id for session 3195
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3195' AND game_id = '107';
-- map via giantbomb id for session 3196
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3196' AND game_id = '107';
-- map via giantbomb id for session 3197
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3197' AND game_id = '107';
-- map via giantbomb id for session 3198
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3198' AND game_id = '107';
-- map via giantbomb id for session 3199
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3199' AND game_id = '107';
-- map via giantbomb id for session 3200
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3200' AND game_id = '107';
-- map via giantbomb id for session 3201
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3201' AND game_id = '207';
-- map via giantbomb id for session 3202
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3202' AND game_id = '107';
-- map via giantbomb id for session 3203
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3203' AND game_id = '107';
-- map via giantbomb id for session 3204
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3204' AND game_id = '107';
-- map via giantbomb id for session 3205
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3205' AND game_id = '107';
-- map via giantbomb id for session 3206
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3206' AND game_id = '107';
-- map via giantbomb id for session 3207
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3207' AND game_id = '107';
-- map via giantbomb id for session 3208
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3208' AND game_id = '107';
-- map via giantbomb id for session 3209
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3209' AND game_id = '208';
-- map via giantbomb id for session 3210
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3210' AND game_id = '107';
-- map via giantbomb id for session 3211
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3211' AND game_id = '107';
-- map via giantbomb id for session 3212
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3212' AND game_id = '107';
-- map via giantbomb id for session 3213
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3213' AND game_id = '107';
-- map via giantbomb id for session 3214
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3214' AND game_id = '107';
-- map via giantbomb id for session 3215
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3215' AND game_id = '107';
-- map via giantbomb id for session 3216
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '3216' AND game_id = '197';
-- map via giantbomb id for session 3217
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3217' AND game_id = '208';
-- map via giantbomb id for session 3218
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '66622' LIMIT 1) WHERE session_id = '3218' AND game_id = '209';
-- map via giantbomb id for session 3219
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3219' AND game_id = '208';
-- map via giantbomb id for session 3220
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3220' AND game_id = '107';
-- map via giantbomb id for session 3221
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3221' AND game_id = '107';
-- map via giantbomb id for session 3222
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3222' AND game_id = '107';
-- map via giantbomb id for session 3223
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3223' AND game_id = '107';
-- map via giantbomb id for session 3224
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3224' AND game_id = '208';
-- map via giantbomb id for session 3225
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3225' AND game_id = '107';
-- map via giantbomb id for session 3226
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '57216' LIMIT 1) WHERE session_id = '3226' AND game_id = '107';
-- map via giantbomb id for session 3227
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '3227' AND game_id = '197';
-- map via giantbomb id for session 3228
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3228' AND game_id = '208';
-- map via giantbomb id for session 3229
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89326' LIMIT 1) WHERE session_id = '3229' AND game_id = '205';
-- map via giantbomb id for session 3230
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89326' LIMIT 1) WHERE session_id = '3230' AND game_id = '205';
-- map via giantbomb id for session 3231
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '3231' AND game_id = '197';
-- map via giantbomb id for session 3232
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3232' AND game_id = '203';
-- map via giantbomb id for session 3233
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '3233' AND game_id = '126';
-- map via giantbomb id for session 3234
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '3234' AND game_id = '82';
-- map via giantbomb id for session 3235
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81911' LIMIT 1) WHERE session_id = '3235' AND game_id = '210';
-- map via giantbomb id for session 3236
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81911' LIMIT 1) WHERE session_id = '3236' AND game_id = '210';
-- map via giantbomb id for session 3237
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81911' LIMIT 1) WHERE session_id = '3237' AND game_id = '210';
-- map via giantbomb id for session 3238
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3238' AND game_id = '203';
-- map via giantbomb id for session 3239
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3239' AND game_id = '207';
-- map via giantbomb id for session 3242
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81911' LIMIT 1) WHERE session_id = '3242' AND game_id = '210';
-- map via giantbomb id for session 3243
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81911' LIMIT 1) WHERE session_id = '3243' AND game_id = '210';
-- map via giantbomb id for session 3244
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81911' LIMIT 1) WHERE session_id = '3244' AND game_id = '210';
-- map via giantbomb id for session 3245
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81911' LIMIT 1) WHERE session_id = '3245' AND game_id = '210';
-- map via giantbomb id for session 3246
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81911' LIMIT 1) WHERE session_id = '3246' AND game_id = '210';
-- map via giantbomb id for session 3247
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81911' LIMIT 1) WHERE session_id = '3247' AND game_id = '210';
-- map via giantbomb id for session 3248
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '81911' LIMIT 1) WHERE session_id = '3248' AND game_id = '210';
-- map via giantbomb id for session 3249
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3249' AND game_id = '211';
-- map via giantbomb id for session 3250
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3250' AND game_id = '211';
-- map via giantbomb id for session 3251
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3251' AND game_id = '211';
-- map via giantbomb id for session 3252
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3252' AND game_id = '211';
-- map via giantbomb id for session 3253
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3253' AND game_id = '211';
-- map via giantbomb id for session 3254
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3254' AND game_id = '211';
-- map via giantbomb id for session 3255
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3255' AND game_id = '211';
-- map via giantbomb id for session 3256
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3256' AND game_id = '211';
-- map via giantbomb id for session 3257
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3257' AND game_id = '211';
-- map via giantbomb id for session 3258
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3258' AND game_id = '207';
-- map via giantbomb id for session 3259
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3259' AND game_id = '208';
-- map via giantbomb id for session 3260
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3260' AND game_id = '211';
-- map via giantbomb id for session 3261
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3261' AND game_id = '211';
-- map via giantbomb id for session 3262
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3262' AND game_id = '211';
-- map via giantbomb id for session 3263
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3263' AND game_id = '211';
-- map via giantbomb id for session 3264
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3264' AND game_id = '211';
-- map via giantbomb id for session 3265
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '87185' LIMIT 1) WHERE session_id = '3265' AND game_id = '211';
-- map via giantbomb id for session 3266
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3266' AND game_id = '212';
-- map via giantbomb id for session 3268
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3268' AND game_id = '212';
-- map via giantbomb id for session 3269
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3269' AND game_id = '212';
-- map via giantbomb id for session 3270
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3270' AND game_id = '212';
-- map via giantbomb id for session 3271
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3271' AND game_id = '212';
-- map via giantbomb id for session 3272
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3272' AND game_id = '150';
-- map via giantbomb id for session 3273
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3273' AND game_id = '212';
-- map via giantbomb id for session 3274
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3274' AND game_id = '212';
-- map via giantbomb id for session 3275
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3275' AND game_id = '212';
-- map via giantbomb id for session 3276
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3276' AND game_id = '212';
-- map via giantbomb id for session 3277
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3277' AND game_id = '212';
-- map via giantbomb id for session 3278
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3278' AND game_id = '212';
-- map via giantbomb id for session 3279
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3279' AND game_id = '212';
-- map via giantbomb id for session 3280
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78950' LIMIT 1) WHERE session_id = '3280' AND game_id = '212';
-- map via giantbomb id for session 3281
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3281' AND game_id = '216';
-- map via giantbomb id for session 3282
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3282' AND game_id = '216';
-- map via giantbomb id for session 3283
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3283' AND game_id = '216';
-- map via giantbomb id for session 3284
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3284' AND game_id = '216';
-- map via giantbomb id for session 3285
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3285' AND game_id = '216';
-- map via giantbomb id for session 3286
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3286' AND game_id = '216';
-- map via giantbomb id for session 3287
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3287' AND game_id = '216';
-- map via giantbomb id for session 3288
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3288' AND game_id = '216';
-- map via giantbomb id for session 3289
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3289' AND game_id = '216';
-- map via giantbomb id for session 3290
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3290' AND game_id = '216';
-- map via giantbomb id for session 3291
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3291' AND game_id = '216';
-- map via giantbomb id for session 3292
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3292' AND game_id = '216';
-- map via giantbomb id for session 3293
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3293' AND game_id = '216';
-- map via giantbomb id for session 3294
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3294' AND game_id = '216';
-- map via giantbomb id for session 3295
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3295' AND game_id = '216';
-- map via giantbomb id for session 3296
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3296' AND game_id = '216';
-- map via giantbomb id for session 3297
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3297' AND game_id = '216';
-- map via giantbomb id for session 3298
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3298' AND game_id = '216';
-- map via giantbomb id for session 3299
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3299' AND game_id = '216';
-- map via giantbomb id for session 3300
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3300' AND game_id = '216';
-- map via giantbomb id for session 3301
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3301' AND game_id = '216';
-- map via giantbomb id for session 3302
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3302' AND game_id = '216';
-- map via giantbomb id for session 3303
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '3303' AND game_id = '126';
-- map via giantbomb id for session 3305
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3305' AND game_id = '216';
-- map via giantbomb id for session 3306
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3306' AND game_id = '216';
-- map via giantbomb id for session 3307
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3307' AND game_id = '216';
-- map via giantbomb id for session 3308
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3308' AND game_id = '216';
-- map via giantbomb id for session 3309
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3309' AND game_id = '216';
-- map via giantbomb id for session 3310
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3310' AND game_id = '216';
-- map via giantbomb id for session 3311
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3311' AND game_id = '216';
-- map via giantbomb id for session 3312
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3312' AND game_id = '216';
-- map via giantbomb id for session 3313
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3313' AND game_id = '216';
-- map via giantbomb id for session 3314
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3314' AND game_id = '216';
-- map via giantbomb id for session 3315
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3315' AND game_id = '216';
-- map via giantbomb id for session 3316
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3316' AND game_id = '216';
-- map via giantbomb id for session 3317
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3317' AND game_id = '216';
-- map via giantbomb id for session 3318
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3318' AND game_id = '216';
-- map via giantbomb id for session 3319
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3319' AND game_id = '216';
-- map via giantbomb id for session 3320
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '84745' LIMIT 1) WHERE session_id = '3320' AND game_id = '216';
-- map via giantbomb id for session 3321
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54211' LIMIT 1) WHERE session_id = '3321' AND game_id = '217';
-- map via giantbomb id for session 3322
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54211' LIMIT 1) WHERE session_id = '3322' AND game_id = '217';
-- map via giantbomb id for session 3323
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '3323' AND game_id = '126';
-- map via giantbomb id for session 3324
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3324' AND game_id = '218';
-- map via giantbomb id for session 3325
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54211' LIMIT 1) WHERE session_id = '3325' AND game_id = '217';
-- map via giantbomb id for session 3326
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54211' LIMIT 1) WHERE session_id = '3326' AND game_id = '217';
-- map via giantbomb id for session 3327
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54211' LIMIT 1) WHERE session_id = '3327' AND game_id = '217';
-- map via giantbomb id for session 3328
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54211' LIMIT 1) WHERE session_id = '3328' AND game_id = '217';
-- map via giantbomb id for session 3329
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '54211' LIMIT 1) WHERE session_id = '3329' AND game_id = '217';
-- map via giantbomb id for session 3330
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3330' AND game_id = '218';
-- map via giantbomb id for session 3331
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3331' AND game_id = '218';
-- map via giantbomb id for session 3332
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3332' AND game_id = '207';
-- map via giantbomb id for session 3333
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '3333' AND game_id = '197';
-- map via giantbomb id for session 3334
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3334' AND game_id = '218';
-- map via giantbomb id for session 3335
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3335' AND game_id = '207';
-- map via giantbomb id for session 3336
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3336' AND game_id = '219';
-- map via giantbomb id for session 3337
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3337' AND game_id = '218';
-- map via giantbomb id for session 3338
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3338' AND game_id = '218';
-- map via giantbomb id for session 3339
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3339' AND game_id = '219';
-- map via giantbomb id for session 3340
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3340' AND game_id = '219';
-- map via giantbomb id for session 3341
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3341' AND game_id = '219';
-- map via giantbomb id for session 3342
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3342' AND game_id = '219';
-- map via giantbomb id for session 3343
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3343' AND game_id = '219';
-- map via giantbomb id for session 3344
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3344' AND game_id = '218';
-- map via giantbomb id for session 3345
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3345' AND game_id = '219';
-- map via giantbomb id for session 3346
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3346' AND game_id = '219';
-- map via giantbomb id for session 3347
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3347' AND game_id = '219';
-- map via giantbomb id for session 3348
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3348' AND game_id = '219';
-- map via giantbomb id for session 3349
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3349' AND game_id = '219';
-- map via giantbomb id for session 3350
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3350' AND game_id = '219';
-- map via giantbomb id for session 3351
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '73741' LIMIT 1) WHERE session_id = '3351' AND game_id = '219';
-- map via giantbomb id for session 3352
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3352' AND game_id = '218';
-- map via giantbomb id for session 3353
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3353' AND game_id = '218';
-- map via giantbomb id for session 3354
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3354' AND game_id = '220';
-- map via giantbomb id for session 3355
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3355' AND game_id = '220';
-- map via giantbomb id for session 3356
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3356' AND game_id = '220';
-- map via giantbomb id for session 3357
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3357' AND game_id = '220';
-- map via giantbomb id for session 3358
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3358' AND game_id = '220';
-- map via giantbomb id for session 3359
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3359' AND game_id = '220';
-- map via giantbomb id for session 3360
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3360' AND game_id = '220';
-- map via giantbomb id for session 3361
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3361' AND game_id = '220';
-- map via giantbomb id for session 3362
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3362' AND game_id = '218';
-- map via giantbomb id for session 3363
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3363' AND game_id = '220';
-- map via giantbomb id for session 3364
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3364' AND game_id = '220';
-- map via giantbomb id for session 3365
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '92374' LIMIT 1) WHERE session_id = '3365' AND game_id = '218';
-- map via giantbomb id for session 3366
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3366' AND game_id = '220';
-- map via giantbomb id for session 3367
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3367' AND game_id = '220';
-- map via giantbomb id for session 3368
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3368' AND game_id = '220';
-- map via giantbomb id for session 3369
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3369' AND game_id = '220';
-- map via giantbomb id for session 3370
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3370' AND game_id = '207';
-- map via giantbomb id for session 3371
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3371' AND game_id = '220';
-- map via giantbomb id for session 3372
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3372' AND game_id = '220';
-- map via giantbomb id for session 3373
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3373' AND game_id = '220';
-- map via giantbomb id for session 3374
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3374' AND game_id = '220';
-- map via giantbomb id for session 3375
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3375' AND game_id = '220';
-- map via giantbomb id for session 3376
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3376' AND game_id = '220';
-- map via giantbomb id for session 3377
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3377' AND game_id = '220';
-- map via giantbomb id for session 3378
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3378' AND game_id = '220';
-- map via giantbomb id for session 3379
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3379' AND game_id = '220';
-- map via giantbomb id for session 3380
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3380' AND game_id = '207';
-- map via giantbomb id for session 3382
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3382' AND game_id = '220';
-- map via giantbomb id for session 3383
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3383' AND game_id = '220';
-- map via giantbomb id for session 3384
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3384' AND game_id = '220';
-- map via giantbomb id for session 3385
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3385' AND game_id = '220';
-- map via giantbomb id for session 3386
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3386' AND game_id = '220';
-- map via giantbomb id for session 3387
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3387' AND game_id = '220';
-- map via giantbomb id for session 3388
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '89235' LIMIT 1) WHERE session_id = '3388' AND game_id = '197';
-- map via giantbomb id for session 3389
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53692' LIMIT 1) WHERE session_id = '3389' AND game_id = '221';
-- map via giantbomb id for session 3390
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3390' AND game_id = '220';
-- map via giantbomb id for session 3391
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3391' AND game_id = '220';
-- map via giantbomb id for session 3392
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '93395' LIMIT 1) WHERE session_id = '3392' AND game_id = '222';
-- map via giantbomb id for session 3393
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3393' AND game_id = '208';
-- map via giantbomb id for session 3394
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3394' AND game_id = '220';
-- map via giantbomb id for session 3395
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '53692' LIMIT 1) WHERE session_id = '3395' AND game_id = '221';
-- map via giantbomb id for session 3396
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3396' AND game_id = '220';
-- map via giantbomb id for session 3397
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3397' AND game_id = '220';
-- map via giantbomb id for session 3398
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3398' AND game_id = '220';
-- map via giantbomb id for session 3399
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3399' AND game_id = '220';
-- map via giantbomb id for session 3400
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '93395' LIMIT 1) WHERE session_id = '3400' AND game_id = '222';
-- map via giantbomb id for session 3401
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3401' AND game_id = '220';
-- map via giantbomb id for session 3402
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3402' AND game_id = '220';
-- map via giantbomb id for session 3403
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3403' AND game_id = '220';
-- map via giantbomb id for session 3404
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3404' AND game_id = '220';
-- map via giantbomb id for session 3405
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3405' AND game_id = '220';
-- map via giantbomb id for session 3406
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3406' AND game_id = '220';
-- map via giantbomb id for session 3407
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '59593' LIMIT 1) WHERE session_id = '3407' AND game_id = '203';
-- map via giantbomb id for session 3408
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3408' AND game_id = '220';
-- map via giantbomb id for session 3409
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3409' AND game_id = '220';
-- map via giantbomb id for session 3410
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3410' AND game_id = '220';
-- map via giantbomb id for session 3411
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3411' AND game_id = '220';
-- map via giantbomb id for session 3412
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3412' AND game_id = '220';
-- map via giantbomb id for session 3413
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3413' AND game_id = '220';
-- map via giantbomb id for session 3414
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3414' AND game_id = '220';
-- map via giantbomb id for session 3415
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3415' AND game_id = '220';
-- map via giantbomb id for session 3416
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3416' AND game_id = '220';
-- map via giantbomb id for session 3417
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3417' AND game_id = '220';
-- map via giantbomb id for session 3418
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3418' AND game_id = '220';
-- map via giantbomb id for session 3419
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3419' AND game_id = '220';
-- map via giantbomb id for session 3420
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3420' AND game_id = '220';
-- map via giantbomb id for session 3421
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3421' AND game_id = '220';
-- map via giantbomb id for session 3422
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3422' AND game_id = '220';
-- map via giantbomb id for session 3423
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3423' AND game_id = '220';
-- map via giantbomb id for session 3424
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3424' AND game_id = '220';
-- map via giantbomb id for session 3425
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3425' AND game_id = '220';
-- map via giantbomb id for session 3426
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3426' AND game_id = '220';
-- map via giantbomb id for session 3427
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3427' AND game_id = '220';
-- map via giantbomb id for session 3428
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3428' AND game_id = '220';
-- map via giantbomb id for session 3429
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3429' AND game_id = '220';
-- map via giantbomb id for session 3430
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3430' AND game_id = '220';
-- map via giantbomb id for session 3431
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3431' AND game_id = '220';
-- map via giantbomb id for session 3432
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3432' AND game_id = '220';
-- map via giantbomb id for session 3433
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3433' AND game_id = '220';
-- map via giantbomb id for session 3434
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3434' AND game_id = '220';
-- map via giantbomb id for session 3435
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3435' AND game_id = '150';
-- map via giantbomb id for session 3436
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3436' AND game_id = '220';
-- map via giantbomb id for session 3437
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3437' AND game_id = '220';
-- map via giantbomb id for session 3438
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3438' AND game_id = '220';
-- map via giantbomb id for session 3439
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3439' AND game_id = '220';
-- map via giantbomb id for session 3440
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3440' AND game_id = '220';
-- map via giantbomb id for session 3441
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3441' AND game_id = '220';
-- map via giantbomb id for session 3442
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3442' AND game_id = '220';
-- map via giantbomb id for session 3443
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '56725' LIMIT 1) WHERE session_id = '3443' AND game_id = '220';
-- map via giantbomb id for session 3444
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68937' LIMIT 1) WHERE session_id = '3444' AND game_id = '134';
-- map via giantbomb id for session 3445
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68937' LIMIT 1) WHERE session_id = '3445' AND game_id = '134';
-- map via giantbomb id for session 3446
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68937' LIMIT 1) WHERE session_id = '3446' AND game_id = '134';
-- map via giantbomb id for session 3447
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76480' LIMIT 1) WHERE session_id = '3447' AND game_id = '223';
-- map via giantbomb id for session 3448
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76480' LIMIT 1) WHERE session_id = '3448' AND game_id = '223';
-- map via giantbomb id for session 3449
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '76480' LIMIT 1) WHERE session_id = '3449' AND game_id = '223';
-- map via giantbomb id for session 3450
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '93395' LIMIT 1) WHERE session_id = '3450' AND game_id = '222';
-- map via giantbomb id for session 3451
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '82950' LIMIT 1) WHERE session_id = '3451' AND game_id = '224';
-- map via giantbomb id for session 3452
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3452' AND game_id = '225';
-- map via giantbomb id for session 3453
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3453' AND game_id = '225';
-- map via giantbomb id for session 3454
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3454' AND game_id = '225';
-- map via giantbomb id for session 3455
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '93395' LIMIT 1) WHERE session_id = '3455' AND game_id = '222';
-- map via giantbomb id for session 3456
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3456' AND game_id = '225';
-- map via giantbomb id for session 3457
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3457' AND game_id = '225';
-- map via giantbomb id for session 3458
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3458' AND game_id = '225';
-- map via giantbomb id for session 3459
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3459' AND game_id = '225';
-- map via giantbomb id for session 3460
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3460' AND game_id = '225';
-- map via giantbomb id for session 3461
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3461' AND game_id = '225';
-- map via giantbomb id for session 3462
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3462' AND game_id = '225';
-- map via giantbomb id for session 3463
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3463' AND game_id = '225';
-- map via giantbomb id for session 3464
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3464' AND game_id = '225';
-- map via giantbomb id for session 3465
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3465' AND game_id = '225';
-- map via giantbomb id for session 3466
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3466' AND game_id = '150';
-- map via giantbomb id for session 3467
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3467' AND game_id = '225';
-- map via giantbomb id for session 3468
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3468' AND game_id = '225';
-- map via giantbomb id for session 3469
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3469' AND game_id = '225';
-- map via giantbomb id for session 3470
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3470' AND game_id = '225';
-- map via giantbomb id for session 3471
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3471' AND game_id = '225';
-- map via giantbomb id for session 3472
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3472' AND game_id = '225';
-- map via giantbomb id for session 3473
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3473' AND game_id = '225';
-- map via giantbomb id for session 3474
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3474' AND game_id = '225';
-- map via giantbomb id for session 3475
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3475' AND game_id = '225';
-- map via giantbomb id for session 3476
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3476' AND game_id = '225';
-- map via giantbomb id for session 3477
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3477' AND game_id = '225';
-- map via giantbomb id for session 3478
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3478' AND game_id = '225';
-- map via giantbomb id for session 3479
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3479' AND game_id = '225';
-- map via giantbomb id for session 3480
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3480' AND game_id = '225';
-- map via giantbomb id for session 3481
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3481' AND game_id = '225';
-- map via giantbomb id for session 3482
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3482' AND game_id = '225';
-- map via giantbomb id for session 3483
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3483' AND game_id = '225';
-- map via giantbomb id for session 3484
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3484' AND game_id = '225';
-- map via giantbomb id for session 3485
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3485' AND game_id = '225';
-- map via giantbomb id for session 3486
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3486' AND game_id = '225';
-- map via giantbomb id for session 3487
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3487' AND game_id = '225';
-- map via giantbomb id for session 3488
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3488' AND game_id = '225';
-- map via giantbomb id for session 3489
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3489' AND game_id = '225';
-- map via giantbomb id for session 3490
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3490' AND game_id = '225';
-- map via giantbomb id for session 3491
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3491' AND game_id = '225';
-- map via giantbomb id for session 3492
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3492' AND game_id = '225';
-- map via giantbomb id for session 3493
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3493' AND game_id = '225';
-- map via giantbomb id for session 3494
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3494' AND game_id = '225';
-- map via giantbomb id for session 3495
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3495' AND game_id = '225';
-- map via giantbomb id for session 3496
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3496' AND game_id = '225';
-- map via giantbomb id for session 3497
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3497' AND game_id = '225';
-- map via giantbomb id for session 3498
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3498' AND game_id = '225';
-- map via giantbomb id for session 3499
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3499' AND game_id = '225';
-- map via giantbomb id for session 3500
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3500' AND game_id = '150';
-- map via giantbomb id for session 3501
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3501' AND game_id = '225';
-- map via giantbomb id for session 3502
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3502' AND game_id = '225';
-- map via giantbomb id for session 3503
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3503' AND game_id = '225';
-- map via giantbomb id for session 3504
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3504' AND game_id = '225';
-- map via giantbomb id for session 3505
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3505' AND game_id = '225';
-- map via giantbomb id for session 3506
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '72161' LIMIT 1) WHERE session_id = '3506' AND game_id = '225';
-- map via giantbomb id for session 3507
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3507' AND game_id = '105';
-- map via giantbomb id for session 3508
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3508' AND game_id = '105';
-- map via giantbomb id for session 3509
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3509' AND game_id = '226';
-- map via giantbomb id for session 3510
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3510' AND game_id = '150';
-- map via giantbomb id for session 3511
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '42929' LIMIT 1) WHERE session_id = '3511' AND game_id = '9';
-- map via giantbomb id for session 3512
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '3512' AND game_id = '1';
-- map via giantbomb id for session 3513
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3513' AND game_id = '207';
-- map via giantbomb id for session 3514
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '69787' LIMIT 1) WHERE session_id = '3514' AND game_id = '150';
-- map via giantbomb id for session 3515
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3515' AND game_id = '226';
-- map via giantbomb id for session 3516
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '3516' AND game_id = '1';
-- map via giantbomb id for session 3517
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3517' AND game_id = '226';
-- map via giantbomb id for session 3518
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '3518' AND game_id = '1';
-- map via giantbomb id for session 3519
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '50899' LIMIT 1) WHERE session_id = '3519' AND game_id = '1';
-- map via giantbomb id for session 3521
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3521' AND game_id = '226';
-- map via giantbomb id for session 3522
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3522' AND game_id = '226';
-- map via giantbomb id for session 3523
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3523' AND game_id = '226';
-- map via giantbomb id for session 3524
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3524' AND game_id = '226';
-- map via giantbomb id for session 3525
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3525' AND game_id = '226';
-- map via giantbomb id for session 3526
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3526' AND game_id = '226';
-- map via giantbomb id for session 3527
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3527' AND game_id = '226';
-- map via giantbomb id for session 3528
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3528' AND game_id = '226';
-- map via giantbomb id for session 3529
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '78952' LIMIT 1) WHERE session_id = '3529' AND game_id = '226';
-- map via giantbomb id for session 3530
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3530' AND game_id = '227';
-- map via giantbomb id for session 3532
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3532' AND game_id = '227';
-- map via giantbomb id for session 3533
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3533' AND game_id = '227';
-- map via giantbomb id for session 3534
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3534' AND game_id = '227';
-- map via giantbomb id for session 3535
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3535' AND game_id = '227';
-- map via giantbomb id for session 3536
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3536' AND game_id = '228';
-- map via giantbomb id for session 3537
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3537' AND game_id = '228';
-- map via giantbomb id for session 3538
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3538' AND game_id = '228';
-- map via giantbomb id for session 3539
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3539' AND game_id = '228';
-- map via giantbomb id for session 3540
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3540' AND game_id = '228';
-- map via giantbomb id for session 3541
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3541' AND game_id = '228';
-- map via giantbomb id for session 3542
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '3542' AND game_id = '126';
-- map via giantbomb id for session 3544
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3544' AND game_id = '228';
-- map via giantbomb id for session 3545
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3545' AND game_id = '228';
-- map via giantbomb id for session 3546
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '62377' LIMIT 1) WHERE session_id = '3546' AND game_id = '126';
-- map via giantbomb id for session 3547
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3547' AND game_id = '228';
-- map via giantbomb id for session 3548
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3548' AND game_id = '228';
-- map via giantbomb id for session 3549
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3549' AND game_id = '228';
-- map via giantbomb id for session 3550
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3550' AND game_id = '228';
-- map via giantbomb id for session 3551
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3551' AND game_id = '227';
-- map via giantbomb id for session 3552
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3552' AND game_id = '228';
-- map via giantbomb id for session 3553
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3553' AND game_id = '228';
-- map via giantbomb id for session 3554
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3554' AND game_id = '228';
-- map via giantbomb id for session 3555
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3555' AND game_id = '228';
-- map via giantbomb id for session 3556
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3556' AND game_id = '228';
-- map via giantbomb id for session 3557
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3557' AND game_id = '228';
-- map via giantbomb id for session 3558
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3558' AND game_id = '228';
-- map via giantbomb id for session 3559
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3559' AND game_id = '228';
-- map via giantbomb id for session 3560
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3560' AND game_id = '228';
-- map via giantbomb id for session 3561
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3561' AND game_id = '228';
-- map via giantbomb id for session 3562
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3562' AND game_id = '228';
-- map via giantbomb id for session 3563
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3563' AND game_id = '228';
-- map via giantbomb id for session 3564
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3564' AND game_id = '228';
-- map via giantbomb id for session 3565
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3565' AND game_id = '228';
-- map via giantbomb id for session 3566
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3566' AND game_id = '228';
-- map via giantbomb id for session 3567
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68948' LIMIT 1) WHERE session_id = '3567' AND game_id = '57';
-- map via giantbomb id for session 3570
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3570' AND game_id = '228';
-- map via giantbomb id for session 3571
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3571' AND game_id = '228';
-- map via giantbomb id for session 3572
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3572' AND game_id = '228';
-- map via giantbomb id for session 3573
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3573' AND game_id = '228';
-- map via giantbomb id for session 3574
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3574' AND game_id = '228';
-- map via giantbomb id for session 3575
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3575' AND game_id = '228';
-- map via giantbomb id for session 3576
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3576' AND game_id = '228';
-- map via giantbomb id for session 3577
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68948' LIMIT 1) WHERE session_id = '3577' AND game_id = '57';
-- map via giantbomb id for session 3578
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3578' AND game_id = '228';
-- map via giantbomb id for session 3579
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3579' AND game_id = '228';
-- map via giantbomb id for session 3580
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3580' AND game_id = '228';
-- map via giantbomb id for session 3581
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3581' AND game_id = '228';
-- map via giantbomb id for session 3582
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3582' AND game_id = '228';
-- map via giantbomb id for session 3583
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3583' AND game_id = '228';
-- map via giantbomb id for session 3584
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3584' AND game_id = '228';
-- map via giantbomb id for session 3585
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3585' AND game_id = '228';
-- map via giantbomb id for session 3586
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3586' AND game_id = '228';
-- map via giantbomb id for session 3587
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3587' AND game_id = '228';
-- map via giantbomb id for session 3588
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3588' AND game_id = '228';
-- map via giantbomb id for session 3589
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3589' AND game_id = '228';
-- map via giantbomb id for session 3590
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3590' AND game_id = '228';
-- map via giantbomb id for session 3591
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3591' AND game_id = '228';
-- map via giantbomb id for session 3592
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3592' AND game_id = '228';
-- map via giantbomb id for session 3593
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3593' AND game_id = '105';
-- map via giantbomb id for session 3595
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3595' AND game_id = '228';
-- map via giantbomb id for session 3596
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3596' AND game_id = '105';
-- map via giantbomb id for session 3597
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3597' AND game_id = '228';
-- map via giantbomb id for session 3598
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3598' AND game_id = '228';
-- map via giantbomb id for session 3599
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3599' AND game_id = '228';
-- map via giantbomb id for session 3600
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3600' AND game_id = '228';
-- map via giantbomb id for session 3601
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3601' AND game_id = '228';
-- map via giantbomb id for session 3602
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3602' AND game_id = '105';
-- map via giantbomb id for session 3603
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '48113' LIMIT 1) WHERE session_id = '3603' AND game_id = '207';
-- map via giantbomb id for session 3604
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3604' AND game_id = '105';
-- map via giantbomb id for session 3605
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3605' AND game_id = '105';
-- map via giantbomb id for session 3606
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3606' AND game_id = '105';
-- map via giantbomb id for session 3607
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3607' AND game_id = '105';
-- map via giantbomb id for session 3608
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3608' AND game_id = '105';
-- map via giantbomb id for session 3609
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3609' AND game_id = '105';
-- map via giantbomb id for session 3610
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3610' AND game_id = '105';
-- map via giantbomb id for session 3611
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3611' AND game_id = '105';
-- map via giantbomb id for session 3612
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3612' AND game_id = '105';
-- map via giantbomb id for session 3613
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3613' AND game_id = '105';
-- map via giantbomb id for session 3614
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3614' AND game_id = '105';
-- map via giantbomb id for session 3615
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68951' LIMIT 1) WHERE session_id = '3615' AND game_id = '105';
-- map via giantbomb id for session 3616
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3616' AND game_id = '229';
-- map via giantbomb id for session 3617
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3617' AND game_id = '229';
-- map via giantbomb id for session 3618
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3618' AND game_id = '229';
-- map via giantbomb id for session 3619
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3619' AND game_id = '229';
-- map via giantbomb id for session 3620
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3620' AND game_id = '229';
-- map via giantbomb id for session 3621
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3621' AND game_id = '229';
-- map via giantbomb id for session 3622
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3622' AND game_id = '229';
-- map via giantbomb id for session 3623
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3623' AND game_id = '229';
-- map via giantbomb id for session 3624
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3624' AND game_id = '229';
-- map via giantbomb id for session 3625
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3625' AND game_id = '229';
-- map via giantbomb id for session 3626
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3626' AND game_id = '229';
-- map via giantbomb id for session 3627
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3627' AND game_id = '229';
-- map via giantbomb id for session 3628
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3628' AND game_id = '229';
-- map via giantbomb id for session 3629
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3629' AND game_id = '229';
-- map via giantbomb id for session 3630
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3630' AND game_id = '229';
-- map via giantbomb id for session 3631
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3631' AND game_id = '229';
-- map via giantbomb id for session 3632
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3632' AND game_id = '229';
-- map via giantbomb id for session 3633
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3633' AND game_id = '229';
-- map via giantbomb id for session 3634
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3634' AND game_id = '229';
-- map via giantbomb id for session 3635
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3635' AND game_id = '229';
-- map via giantbomb id for session 3636
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3636' AND game_id = '229';
-- map via giantbomb id for session 3637
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3637' AND game_id = '229';
-- map via giantbomb id for session 3638
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3638' AND game_id = '229';
-- map via giantbomb id for session 3639
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3639' AND game_id = '229';
-- map via giantbomb id for session 3640
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3640' AND game_id = '229';
-- map via giantbomb id for session 3641
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3641' AND game_id = '229';
-- map via giantbomb id for session 3642
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3642' AND game_id = '229';
-- map via giantbomb id for session 3643
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3643' AND game_id = '229';
-- map via giantbomb id for session 3644
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '68608' LIMIT 1) WHERE session_id = '3644' AND game_id = '82';
-- map via giantbomb id for session 3645
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3645' AND game_id = '230';
-- map via giantbomb id for session 3646
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3646' AND game_id = '230';
-- map via giantbomb id for session 3648
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3648' AND game_id = '229';
-- map via giantbomb id for session 3649
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3649' AND game_id = '229';
-- map via giantbomb id for session 3650
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3650' AND game_id = '229';
-- map via giantbomb id for session 3651
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3651' AND game_id = '229';
-- map via giantbomb id for session 3652
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3652' AND game_id = '229';
-- map via giantbomb id for session 3653
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3653' AND game_id = '229';
-- map via giantbomb id for session 3654
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3654' AND game_id = '229';
-- map via giantbomb id for session 3655
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3655' AND game_id = '229';
-- map via giantbomb id for session 3656
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3656' AND game_id = '229';
-- map via giantbomb id for session 3657
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3657' AND game_id = '229';
-- map via giantbomb id for session 3658
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3658' AND game_id = '229';
-- map via giantbomb id for session 3659
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3659' AND game_id = '229';
-- map via giantbomb id for session 3660
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3660' AND game_id = '229';
-- map via giantbomb id for session 3661
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3661' AND game_id = '229';
-- map via giantbomb id for session 3662
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3662' AND game_id = '229';
-- map via giantbomb id for session 3663
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3663' AND game_id = '229';
-- map via giantbomb id for session 3664
UPDATE public.sessions SET game_id = (SELECT id FROM public.games WHERE giantbomb_id = '0' LIMIT 1) WHERE session_id = '3664' AND game_id = '229';

COMMIT;
