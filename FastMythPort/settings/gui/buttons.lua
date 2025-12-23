local myName, me = ...
local L = me.L
local ADDON_NAME, core = ...
local defaultBtnSize = 45
local btnScale = 0.85
core.ui = core.ui or {}
core.ui.Buttons = {SIZE = defaultBtnSize * btnScale}

local Buttons = core.ui.Buttons

local function generateChatLinkHandler(self, button)
    if (core.Config.debug) then print(self:GetAttribute('itemid')) end

    if (button == 'RightButton' and IsShiftKeyDown()) then
        if (not self.Link) then
            local itemId = self:GetAttribute('itemid')
            if (self:GetAttribute('type') == 'spell') then
                self.Link = C_Spell.GetSpellLink(itemId)
            else
                self.Link = C_Item.GetItemLinkByID(itemId)
            end
        end

        if (self.Link) then
            ChatEdit_InsertLink(self.Link)
        end
    end
end

local function showDescriptionHandler(self)
    GameTooltip_SetDefaultAnchor(GameTooltip, self)
    GameTooltip:ClearLines()

    local start, duration
    local itemId = self:GetAttribute('itemid')
    local btnType = self:GetAttribute('type')
    if (btnType == 'item') then
        GameTooltip:SetItemByID(itemId)
        start, duration = C_Item.GetItemCooldown(itemId)
    elseif (btnType == 'spell') then
        GameTooltip:SetSpellByID(itemId)
        -- C_Spell.GetSpellCooldown can return nil for unknown/unavailable spells
        local info = C_Spell.GetSpellCooldown(itemId) or {}
        start = info.startTime or 0
        duration = info.duration or 0
    elseif (btnType == 'toy') then
        GameTooltip:SetToyByItemID(itemId)
        start, duration = C_Item.GetItemCooldown(itemId)
    end

    self.cd:SetCooldown(start, duration)
    GameTooltip:ClearAllPoints()
    GameTooltip:SetPoint('BOTTOMLEFT', self, 'TOPRIGHT')

    if (self.favorite) then
        GameTooltip:AddLine(' ')
        GameTooltip:AddLine(L["Ctrl + Left Click to add/remove favorite"], 0.9, 0.9, 0.9)
    end

    GameTooltip:Show()
end

local function toggleFavoritesHandler(self, button)
    if (self.isDisabled or not self.favorite) then return end

    -- ✅ Favorites toggling only via Ctrl + Left Click (prevents accidental remove while teleporting)
    if (button == 'LeftButton' and IsControlKeyDown() and not IsShiftKeyDown() and not IsAltKeyDown()) then
        local index = nil
        for i, v in ipairs(core.favoritesDB.collection) do
            if (v.id == self.item.id) then
                index = i
                break
            end
        end

        if (index) then
            table.remove(core.favoritesDB.collection, index)
            core.ui.Favorites:Refresh()
        elseif (#core.favoritesDB.collection < core.favoritesDB.slots) then
            table.insert(core.favoritesDB.collection, self.item)
            core.ui.Favorites:Refresh()
        else
            core:Print(L["You can not have more than "] .. core.favoritesDB.slots .. L[" favorites!"])
        end
    end
end

local function CreateItemSlot(par, item, isDisabled)
    local btn = par.ButtonsPool.get()
    btn:SetParent(par)
    btn:SetScale(btnScale)
    btn:SetAttribute('type', item.type)
    btn:SetAttribute('itemid', item.id)
    btn.isDisabled = isDisabled
    btn.item = item

    local icon
    if (item.type == 'spell') then
        -- Spell texture/name should be resolvable even if the player hasn't learned the spell.
        local sInfo = C_Spell.GetSpellInfo(item.id)
        icon = (sInfo and sInfo.iconID) or C_Spell.GetSpellTexture(item.id)
    else
        icon = C_Item.GetItemIconByID(item.id)
    end

    btn.icon:SetTexture(icon)
    if (item.type == 'item') then
        btn:SetAttribute('*' .. item.type .. '2', item.name)
    else
        btn:SetAttribute('*' .. item.type .. '2', item.id)
    end
    btn:SetAttribute('checkselfcast', '1')
    btn:SetAttribute('checkfocuscast', '1')

    btn.cd:SetParent(btn)
    btn.cd:SetAllPoints()
    local start, duration
    if (item.type == 'spell') then
        local info = C_Spell.GetSpellCooldown(item.id) or {}
        start, duration = info.startTime or 0, info.duration or 0
    else
        start, duration = C_Item.GetItemCooldown(item.id)
    end
    btn.cd:SetCooldown(start, duration)

    btn:SetScript('OnEnter', showDescriptionHandler)
    btn:SetScript('OnLeave', function() GameTooltip:Hide() end)
    btn:RegisterForClicks('LeftButtonUp', 'RightButtonDown')
    if (not btn.hasScripts) then
        btn:HookScript('OnClick', generateChatLinkHandler)
        btn:HookScript('OnClick', toggleFavoritesHandler)
        btn.hasScripts = true
    end

    return btn
end

Buttons.CreateItemSlot = CreateItemSlot
