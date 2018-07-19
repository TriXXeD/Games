-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local AuctionDB = TSM.Tooltip:NewPackage("AuctionDB")
local L = TSM.L
local private = {}
local DEFAULTS = {
	_version = 2,
	minBuyout = true,
	marketValue = true,
	historical = false,
	regionMinBuyout = false,
	regionMarketValue = true,
	regionHistorical = false,
	regionSale = true,
	regionSalePercent = true,
	regionSoldPerDay = true,
	globalMinBuyout = false,
	globalMarketValue = false,
	globalHistorical = false,
	globalSale = false,
}
local TOOLTIP_STRINGS = {
	minBuyout = L["Min Buyout"],
	marketValue = L["Market Value"],
	historical = L["Historical Price"],
	regionMinBuyout = L["Region Min Buyout Avg"],
	regionMarketValue = L["Region Market Value Avg"],
	regionHistorical = L["Region Historical Price"],
	regionSale = L["Region Sale Avg"],
	regionSalePercent = L["Region Sale Rate"],
	regionSoldPerDay = L["Region Avg Daily Sold"],
	globalMinBuyout = L["Global Min Buyout Avg"],
	globalMarketValue = L["Global Market Value Avg"],
	globalHistorical = L["Global Historical Price"],
	globalSale = L["Global Sale Avg"],
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function AuctionDB.OnInitialize()
	TSM.Tooltip.Register("AuctionDB", DEFAULTS, private.LoadTooltip)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.LoadTooltip(itemString, quantity, options, moneyCoins, lines)
	if not itemString then return end
	local numStartingLines = #lines

	-- add min buyout
	private.InsertValueLine(itemString, quantity, "minBuyout", "realm", lines, options, private.MoneyFormat, moneyCoins)
	-- add market value
	private.InsertValueLine(itemString, quantity, "marketValue", "realm", lines, options, private.MoneyFormat, moneyCoins)
	-- add historical price
	private.InsertValueLine(itemString, quantity, "historical", "realm", lines, options, private.MoneyFormat, moneyCoins)
	-- add region min buyout
	private.InsertValueLine(itemString, quantity, "regionMinBuyout", "region", lines, options, private.MoneyFormat, moneyCoins)
	-- add region market value
	private.InsertValueLine(itemString, quantity, "regionMarketValue", "region", lines, options, private.MoneyFormat, moneyCoins)
	-- add region historical price
	private.InsertValueLine(itemString, quantity, "regionHistorical", "region", lines, options, private.MoneyFormat, moneyCoins)
	-- add region sale avg
	private.InsertValueLine(itemString, quantity, "regionSale", "region", lines, options, private.MoneyFormat, moneyCoins)
	-- add region sale rate
	private.InsertValueLine(itemString, quantity, "regionSalePercent", "region", lines, options, private.RatePercentFormat)
	-- add region sold per day
	private.InsertValueLine(itemString, quantity, "regionSoldPerDay", "region", lines, options, private.RatePercentFormat)
	-- add global min buyout
	private.InsertValueLine(itemString, quantity, "globalMinBuyout", "global", lines, options, private.MoneyFormat, moneyCoins)
	-- add global market value
	private.InsertValueLine(itemString, quantity, "globalMarketValue", "global", lines, options, private.MoneyFormat, moneyCoins)
	-- add global historical price
	private.InsertValueLine(itemString, quantity, "globalHistorical", "global", lines, options, private.MoneyFormat, moneyCoins)
	-- add global sale avg
	private.InsertValueLine(itemString, quantity, "globalSale", "global", lines, options, private.MoneyFormat, moneyCoins)

	-- add the header if we've added at least one line
	if #lines > numStartingLines then
		local lastScan = TSM.AuctionDB.GetRealmItemData(itemString, "lastScan")
		local rightStr = "|cffffffff"..L["Not Scanned"].."|r"
		if lastScan then
			local timeColor = (time() - lastScan) > 60*60*3 and "|cffff0000" or "|cff00ff00"
			local timeDiff = SecondsToTime(time() - lastScan)
			local numAuctions = TSM.AuctionDB.GetRealmItemData(itemString, "numAuctions") or 0
			rightStr = format("%s (%s)", format("|cffffffff"..L["%d auctions"].."|r", numAuctions), format(timeColor..L["%s ago"].."|r", timeDiff))
		end
		tinsert(lines, numStartingLines+1, {left="|cffffff00TSM AuctionDB:|r", right=rightStr})
	end
end

function private.MoneyFormat(value, quantity, moneyCoins)
	return TSMAPI_FOUR.Money.ToString(value*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)
end

function private.RatePercentFormat(value)
	return "|cffffffff"..format("%0.2f", value/100).."|r"
end

function private.InsertValueLine(itemString, quantity, key, scope, lines, options, formatter, ...)
	if not options[key] then return end
	local value = nil
	if scope == "global" then
		value = TSM.AuctionDB.GetGlobalItemData(itemString, key)
	elseif scope == "region" then
		value = TSM.AuctionDB.GetRegionItemData(itemString, key)
	elseif scope == "realm" then
		value = TSM.AuctionDB.GetRealmItemData(itemString, key)
	else
		error("Invalid scope: "..tostring(scope))
	end
	if not value then return end

	local leftStr = "  "..TOOLTIP_STRINGS[key]..(quantity > 1 and (" x"..quantity) or "")..":"
	local rightStr = formatter(value, quantity, ...)
	tinsert(lines, {left=leftStr, right=rightStr})
end
