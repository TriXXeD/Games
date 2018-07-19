-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local Crafting = TSM.Tooltip:NewPackage("Crafting")
local L = TSM.L
local private = {}
local DEFAULTS = {
	craftingCost = true,
	matPrice = false,
	detailedMats = false,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Crafting.OnInitialize()
	TSM.Tooltip.Register("Crafting", DEFAULTS, private.LoadTooltip)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.LoadTooltip(itemString, quantity, options, moneyCoins, lines)
	itemString = TSMAPI_FOUR.Item.ToBaseItemString(itemString)
	local numStartingLines = #lines

	if TSM.Crafting.CanCraftItem(itemString) and options.craftingCost then
		local cost, spellId = TSM.Crafting.Cost.GetLowestCostByItem(itemString)
		if cost then
			local buyout = TSM.Crafting.Cost.GetCraftedItemValue(itemString)
			local profit = buyout and (buyout - cost) or nil

			local costText = (TSMAPI_FOUR.Money.ToString(cost, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil) or "|cffffffff---|r")
			local profitColor = (profit or 0) < 0 and "|cffff0000" or "|cff00ff00"
			local profitText = (TSMAPI_FOUR.Money.ToString(profit, profitColor, "OPT_PAD", moneyCoins and "OPT_ICON" or nil) or "|cffffffff---|r")
			tinsert(lines, {
				left = "  " .. L["Crafting Cost"],
				right = format(L["%s (%s profit)"], costText, profitText),
			})

			if options.detailedMats then
				local numResult = TSM.Crafting.GetNumResult(spellId)
				for _, matItemString, matQuantity in TSM.Crafting.MatIterator(spellId) do
					local name = TSMAPI_FOUR.Item.GetName(matItemString)
					local matCost = TSM.Crafting.Cost.GetMatCost(itemString)
					if name and matCost then
						local quality = TSMAPI_FOUR.Item.GetQuality(matItemString)
						local colorName = format("|c%s%s%s%s|r", select(4, GetItemQualityColor(quality)), name, " x ", TSMAPI_FOUR.Util.Round(matQuantity / numResult, 0.01))
						tinsert(lines, {
							left = "    " .. colorName,
							right = TSMAPI_FOUR.Money.ToString((matCost * matQuantity) / numResult, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil),
						})
					end
				end
			end
		end
	end

	-- add mat price
	if options.matPrice then
		local matCost = TSM.Crafting.Cost.GetMatCost(itemString)
		if matCost then
			tinsert(lines, { left = "  " .. L["Mat Cost"], right = TSMAPI_FOUR.Money.ToString(matCost, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil) })
		end
	end

	if #lines > numStartingLines then
		tinsert(lines, numStartingLines + 1, "|cffffff00TSM Crafting:|r")
	end
end
