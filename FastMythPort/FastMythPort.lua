local myName, me = ...
local L = me.L
local _, core = ...
core.FastMythPort = {}
local FastMythPort = core.FastMythPort

-- Order / sections shown in the UI
core.sourceOrder = {
    L["The Burning Crusade"],
--     L["Wrath of the Lich King"],
    L["Cataclysm"],
    L["Mists of Pandaria"],
    L["Warlords of Draenor"],
    L["Legion"],
    L["Battle for Azeroth"],
    L["Shadowlands"],
    L["Dragonflight"],
    L["War Within"],
    L["Shadowlands Raids"],
    L["Dragonflight Raids"],
    L["War Within Raids"],
}

-- NOTE:
-- The UI filters by:
--  * item.type == 'spell' and IsPlayerSpell(item.id)
--  * optional item.faction ("Alliance"/"Horde") and item.class
-- So wrong SpellIDs = missing/incorrect availability in-game.

-- ======================
-- The Burning Crusade
-- (no Mythic+ teleport spells here in retail at the moment)
-- ======================
FastMythPort[L["The Burning Crusade"]] = {}

-- ======================
-- Wrath of the Lich King
-- ======================
-- FastMythPort[L["Wrath of the Lich King"]] = {
--     { id = 1254555, type = 'spell', name = "Path of Unyielding Blight", unobtainable = false },   -- Pit of Saron
-- }

-- ======================
-- Cataclysm
-- ======================
FastMythPort[L["Cataclysm"]] = {
    { id = 410080, type = 'spell', name = "Path of Wind's Domain", unobtainable = false },         -- Vortex Pinnacle
    { id = 424142, type = 'spell', name = "Path of the Tidehunter", unobtainable = false },        -- Throne of the Tides
    { id = 445424, type = 'spell', name = "Path of the Twilight Fortress", unobtainable = false }, -- Grim Batol
}

-- ======================
-- Mists of Pandaria
-- ======================
FastMythPort[L["Mists of Pandaria"]] = {
    { id = 131204, type = 'spell', name = "Path of the Jade Serpent", unobtainable = false },      -- Temple of the Jade Serpent
    { id = 131228, type = 'spell', name = "Path of the Black Ox", unobtainable = false },          -- Siege of Niuzao Temple
    { id = 131232, type = 'spell', name = "Path of the Necromancer", unobtainable = false },       -- Scholomance
    { id = 131229, type = 'spell', name = "Path of the Scarlet Mitre", unobtainable = false },     -- Scarlet Monastery
    { id = 131231, type = 'spell', name = "Path of the Scarlet Blade", unobtainable = false },     -- Scarlet Halls
    { id = 131225, type = 'spell', name = "Path of the Setting Sun", unobtainable = false },       -- Gate of the Setting Sun
    { id = 131222, type = 'spell', name = "Path of the Mogu King", unobtainable = false },         -- Mogu'shan Palace
    { id = 131206, type = 'spell', name = "Path of the Shado-Pan", unobtainable = false },         -- Shado-Pan Monastery
    { id = 131205, type = 'spell', name = "Path of the Stout Brew", unobtainable = false },        -- Stormstout Brewery
}

-- ======================
-- Warlords of Draenor
-- ======================
FastMythPort[L["Warlords of Draenor"]] = {
    { id = 159899,  type = 'spell', name = "Path of the Crescent Moon", unobtainable = false },    -- Shadowmoon Burial Grounds
    { id = 159901,  type = 'spell', name = "Path of the Verdant", unobtainable = false },          -- The Everbloom
    { id = 159895,  type = 'spell', name = "Path of the Bloodmaul", unobtainable = false },        -- Bloodmaul Slag Mines
    { id = 159897,  type = 'spell', name = "Path of the Vigilant", unobtainable = false },         -- Auchindoun
    { id = 159898, type = 'spell', name = "Path of the Skies", unobtainable = false },             -- Skyreach
    { id = 159902,  type = 'spell', name = "Path of the Burning Mountain", unobtainable = false }, -- Upper Blackrock Spire
    { id = 159900,  type = 'spell', name = "Path of the Dark Rail", unobtainable = false },        -- Grimrail Depot
    { id = 159896,  type = 'spell', name = "Path of the Iron Prow", unobtainable = false },        -- Iron Docks
}

