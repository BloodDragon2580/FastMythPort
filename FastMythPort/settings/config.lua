local myName, me = ...
local L = me.L
local ADDON_NAME, core = ...
core.Config = {}

local Config = core.Config

function Config.SetupMinimapButton()
	local LDB = LibStub('LibDataBroker-1.1'):NewDataObject(ADDON_NAME, {
		type = 'launcher',
		text = ADDON_NAME,
		icon = 'Interface\\Icons\\spell_arcane_portalthunderbluff',
		OnClick = function()
			-- ✅ Wichtig: Methoden mit ":" aufrufen, nicht "."
			if (IsShiftKeyDown()) then
				core.ui.Favorites:Toggle()
			else
				core.ui.MainUI:Toggle()
			end
		end,
		OnTooltipShow = function(tooltip)
			tooltip:AddLine(L["|cffd6266cFastMythPort|r"])
			tooltip:AddLine(L["Click to toggle main ui"])
			tooltip:AddLine(L["Shift + Click to toggle favorites"])
		end
	})

	local LDBI = LibStub('LibDBIcon-1.0')
	LDBI:Register(ADDON_NAME, LDB)
end
