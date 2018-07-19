-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local Shopping = TSM.Tooltip:NewPackage("Shopping")
local L = TSM.L
local private = {}
local DEFAULTS = {
	maxPrice = false,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Shopping.OnInitialize()
	TSM.Tooltip.Register("Shopping", DEFAULTS, private.LoadTooltip)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.LoadTooltip(itemString, quantity, options, moneyCoins, lines)
	if not options.maxPrice then
		-- only 1 tooltip option
		return
	end
	itemString = TSMAPI.Item:ToBaseItemString(itemString, true)
	local numStartingLines = #lines

	local operationName = TSMAPI.Operations:GetFirstByItem(itemString, "Shopping")
	if not operationName or not TSM.operations.Shopping[operationName] then return end
	TSMAPI.Operations:Update("Shopping", operationName)

	local maxPrice = TSMAPI:GetCustomPriceValue(TSM.operations.Shopping[operationName].maxPrice, itemString)
	if maxPrice then
		local priceText = (TSMAPI:MoneyToString(maxPrice, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil) or "|cffffffff---|r")
		tinsert(lines, { left = "  " .. L["Max Shopping Price:"], right = format("%s", priceText) })
	end

	if #lines > numStartingLines then
		tinsert(lines, numStartingLines + 1, "|cffffff00TSM Shopping:|r")
	end
end