-- ======================
-- Legion
-- ======================
FastMythPort[L["Legion"]] = {
    { id = 424163, type = 'spell', name = "Path of the Nightmare Lord", unobtainable = false },    -- Darkheart Thicket
    { id = 424153, type = 'spell', name = "Path of Ancient Horrors", unobtainable = false },       -- Black Rook Hold
    { id = 393764, type = 'spell', name = "Path of Proven Worth", unobtainable = false },          -- Halls of Valor
    { id = 410078, type = 'spell', name = "Path of the Earth-Warder", unobtainable = false },      -- Neltharion's Lair
    { id = 393766, type = 'spell', name = "Path of the Grand Magistrix", unobtainable = false },   -- Court of Stars
    { id = 373262, type = 'spell', name = "Path of the Fallen Guardian", unobtainable = false },   -- Return to Karazhan
--     { id = 1254551, type = 'spell', name = "Path of Dark Dereliction", unobtainable = false },     -- Seat of the Triumvirate
}

-- ======================
-- Battle for Azeroth
-- ======================
FastMythPort[L["Battle for Azeroth"]] = {
    { id = 424187, type = 'spell', name = "Path of the Golden Tomb", unobtainable = false },       -- Atal'Dazar
    { id = 410071, type = 'spell', name = "Path of the Freebooter", unobtainable = false },        -- Freehold
    { id = 424167, type = 'spell', name = "Path of Heart's Bane", unobtainable = false },          -- Waycrest Manor
    { id = 410074, type = 'spell', name = "Path of Festering Rot", unobtainable = false },         -- The Underrot
    { id = 373274, type = 'spell', name = "Path of the Scrappy Prince", unobtainable = false },    -- Operation: Mechagon

    -- Siege of Boralus (2 different spells: Alliance/Horde)
    { id = 445418, type = 'spell', name = "Path of the Besieged Harbor", unobtainable = false, faction = "Alliance" },
    { id = 464256, type = 'spell', name = "Path of the Besieged Harbor", unobtainable = false, faction = "Horde" },

    -- The MOTHERLODE!! (2 different spells: Alliance/Horde)
    { id = 467553, type = 'spell', name = "Path of the Azerite Refinery", unobtainable = false, faction = "Alliance" },
    { id = 467555, type = 'spell', name = "Path of the Azerite Refinery", unobtainable = false, faction = "Horde" },
}

-- ======================
-- Shadowlands
-- ======================
FastMythPort[L["Shadowlands"]] = {
    { id = 354462, type = 'spell', name = "Path of the Courageous", unobtainable = false },        -- Necrotic Wake
    { id = 354463, type = 'spell', name = "Path of the Plagued", unobtainable = false },           -- Plaguefall
    { id = 354464, type = 'spell', name = "Path of the Misty Forest", unobtainable = false },      -- Mists of Tirna Scithe
    { id = 354465, type = 'spell', name = "Path of the Sinful Soul", unobtainable = false },       -- Halls of Atonement
    { id = 354466, type = 'spell', name = "Path of the Ascendant", unobtainable = false },         -- Spires of Ascension
    { id = 354467, type = 'spell', name = "Path of the Undefeated", unobtainable = false },        -- Theatre of Pain
    { id = 354468, type = 'spell', name = "Path of the Scheming Loa", unobtainable = false },      -- De Other Side
    { id = 354469, type = 'spell', name = "Path of the Stone Warden", unobtainable = false },      -- Sanguine Depths
    { id = 367416, type = 'spell', name = "Path of the Streetwise Merchant", unobtainable = false }, -- Tazavesh
}

