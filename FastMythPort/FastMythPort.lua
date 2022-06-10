local LIBRARY_NAME = "FastMythPort"

local Library = _G[LIBRARY_NAME]

if not Library then
    Library = CreateFrame("Frame", LIBRARY_NAME)
    
    Library.MAP_ID_TO_SPELL_ID = {
        [375] = 354464, -- Mists of Tirna Scithe, Path of the Misty Forest
        [376] = 354462, -- The Necrotic Wake, Path of the Courageous
        [377] = 354468, -- De Other Side, Path of the Scheming Loa
        [378] = 354465, -- Halls of Atonement, Path of the Sinful Soul
        [379] = 354463, -- Plagefall, Path of the Plagued
        [380] = 354469, -- Sanguine Depths, Path of the Stone Warden
        [381] = 354466, -- Spires of Ascension, Path of the Ascendant
        [382] = 354467, -- Theatre of Pain, Path of the Undefeated
        [391] = 367416, -- Tazavesh: Streets of Wonde, Path of the Streetwise Merchant
        [392] = 367416, -- Tazavesh: So'Leah's Gambit, Path of the Streetwise Merchant
    }
    
    function Library:Initialize()
        if not IsAddOnLoaded("Blizzard_ChallengesUI") then
            self:RegisterEvent("ADDON_LOADED")
            return
        end
        
        self:RegisterEvent("LOADING_SCREEN_DISABLED")
        self:RegisterEvent("LOADING_SCREEN_ENABLED")
        
        WeakAuras.WatchGCD()
        
        if type(ChallengesFrame_Update) == "function" then
            hooksecurefunc("ChallengesFrame_Update", function () Library:CreateDungeonButtons() end)
        end
        
        Library:CreateDungeonButtons()
    end
    
    function Library:UpdateGameTooltip(parent, spellID, initialize)
        if (self.isLoadingScreenEnabled) then return end
        if (not initialize and not GameTooltip:IsOwned(parent)) then return end
        local Button_OnEnter = parent:GetScript("OnEnter")
        if (not Button_OnEnter) then return end
        
        Button_OnEnter(parent)
        
        if IsSpellKnown(spellID) then
            local name = GetSpellInfo(spellID)
            local start, duration = GetSpellCooldown(spellID)
            
            GameTooltip:AddLine(" ")
            GameTooltip:AddLine(name or TELEPORT_TO_DUNGEON)
            
            if not start or not duration then
                GameTooltip:AddLine(SPELL_FAILED_NOT_KNOWN, 1, 0, 0)
            elseif duration == 0 then
                GameTooltip:AddLine(READY, 0, 1, 0)
            else
                GameTooltip:AddLine(SecondsToTime(ceil(start + duration - GetTime())), 1, 0, 0)
            end
        else
            GameTooltip:AddLine(" ")
            GameTooltip:AddLine(TELEPORT_TO_DUNGEON)
            GameTooltip:AddLine(SPELL_FAILED_NOT_KNOWN, 1, 0, 0)
        end
        
        GameTooltip:Show()
        C_Timer.After(1, function () self:UpdateGameTooltip(parent, spellID) end)
    end
    
    function Library:CreateDungeonButton(parent, spellID)
        if (not spellID) then return end
        local button = self[parent] or CreateFrame("Button", nil, parent, "SecureActionButtonTemplate")
        button:SetAllPoints(parent)
        button:RegisterForClicks("LeftButtonUp")
        button:SetAttribute("type", "spell")
        button:SetAttribute("spell", spellID)
        button:SetScript("OnEnter", function () self:UpdateGameTooltip(parent, spellID, true) end)
        button:SetScript("OnLeave", function () if GameTooltip:IsOwned(parent) then GameTooltip:Hide() end end)
        self[parent] = button
    end
    
    function Library:CreateDungeonButtons()
        if (InCombatLockdown()) then return end
        if (not ChallengesFrame) then return end
        if (not ChallengesFrame.DungeonIcons) then return end
        
        for _, dungeonIcon in next, ChallengesFrame.DungeonIcons do
            self:CreateDungeonButton(dungeonIcon, self.MAP_ID_TO_SPELL_ID[dungeonIcon.mapID])
        end
    end
    
    function Library:OnEvent(event, arg1)
        if event == "ADDON_LOADED" then
            if arg1 == "Blizzard_ChallengesUI" then
                self:Initialize()
                self:UnregisterEvent("ADDON_LOADED")
            end
        elseif event == "LOADING_SCREEN_DISABLED" then
            self.isLoadingScreenEnabled = nil
        elseif event == "LOADING_SCREEN_ENABLED" then
            self.isLoadingScreenEnabled = true
        end
    end
    
    Library:SetScript("OnEvent", function (self, ...) self:OnEvent(...) end)
end

-- Initialize

Library:Initialize()
