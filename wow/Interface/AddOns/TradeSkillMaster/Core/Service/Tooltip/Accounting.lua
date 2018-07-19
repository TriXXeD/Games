-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local Accounting = TSM.Tooltip:NewPackage("Accounting")
local L = TSM.L
local private = {}
local DEFAULTS = {
	sale = true,
	expiredAuctions = false,
	cancelledAuctions = false,
	saleRate = false,
	purchase = true,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Accounting.OnInitialize()
	TSM.Tooltip.Register("Accounting", DEFAULTS, private.LoadTooltip)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.LoadTooltip(itemString, quantity, options, moneyCoins, lines)
	local numStartingLines = #lines

	local avgSalePrice, totalSaleNum = nil, nil
	if options.sale or options.saleRate then
		local totalPrice = nil
		totalPrice, totalSaleNum = TSM.Accounting.Transactions.GetSaleStats(itemString)
		avgSalePrice = totalPrice and TSMAPI_FOUR.Util.Round(totalPrice / totalSaleNum) or nil
	end

	local lastSaleTime = TSM.Accounting.Transactions.GetLastSaleTime(itemString)
	if options.sale and totalSaleNum then
		if IsShiftKeyDown() then
			tinsert(lines, private.GetMoneyLine(L["Sold (Total Price):"], moneyCoins, totalSaleNum, avgSalePrice * totalSaleNum))
		else
			local minPrice = TSM.Accounting.Transactions.GetMinSalePrice(itemString)
			local maxPrice = TSM.Accounting.Transactions.GetMaxSalePrice(itemString)
			assert(minPrice and maxPrice)
			tinsert(lines, private.GetMoneyLine(L["Sold (Min/Avg/Max Price):"], moneyCoins, totalSaleNum, minPrice, avgSalePrice, maxPrice))
		end
		tinsert(lines, private.GetTimeLine(L["Last Sold:"], lastSaleTime))
	end

	local cancelledNum, expiredNum, totalFailed = TSM.Accounting.Auctions.GetStats(itemString, lastSaleTime)
	if expiredNum > 0 and cancelledNum > 0 and options.expiredAuctions and options.cancelledAuctions then
		tinsert(lines, {
			left = "  " .. L["Failed Since Last Sale (Expired/Cancelled):"],
			right = format("|cffffffff%s|r (|cffffffff%s|r/|cffffffff%s|r)", expiredNum + cancelledNum, expiredNum, cancelledNum)
		})
	elseif expiredNum > 0 and options.expiredAuctions then
		tinsert(lines, private.GetNumLine(L["Expired Since Last Sale:"], expiredNum))
	elseif cancelledNum > 0 and options.cancelledAuctions then
		tinsert(lines, private.GetNumLine(L["Cancelled Since Last Sale:"], cancelledNum))
	end

	if options.saleRate and totalSaleNum and totalFailed then
		local saleRate = TSMAPI_FOUR.Util.Round(totalSaleNum / (totalSaleNum + totalFailed), 0.01)
		tinsert(lines, private.GetNumLine(L["Sale Rate:"], saleRate))
	end

	local totalBuyPrice, totalBuyNum = TSM.Accounting.Transactions.GetBuyStats(itemString)
	local avgBuyPrice = totalBuyPrice and TSMAPI_FOUR.Util.Round(totalBuyPrice / totalBuyNum) or nil
	if options.purchase and avgBuyPrice then
		local lastBuyTime = TSM.Accounting.Transactions.GetLastBuyTime(itemString)
		assert(lastBuyTime)
		if IsShiftKeyDown() then
			tinsert(lines, private.GetMoneyLine(L["Purchased (Total Price):"], moneyCoins, totalBuyNum, avgBuyPrice * totalBuyNum))
		else
			local minPrice = TSM.Accounting.Transactions.GetMinBuyPrice(itemString)
			local maxPrice = TSM.Accounting.Transactions.GetMaxBuyPrice(itemString)
			tinsert(lines, private.GetMoneyLine(L["Purchased (Min/Avg/Max Price):"], moneyCoins, totalBuyNum, minPrice, avgBuyPrice, maxPrice))
		end
		tinsert(lines, private.GetTimeLine(L["Last Purchased:"], lastBuyTime))
	end

	-- add heading
	if #lines > numStartingLines then
		tinsert(lines, numStartingLines + 1, "|cffffff00TSM Accounting:|r")
	end
end

function private.GetMoneyText(copper, moneyCoins)
	return TSMAPI_FOUR.Money.ToString(copper, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil) or "|cffffffff?|r"
end

function private.GetMoneyLine(leftText, moneyCoins, num, price1, price2, price3)
	local result = { left = "  " .. leftText }
	if price3 then
		result.right = format("|cffffffff%d|r (%s / %s / %s)", num, private.GetMoneyText(price1, moneyCoins), private.GetMoneyText(price2, moneyCoins), private.GetMoneyText(price3, moneyCoins))
	else
		assert(not price2 and not price3)
		result.right = format("|cffffffff%d|r (%s)", num, private.GetMoneyText(price1, moneyCoins))
	end
	return result
end

function private.GetTimeLine(leftText, timestamp)
	local result = {
		left = "  " .. leftText,
		right = "|cffffffff" .. format(L["%s ago"], SecondsToTime(time() - timestamp)) .. "|r"
	}
	return result
end

function private.GetNumLine(leftText, num)
	local result = {
		left = "  " .. leftText,
		right = "|cffffffff" .. num .. "|r"
	}
	return result
end
