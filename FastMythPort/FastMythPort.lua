local myName, me = ...
local L = me.L
local _, core = ...
core.FastMythPort = {}
local FastMythPort = core.FastMythPort
core.sourceOrder = {
    L["Cataclysm"],
    L["Mists of Pandaria"],
    L["Warlords of Draenor"],
    L["Legion"],
    L["Battle for Azeroth"],
    L["Shadowlands"],
    L["Dragonflight"],
    L["War Within"],
    L["Shadowlands Raids"]
}

FastMythPort[L["Cataclysm"]] = {
    {id = 410080, type = 'spell', name = 'Path of Wind\'s Domain', unobtainable = false},
    {id = 424142, type = 'spell', name = 'Path of the Tidehunter', unobtainable = false}
}

FastMythPort[L["Mists of Pandaria"]] = {
    {id = 131204, type = 'spell', name = 'Path of the Jade Serpent', unobtainable = false},
    {id = 131206, type = 'spell', name = 'Path of the Shado-Pan', unobtainable = false},
    {id = 131222, type = 'spell', name = 'Path of the Mogu King', unobtainable = false},
    {id = 131225, type = 'spell', name = 'Path of the Setting Sun', unobtainable = false},
    {id = 131228, type = 'spell', name = 'Path of the Black O', unobtainable = false},
    {id = 131205, type = 'spell', name = 'Path of the Stout Brew', unobtainable = false},
    {id = 131232, type = 'spell', name = 'Path of the Necromancer', unobtainable = false},
    {id = 131231, type = 'spell', name = 'Path of the Scarlet Blade', unobtainable = false},
    {id = 131229, type = 'spell', name = 'Path of the Scarlet Mitre', unobtainable = false}
}

FastMythPort[L["Warlords of Draenor"]] = {
    {id = 159899, type = 'spell', name = 'Path of the Crescent Moon', unobtainable = false},
    {id = 159902, type = 'spell', name = 'Path of the Burning Mountain', unobtainable = false},
    {id = 159898, type = 'spell', name = 'Path of the Skies', unobtainable = false},
    {id = 159895, type = 'spell', name = 'Path of the Bloodmaul', unobtainable = false},
    {id = 159897, type = 'spell', name = 'Path of the Vigilant', unobtainable = false},
    {id = 159901, type = 'spell', name = 'Path of the Verdant', unobtainable = false},
    {id = 159900, type = 'spell', name = 'Path of the Dark Rail', unobtainable = false},
    {id = 159896, type = 'spell', name = 'Path of the Iron Prow', unobtainable = false}
}

FastMythPort[L["Legion"]] = {
    {id = 373262, type = 'spell', name = 'Path of the Fallen Guardian', unobtainable = false},
    {id = 393764, type = 'spell', name = 'Path of Proven Worth', unobtainable = false},
    {id = 393766, type = 'spell', name = 'Path of the Grand Magistrix', unobtainable = false},
    {id = 410078, type = 'spell', name = 'Path of the Earth-Warder', unobtainable = false},
    {id = 424153, type = 'spell', name = 'Path of Ancient Horrors', unobtainable = false},
    {id = 424163, type = 'spell', name = 'Path of the Nightmare Lord', unobtainable = false}
}

FastMythPort[L["Battle for Azeroth"]] = {
    {id = 373274, type = 'spell', name = 'Path of the Scrappy Prince', unobtainable = false},
    {id = 410071, type = 'spell', name = 'Path of the Freebooter', unobtainable = false},
    {id = 410074, type = 'spell', name = 'Path of Festering Rot', unobtainable = false},
    {id = 424167, type = 'spell', name = 'Path of Heart\'s Bane', unobtainable = false},
    {id = 424187, type = 'spell', name = 'Path of the Golden Tomb', unobtainable = false}
}

FastMythPort[L["Shadowlands"]] = {
    {id = 354464, type = 'spell', name = 'Path of the Misty Forest', unobtainable = false},
    {id = 354467, type = 'spell', name = 'Path of the Undefeated', unobtainable = false},
    {id = 354465, type = 'spell', name = 'Path of the Sinful Soul', unobtainable = false},
    {id = 373262, type = 'spell', name = 'Path of the Fallen Guardian', unobtainable = false},
    {id = 354466, type = 'spell', name = 'Path of the Ascendant', unobtainable = false},
    {id = 354468, type = 'spell', name = 'Path of the Scheming Loa', unobtainable = false},
    {id = 354469, type = 'spell', name = 'Path of the Stone Warden', unobtainable = false},
    {id = 354462, type = 'spell', name = 'Path of the Courageous', unobtainable = false},
    {id = 354463, type = 'spell', name = 'Path of the Plagued', unobtainable = false},
    {id = 373274, type = 'spell', name = 'Path of the Scrappy Prince', unobtainable = false},
    {id = 367416, type = 'spell', name = 'Path of the Streetwise Merchant', unobtainable = false}
}

FastMythPort[L["Dragonflight"]] = {
    {id = 393766, type = 'spell', name = 'Path of the Grand Magistrix', unobtainable = false},
    {id = 393279, type = 'spell', name = 'Path of Arcane Secrets', unobtainable = false},
    {id = 393256, type = 'spell', name = 'Path of the Clutch Defender', unobtainable = false},
    {id = 393273, type = 'spell', name = 'Path of the Draconic Diploma', unobtainable = false},
    {id = 393764, type = 'spell', name = 'Path of Proven Worth', unobtainable = false},
    {id = 393262, type = 'spell', name = 'Path of the Windswept Plains', unobtainable = false},
    {id = 393283, type = 'spell', name = 'Path of the Titanic Reservoir', unobtainable = false},
    {id = 393222, type = 'spell', name = 'Path of the Watchers Legacy', unobtainable = false},
    {id = 393276, type = 'spell', name = 'Path of the Obsidian Hoard', unobtainable = false},
    {id = 393267, type = 'spell', name = 'Path of the Rotting Woods', unobtainable = false},
    {id = 424197, type = 'spell', name = 'Path of Twisted Time', unobtainable = false}
}

FastMythPort[L["War Within"]] = {
    {id = 445416, type = 'spell', name = 'Path of the City of Threads', unobtainable = false},
    {id = 445417, type = 'spell', name = 'Path of the Ara-Kara', unobtainable = false},
    {id = 445269, type = 'spell', name = 'Path of the Stonevault', unobtainable = false},
    {id = 445414, type = 'spell', name = 'Path of the Dawnbreaker', unobtainable = false},
    {id = 445443, type = 'spell', name = 'Path of the Rookery', unobtainable = false},
    {id = 445441, type = 'spell', name = 'Path of the Darkflame Cleft', unobtainable = false},
    {id = 445440, type = 'spell', name = 'Path of the Brewery', unobtainable = false},
    {id = 445444, type = 'spell', name = 'Path of the Priory of the Sacred Flame', unobtainable = false},
    {id = 445424, type = 'spell', name = 'Path of the Grim Batol', unobtainable = false},
    {id = 445418, type = 'spell', name = 'Path of the Siege of Boralus', unobtainable = false},
}

FastMythPort[L["Shadowlands Raids"]] = {
    {id = 373190, type = 'spell', name = 'Path of the Sire', unobtainable = false},
    {id = 373191, type = 'spell', name = 'Path of the Tormented Soul', unobtainable = false},
    {id = 373192, type = 'spell', name = 'Path of the First Ones', unobtainable = false}
}
