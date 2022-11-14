local myName, me = ...
local L = me.L
local _, core = ...
core.FastMythPort = {}
local FastMythPort = core.FastMythPort
core.sourceOrder = { 
    L["Keystone Hero Portals - SL"],
    L["Fate of Mythic Raids - SL"]
}

FastMythPort[L["Keystone Hero Portals - SL"]] = {
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
    {id = 373274, type = 'spell', name = 'Path of the Scrappy Prince', unobtainable = false}
}

FastMythPort[L["Fate of Mythic Raids - SL"]] = {
    -- 9.2.5 SL Mythic Fated Raid
    {id = 373190, type = 'spell', name = 'Path of the Sire', unobtainable = false},
    {id = 373191, type = 'spell', name = 'Path of the Tormented Soul', unobtainable = false},
    {id = 373192, type = 'spell', name = 'Path of the First Ones', unobtainable = false}
}
