-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local General = TSM.Tooltip:NewPackage("General")
local L = TSM.L



-- ============================================================================
-- Module Functions
-- ============================================================================

function General.LoadTooltip(itemString, quantity, moneyCoins, lines)
	local numStartingLines = #lines

	-- add group / operation info
	if TSM.db.global.tooltipOptions.groupNameTooltip then
		local path = TSMAPI_FOUR.Groups.GetPathByItem(itemString)
		if path ~= TSM.CONST.ROOT_GROUP_PATH then
			local isBaseItem = not TSMAPI_FOUR.Groups.IsItemInGroup(itemString)
			local leftText = nil
			if isBaseItem then
				leftText = GROUP.."("..L["Base Item"].."):"
			else
				leftText = GROUP..":"
			end
			tinsert(lines, {left="  "..leftText, right = "|cffffffff"..TSMAPI.Groups:FormatPath(path).."|r"})
			local modules = {}
			for module, operations in pairs(TSM.db.profile.userData.groups[path]) do
				if operations[1] and operations[1] ~= "" and TSM.db.global.tooltipOptions.operationTooltips[module] then
					tinsert(modules, {module=module, operations=table.concat(operations, ", ")})
				end
			end
			sort(modules, function(a, b) return a.module < b.module end)
			for _, info in ipairs(modules) do
				tinsert(lines, {left="  "..format(L["%s operation(s):"], info.module), right="|cffffffff"..info.operations.."|r"})
			end
		end
	end

	-- add disenchant value info
	if TSM.db.global.tooltipOptions.deTooltip then
		local value = TSMAPI.Conversions:GetValue(itemString, TSM.db.global.coreOptions.destroyValueSource, "disenchant")
		if value then
			local leftText = "  "..(quantity > 1 and format(L["Disenchant Value x%s:"], quantity) or L["Disenchant Value:"])
			tinsert(lines, {left=leftText, right=TSMAPI:MoneyToString(value*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})
			if TSM.db.global.tooltipOptions.detailedDestroyTooltip then
				local rarity = TSMAPI.Item:GetQuality(itemString)
				local ilvl = TSMAPI.Item:GetItemLevel(itemString)
				local iType = GetItemClassInfo(TSMAPI.Item:GetClassId(itemString))
				for _, data in ipairs(TSM.CONST.DISENCHANT_INFO) do
					for targetItem, itemData in pairs(data) do
						if targetItem ~= "desc" then
							for _, deData in ipairs(itemData.sourceInfo) do
								if deData.itemType == iType and deData.rarity == rarity and ilvl >= deData.minItemLevel and ilvl <= deData.maxItemLevel then
									local matValue = (TSMAPI:GetCustomPriceValue(TSM.db.global.coreOptions.destroyValueSource, targetItem) or 0) * deData.amountOfMats
									local matQuality = TSMAPI.Item:GetQuality(targetItem)
									if matQuality and matValue > 0 then
										local colorName = format("|c%s%s x %s|r", select(4, GetItemQualityColor(matQuality)), TSMAPI.Item:GetName(targetItem), deData.amountOfMats)
										tinsert(lines, {left="    "..colorName, right=TSMAPI:MoneyToString(matValue, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})
									end
								end
							end
						end
					end
				end
			end
		end
	end

	-- add mill value info
	if TSM.db.global.tooltipOptions.millTooltip then
		local value = TSMAPI.Conversions:GetValue(itemString, TSM.db.global.coreOptions.destroyValueSource, "mill")
		if value then
			local leftText = "  "..L["Mill Value"]..(quantity > 1 and (" x"..quantity) or "")..":"
			tinsert(lines, {left=leftText, right=TSMAPI:MoneyToString(value*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})

			if TSM.db.global.tooltipOptions.detailedDestroyTooltip then
				for _, targetItem in ipairs(TSMAPI.Conversions:GetTargetItemsByMethod("mill")) do
					local herbs = TSMAPI.Conversions:GetData(targetItem)
					if herbs[itemString] then
						local matQuality = TSMAPI.Item:GetQuality(targetItem)
						if matQuality then
							local colorName = format("|c%s%s%s%s|r", select(4, GetItemQualityColor(matQuality)), TSMAPI.Item:GetName(targetItem), " x ", herbs[itemString].rate * quantity)
							local millValue = (TSMAPI:GetCustomPriceValue(TSM.db.global.coreOptions.destroyValueSource, targetItem) or 0) * herbs[itemString].rate
							if millValue > 0 then
								tinsert(lines, {left="    "..colorName, right=TSMAPI:MoneyToString(millValue*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})
							end
						end
					end
				end
			end
		end
	end

	-- add prospect value info
	if TSM.db.global.tooltipOptions.prospectTooltip then
		local value = TSMAPI.Conversions:GetValue(itemString, TSM.db.global.coreOptions.destroyValueSource, "prospect")
		if value then
			local leftText = "  "..(quantity > 1 and format(L["Prospect Value x%s:"], quantity) or L["Prospect Value:"])
			tinsert(lines, {left=leftText, right=TSMAPI:MoneyToString(value*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})

			if TSM.db.global.tooltipOptions.detailedDestroyTooltip then
				for _, targetItem in ipairs(TSMAPI.Conversions:GetTargetItemsByMethod("prospect")) do
					local gems = TSMAPI.Conversions:GetData(targetItem)
					if gems[itemString] then
						local matQuality = TSMAPI.Item:GetQuality(targetItem)
						if matQuality then
							local colorName = format("|c%s%s%s%s|r", select(4, GetItemQualityColor(matQuality)), TSMAPI.Item:GetName(targetItem), " x ", gems[itemString].rate * quantity)
							local prospectValue = (TSMAPI:GetCustomPriceValue(TSM.db.global.coreOptions.destroyValueSource, targetItem) or 0) * gems[itemString].rate
							if prospectValue > 0 then
								tinsert(lines, {left="    "..colorName, right=TSMAPI:MoneyToString(value*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})
							end
						end
					end
				end
			end
		end
	end

	-- add transform value info
	if TSM.db.global.tooltipOptions.transformTooltip then
		local value = TSMAPI.Conversions:GetValue(itemString, TSM.db.global.coreOptions.destroyValueSource, "transform")
		if value then
			local leftText = "  "..(quantity > 1 and format(L["Transform Value x%s:"], quantity) or L["Transform Value:"])
			tinsert(lines, {left=leftText, right=TSMAPI:MoneyToString(value*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})

			if TSM.db.global.tooltipOptions.detailedDestroyTooltip then
				for _, targetItem in ipairs(TSMAPI.Conversions:GetTargetItemsByMethod("transform")) do
					local srcItems = TSMAPI.Conversions:GetData(targetItem)
					if srcItems[itemString] then
						local matQuality = TSMAPI.Item:GetQuality(targetItem)
						if matQuality then
							local colorName = format("|c%s%s%s%s|r",select(4, GetItemQualityColor(matQuality)), TSMAPI.Item:GetName(targetItem), " x ", srcItems[itemString].rate * quantity)
							local transformValue = (TSMAPI:GetCustomPriceValue(TSM.db.global.coreOptions.destroyValueSource, targetItem) or 0) * srcItems[itemString].rate
							if transformValue > 0 then
								tinsert(lines, {left="    "..colorName, right=TSMAPI:MoneyToString(transformValue*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})
							end
						end
					end
				end
			end
		end
	end

	-- add vendor buy price
	if TSM.db.global.tooltipOptions.vendorBuyTooltip then
		local value = TSMAPI.Item:GetVendorCost(itemString) or 0
		if value > 0 then
			local leftText = "  "..(quantity > 1 and format(L["Vendor Buy Price x%s:"], quantity) or L["Vendor Buy Price:"])
			tinsert(lines, {left=leftText, right=TSMAPI:MoneyToString(value*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})
		end
	end

	-- add vendor sell price
	if TSM.db.global.tooltipOptions.vendorSellTooltip then
		local value = TSMAPI.Item:GetVendorPrice(itemString) or 0
		if value > 0 then
			local leftText = "  "..(quantity > 1 and format(L["Vendor Sell Price x%s:"], quantity) or L["Vendor Sell Price:"])
			tinsert(lines, {left=leftText, right=TSMAPI:MoneyToString(value*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})
		end
	end

	-- add custom price sources
	for name in pairs(TSM.db.global.userData.customPriceSources) do
		if TSM.db.global.tooltipOptions.customPriceTooltips[name] then
			local price = TSMAPI:GetCustomPriceValue(name, itemString) or 0
			if price > 0 then
				tinsert(lines, {left="  "..L["Custom Price Source"].." '"..name.."':", right=TSMAPI:MoneyToString(price*quantity, "|cffffffff", "OPT_PAD", moneyCoins and "OPT_ICON" or nil)})
			end
		end
	end

	-- add inventory information
	if TSM.db.global.tooltipOptions.inventoryTooltipFormat == "full" then
		local numLines = #lines
		local totalNum = 0
		for factionrealm in TSM.db:GetConnectedRealmIterator("factionrealm") do
			for _, character in TSM.db:FactionrealmCharacterIterator(factionrealm) do
				local bag = TSMAPI_FOUR.Inventory.GetBagQuantity(itemString, character, factionrealm)
				local bank = TSMAPI_FOUR.Inventory.GetBankQuantity(itemString, character, factionrealm)
				local reagentBank = TSMAPI_FOUR.Inventory.GetReagentBankQuantity(itemString, character, factionrealm)
				local auction = TSMAPI_FOUR.Inventory.GetAuctionQuantity(itemString, character, factionrealm)
				local mail = TSMAPI_FOUR.Inventory.GetMailQuantity(itemString, character, factionrealm)
				local playerTotal = bag + bank + reagentBank + auction + mail
				if playerTotal > 0 then
					totalNum = totalNum + playerTotal
					local classColor = RAID_CLASS_COLORS[TSM.db:Get("sync", TSM.db:GetSyncScopeKeyByCharacter(character), "internalData", "classKey")]
					local rightText = format(L["%s (%s bags, %s bank, %s AH, %s mail)"], "|cffffffff"..playerTotal.."|r", "|cffffffff"..bag.."|r", "|cffffffff"..(bank+reagentBank).."|r", "|cffffffff"..auction.."|r", "|cffffffff"..mail.."|r")
					if classColor then
						tinsert(lines, {left="    |c"..classColor.colorStr..character.."|r:", right=rightText})
					else
						tinsert(lines, {left="    "..character..":", right=rightText})
					end
				end
			end
		end
		for guildName in pairs(TSM.db.factionrealm.internalData.guildVaults) do
			local guildQuantity = TSMAPI_FOUR.Inventory.GetGuildQuantity(itemString, guildName)
			if guildQuantity > 0 then
				totalNum = totalNum + guildQuantity
				tinsert(lines, {left="    "..guildName..":", right=format(L["%s in guild vault"], "|cffffffff"..guildQuantity.."|r")})
			end
		end
		if #lines > numLines then
			tinsert(lines, numLines+1, {left="  "..L["Inventory:"], right=format(L["%s total"], "|cffffffff"..totalNum.."|r")})
		end
	elseif TSM.db.global.tooltipOptions.inventoryTooltipFormat == "simple" then
		local numLines = #lines
		local totalPlayer, totalAlt, totalGuild, totalAuction = 0, 0, 0, 0
		for factionrealm in TSM.db:GetConnectedRealmIterator("factionrealm") do
			for _, character in TSM.db:FactionrealmCharacterIterator(factionrealm) do
				local bag = TSMAPI_FOUR.Inventory.GetBagQuantity(itemString, character, factionrealm)
				local bank = TSMAPI_FOUR.Inventory.GetBankQuantity(itemString, character, factionrealm)
				local reagentBank = TSMAPI_FOUR.Inventory.GetReagentBankQuantity(itemString, character, factionrealm)
				local auction = TSMAPI_FOUR.Inventory.GetAuctionQuantity(itemString, character, factionrealm)
				local mail = TSMAPI_FOUR.Inventory.GetMailQuantity(itemString, character, factionrealm)
				if character == UnitName("player") then
					totalPlayer = totalPlayer + bag + bank + reagentBank + mail
					totalAuction = totalAuction + auction
				else
					totalAlt = totalAlt + bag + bank + reagentBank + mail
					totalAuction = totalAuction + auction
				end
			end
		end
		for guildName in pairs(TSM.db.factionrealm.internalData.guildVaults) do
			totalGuild = totalGuild + TSMAPI_FOUR.Inventory.GetGuildQuantity(itemString, guildName)
		end
		local totalNum = totalPlayer + totalAlt + totalGuild + totalAuction
		if totalNum > 0 then
			local rightText = format(L["%s (%s player, %s alts, %s guild, %s AH)"], "|cffffffff"..totalNum.."|r", "|cffffffff"..totalPlayer.."|r", "|cffffffff"..totalAlt.."|r", "|cffffffff"..totalGuild.."|r", "|cffffffff"..totalAuction.."|r")
			tinsert(lines, numLines+1, {left="  "..L["Inventory:"], right=rightText})
		end
	end

	-- add heading
	if #lines > numStartingLines then
		tinsert(lines, numStartingLines+1, "|cffffff00" .. L["TradeSkillMaster Info:"].."|r")
	end
end
