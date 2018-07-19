-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local Tooltip = TSM:NewPackage("Tooltip")
local L = TSM.L
local private = {
	tooltipInfo = {},
	tooltipLines = {
		lastUpdate = 0,
		modifier = 0,
	},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Tooltip.OnInitialize()
	if not TSM.TooltipLib then
		message("A recent TSM update requires a complete restart of the game. Please do so in order to ensure TSM remains functional.")
		return
	end
	TSM.TooltipLib:Initialize(private.LoadTooltip)
	local orig = OpenMailAttachment_OnEnter
	OpenMailAttachment_OnEnter = function(self, index)
		private.lastMailTooltipUpdate = private.lastMailTooltipUpdate or 0
		if private.lastMailTooltipIndex ~= index or private.lastMailTooltipUpdate + 0.1 < GetTime() then
			private.lastMailTooltipUpdate = GetTime()
			private.lastMailTooltipIndex = index
			orig(self, index)
		end
	end
end

function Tooltip.Register(module, defaults, callbackLoad)
	tinsert(private.tooltipInfo, {
		module = module,
		defaults = defaults,
		callbackLoad = callbackLoad,
	})
	TSM.db.global.tooltipOptions.moduleTooltips[module] = TSM.db.global.tooltipOptions.moduleTooltips[module] or defaults
	if TSM.db.global.tooltipOptions.moduleTooltips[module]._version ~= defaults._version then
		StaticPopupDialogs["TSMTooltipReset"..module] = {
			text = format(L["TradeSkillMaster tooltip options for |cff99ffff%s|r have changed and therefore been reset to their default values."], module),
			button1 = OKAY,
			timeout = 0,
		}
		TSMAPI.Util:ShowStaticPopupDialog("TSMTooltipReset"..module)
		TSM.db.global.tooltipOptions.moduleTooltips[module] = defaults
	end
end



-- ============================================================================
-- Helper Functions
-- ============================================================================

function private.LoadTooltip(tipFrame, link, quantity)
	if not TSM.db.global.tooltipOptions.enabled then
		return
	end
	local itemString = TSMAPI.Item:ToItemString(link)
	if not itemString then return end

	-- get all the tooltip lines
	quantity = max(quantity or 1, 1)
	if not IsShiftKeyDown() then
		quantity = 1 -- pretend this is a stack of 1 if the shift key isn't pressed
	end
	local modifier = (IsShiftKeyDown() and 4 or 0) + (IsAltKeyDown() and 2 or 0) + (IsControlKeyDown() and 1 or 0)
	if modifier ~= private.tooltipLines.modifier then
		private.tooltipLines.modifier = modifier
		private.tooltipLines.lastUpdate = 0
	end
	if (TSM.db.global.tooltipOptions.tooltipShowModifier == "alt" and not IsAltKeyDown()) or (TSM.db.global.tooltipOptions.tooltipShowModifier == "ctrl" and not IsControlKeyDown()) then
		wipe(private.tooltipLines)
		private.tooltipLines.modifier = modifier
		private.tooltipLines.lastUpdate = 0
		return private.tooltipLines
	end
	if private.tooltipLines.itemString ~= itemString or private.tooltipLines.quantity ~= quantity or (private.tooltipLines.lastUpdate + 5) < GetTime() then
		wipe(private.tooltipLines)
		if InCombatLockdown() then
			tinsert(private.tooltipLines, L["Can't load TSM tooltip while in combat"])
			private.tooltipLines.lastUpdate = 0
			private.tooltipLines.modifier = modifier
		else
			wipe(private.tooltipLines)
			local moneyCoins = TSM.db.global.tooltipOptions.tooltipPriceFormat == "icon"
			-- The general tooltip code isn't registered like the others
			TSM.Tooltip.General.LoadTooltip(itemString, quantity, moneyCoins, private.tooltipLines)
			-- insert module lines
			for _, info in ipairs(private.tooltipInfo) do
				info.callbackLoad(itemString, quantity, TSM.db.global.tooltipOptions.moduleTooltips[info.module], moneyCoins, private.tooltipLines)
			end
			private.tooltipLines.itemString = itemString
			private.tooltipLines.quantity = quantity
			private.tooltipLines.lastUpdate = GetTime()
			private.tooltipLines.modifier = modifier
		end
	end

	-- add the tooltip lines
	if #private.tooltipLines > 0 then
		TSM.TooltipLib:AddLine(tipFrame, " ", 1, 1, 0)
		local r, g, b = 130, 130, 250

		for i = 1, #private.tooltipLines do
			if type(private.tooltipLines[i]) == "table" then
				TSM.TooltipLib:AddDoubleLine(tipFrame, private.tooltipLines[i].left, private.tooltipLines[i].right, r / 255, g / 255, b / 255, r / 255, g / 255, b / 255)
			else
				TSM.TooltipLib:AddLine(tipFrame, private.tooltipLines[i], r / 255, g / 255, b / 255)
			end
		end
		TSM.TooltipLib:AddLine(tipFrame, " ", 1, 1, 0)
	end
end
