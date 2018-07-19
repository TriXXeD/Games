-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
TSM_API = {}



-- ============================================================================
-- Public API Functions
-- ============================================================================

--- Checks if a TSM UI is currently visible.
-- @tparam string uiName A string which represents the UI ("AUCTION", "CRAFTING", "MAILING", or "VENDORING")
-- @treturn boolean Whether or not the TSM UI is visible
function TSM_API.IsUIVisible(uiName)
	if uiName == "AUCTION" then
		return TSM.UI.AuctionUI.IsVisible()
	elseif uiName == "CRAFTING" then
		return TSM.UI.CraftingUI.IsVisible()
	elseif uiName == "MAILING" then
		return TSM.UI.MailingUI.IsVisible()
	elseif uiName == "VENDORING" then
		return TSM.UI.VendoringUI.IsVisible()
	else
		error("Invalid uiName: "..tostring(uiName), 2)
	end
end
