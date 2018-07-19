-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local Auctioning = TSM.Tooltip:NewPackage("Auctioning")
local L = TSM.L
local private = {}
local DEFAULTS = {
	operationPrices = false,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Auctioning.OnInitialize()
	TSM.Tooltip.Register("Auctioning", DEFAULTS, private.LoadTooltip)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.LoadTooltip(itemString, quantity, options, moneyCoins, lines)
	if not options.operationPrices then
		-- only 1 tooltip option
		return
	end

	itemString = TSMAPI_FOUR.Item.ToBaseItemString(itemString, true)
	local operation = TSM.Operations.GetFirstOptionsByItem("Auctioning", itemString)
	if not operation then return end

	tinsert(lines, "|cffffff00TSM Auctioning:|r")
	local minPrice = private.PriceHelper(operation, itemString, "minPrice", moneyCoins)
	local normalPrice = private.PriceHelper(operation, itemString, "normalPrice", moneyCoins)
	local maxPrice = private.PriceHelper(operation, itemString, "maxPrice", moneyCoins)
	tinsert(lines, { left = "  "..L["Min/Normal/Max Prices:"], right = format("%s / %s / %s", minPrice, normalPrice, maxPrice) })
end

function private.PriceHelper(operation, itemString, priceKey, moneyCoins)
	local price = TSM.Auctioning.Util.GetPrice(priceKey, operation, itemString)
	return TSMAPI_FOUR.Money.ToString(price, "|cffffffff", moneyCoins and "OPT_ICON" or nil) or "|cffffffff---|r"
end