-- ======================
-- Dragonflight
-- ======================
FastMythPort[L["Dragonflight"]] = {
    { id = 393256, type = 'spell', name = "Path of the Clutch Defender", unobtainable = false },   -- Ruby Life Pools
    { id = 393262, type = 'spell', name = "Path of the Windswept Plains", unobtainable = false },  -- Nokhud Offensive
    { id = 393279, type = 'spell', name = "Path of Arcane Secrets", unobtainable = false },        -- Azure Vault
    { id = 393273, type = 'spell', name = "Path of the Draconic Diploma", unobtainable = false },  -- Algeth'ar Academy
    { id = 393222, type = 'spell', name = "Path of the Watcher's Legacy", unobtainable = false },  -- Uldaman
    { id = 393276, type = 'spell', name = "Path of the Obsidian Hoard", unobtainable = false },    -- Neltharus
    { id = 393267, type = 'spell', name = "Path of the Rotting Woods", unobtainable = false },     -- Brackenhide Hollow
    { id = 393283, type = 'spell', name = "Path of the Titanic Reservoir", unobtainable = false }, -- Halls of Infusion
    { id = 424197, type = 'spell', name = "Path of Twisted Time", unobtainable = false },          -- Dawn of the Infinite
}

-- ======================
-- The War Within
-- ======================
FastMythPort[L["War Within"]] = {
    { id = 445416,  type = 'spell', name = "Path of Nerubian Ascension", unobtainable = false },   -- City of Threads
    { id = 445417,  type = 'spell', name = "Path of the Ruined City", unobtainable = false },      -- Ara-Kara
    { id = 445269,  type = 'spell', name = "Path of the Corrupted Foundry", unobtainable = false },-- The Stonevault
    { id = 445414,  type = 'spell', name = "Path of the Arathi Flagship", unobtainable = false },  -- Dawnbreaker
    { id = 445443,  type = 'spell', name = "Path of the Fallen Stormriders", unobtainable = false },-- The Rookery
    { id = 445441,  type = 'spell', name = "Path of the Warding Candles", unobtainable = false },  -- Darkflame Cleft
    { id = 445440,  type = 'spell', name = "Path of the Flaming Brewery", unobtainable = false },  -- Cinderbrew Brewery
    { id = 445444,  type = 'spell', name = "Path of the Light's Reverence", unobtainable = false },-- Priory of the Sacred Flame

    { id = 1216786, type = 'spell', name = "Path of the Circuit Breaker", unobtainable = false },  -- Operation: Floodgate
    { id = 1237215, type = 'spell', name = "Path of the Eco-Dome", unobtainable = false },         -- Eco-Dome Al'dani
}

-- ======================
-- Shadowlands Raids
-- ======================
FastMythPort[L["Shadowlands Raids"]] = {
    { id = 373190, type = 'spell', name = "Path of the Sire", unobtainable = false },              -- Castle Nathria
    { id = 373191, type = 'spell', name = "Path of the Tormented Soul", unobtainable = false },    -- Sanctum of Domination
    { id = 373192, type = 'spell', name = "Path of the First Ones", unobtainable = false },        -- Sepulcher of the First Ones
}

-- ======================
-- Dragonflight Raids
-- ======================
FastMythPort[L["Dragonflight Raids"]] = {
    { id = 432254, type = 'spell', name = "Path of the Primal Prison", unobtainable = false },     -- Vault of the Incarnates
    { id = 432257, type = 'spell', name = "Path of the Bitter Legacy", unobtainable = false },     -- Aberrus
    { id = 432258, type = 'spell', name = "Path of the Scorching Dream", unobtainable = false },   -- Amirdrassil
}

-- ======================
-- The War Within Raids
-- ======================
FastMythPort[L["War Within Raids"]] = {
    { id = 1226482, type = 'spell', name = "Path of the Liberation of Undermine", unobtainable = false },
    { id = 1239155, type = 'spell', name = "Path of the All-Devouring", unobtainable = false },
}
