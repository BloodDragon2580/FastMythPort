local myName, me = ...
local L = me.L
local _, core = ...
core.FastMythPort = {}
local FastMythPort = core.FastMythPort
core.sourceOrder = { 
    L["Keystone Hero Portals"],
    L["Fate of Mythic Raids"]
}

FastMythPort[L["Keystone Hero Portals"]] = {
    -- 9.2 SL Season 3
    {id = 354462, type = 'spell', name = 'Path of the Courageous', unobtainable = false},
    {id = 354463, type = 'spell', name = 'Path of the Plagued', unobtainable = false},
    {id = 354464, type = 'spell', name = 'Path of the Misty Forest', unobtainable = false},
    {id = 354465, type = 'spell', name = 'Path of the Sinful Soul', unobtainable = false},
    {id = 354466, type = 'spell', name = 'Path of the Ascendant', unobtainable = false},
    {id = 354467, type = 'spell', name = 'Path of the Undefeated', unobtainable = false},
    {id = 354468, type = 'spell', name = 'Path of the Scheming Loa', unobtainable = false},
    {id = 354469, type = 'spell', name = 'Path of the Stone Warden', unobtainable = false},
    {id = 367416, type = 'spell', name = 'Path of the Streetwise Merchant', unobtainable = false},
    -- 9.2.5 SL Season 4,
    {id = 159896, type = 'spell', name = 'Path of the Iron Prow', unobtainable = false},
    {id = 159900, type = 'spell', name = 'Path of the Dark Rail', unobtainable = false},
    {id = 373262, type = 'spell', name = 'Path of the Fallen Guardian', unobtainable = false},
    {id = 373274, type = 'spell', name = 'Path of the Scrappy Prince', unobtainable = false},
    -- 10.0.2 DF Season 1,
    {id = 159899, type = 'spell', name = 'Path of the Crescent Moon', unobtainable = false},
    {id = 131204, type = 'spell', name = 'Path of the Jade Serpent', unobtainable = false},
    {id = 393766, type = 'spell', name = 'Path of the Grand Magistrix', unobtainable = false},
    {id = 393764, type = 'spell', name = 'Path of Proven Worth', unobtainable = false},
    {id = 393262, type = 'spell', name = 'Path of the Windswept Plains', unobtainable = false},
    {id = 393279, type = 'spell', name = 'Path of Arcane Secrets', unobtainable = false},
    {id = 393273, type = 'spell', name = 'Path of the Draconic Diploma', unobtainable = false},
    {id = 393256, type = 'spell', name = 'Path of the Clutch Defender', unobtainable = false},
    {id = 393222, type = 'spell', name = 'Path of the Watchers Legacy', unobtainable = false},
    {id = 393276, type = 'spell', name = 'Path of the Obsidian Hoard', unobtainable = false},
    {id = 393283, type = 'spell', name = 'Path of the Titanic Reservoir', unobtainable = false},
    {id = 393267, type = 'spell', name = 'Path of the Rotting Woods', unobtainable = false}
}

FastMythPort[L["Fate of Mythic Raids"]] = {
    -- 9.2.5 SL Mythic Fated Raid
    {id = 373190, type = 'spell', name = 'Path of the Sire', unobtainable = false},
    {id = 373191, type = 'spell', name = 'Path of the Tormented Soul', unobtainable = false},
    {id = 373192, type = 'spell', name = 'Path of the First Ones', unobtainable = false}
}
