-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local Inbox = TSM.UI.MailingUI:NewPackage("Inbox")
local L = TSM.L
local private = {
	fsm = nil,
	frame = nil,
	query = nil,
	filterText = ""
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Inbox.OnInitialize()
	private.FSMCreate()
	TSM.UI.MailingUI.RegisterTopLevelPage(INBOX, "iconPack.24x24/Mail", private.GetInboxFrame)
end



-- ============================================================================
-- Inbox UI
-- ============================================================================

function private.GetInboxFrame()
	private.query = private.query or TSM.Inventory.MailTracking.CreateMailInboxQuery()
	private.query:ResetFilters()
	private.query:ResetOrderBy()
	private.query:OrderBy("index", true)

	local frame = TSMAPI_FOUR.UI.NewElement("Frame", "inbox")
		:SetLayout("VERTICAL")
		:AddChild(TSMAPI_FOUR.UI.NewElement("Frame", "top")
			:SetLayout("VERTICAL")
			:SetStyle("height", 79)
			:SetStyle("background", "#272727")
			:AddChild(TSMAPI_FOUR.UI.NewElement("Button", "reload")
				:SetStyle("anchors", { { "TOPRIGHT", -7, -5 } })
				:SetStyle("height", 29)
				:SetStyle("width", 22)
				:SetStyle("height", 22)
				:SetStyle("backgroundTexturePack", "iconPack.18x18/Reset")
				:SetScript("OnClick", ReloadUI)
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Frame", "mails")
				:SetLayout("HORIZONTAL")
				:SetStyle("margin", { top = 4, left = 10, right = 10 })
				:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "text")
					:SetStyle("font", TSM.UI.Fonts.MontserratRegular)
					:SetStyle("fontHeight", 12)
					:SetStyle("justifyH", "LEFT")
					:SetFormattedText(L["Loading Mails..."])
				)
				:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "countdown")
					:SetStyle("font", TSM.UI.Fonts.MontserratRegular)
					:SetStyle("fontHeight", 12)
					:SetStyle("justifyH", "RIGHT")
				)
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("SearchInput", "filterInput")
				:SetStyle("height", 20)
				:SetStyle("margin", { top = 4, left = 10, right = 10, bottom = 10 })
				:SetHintText(L["Search Inbox"])
				:SetDisabled(false)
				:SetScript("OnTextChanged", private.SearchOnTextChanged)
			)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Texture", "line")
			:SetStyle("height", 2)
			:SetStyle("color", "#585858")
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("QueryScrollingTable", "mails")
			:SetStyle("headerBackground", "#404040")
			:SetStyle("headerFont", TSM.UI.Fonts.MontserratMedium)
			:SetStyle("headerFontHeight", 14)
			:SetStyle("margin.bottom", 1)
			:GetScrollingTableInfo()
				:NewColumn("icon")
					:SetWidth(15)
					:SetFont(TSM.UI.Fonts.FRIZQT)
					:SetFontHeight(14)
					:SetJustifyH("CENTER")
					:SetTextInfo("icon", private.FormatIcon)
					:Commit()
				:NewColumn("item")
					:SetTitles(L["Item"])
					:SetFont(TSM.UI.Fonts.FRIZQT)
					:SetFontHeight(13)
					:SetJustifyH("LEFT")
					:SetTextInfo(nil, private.FormatItem)
					:SetTooltipInfo("itemString")
					:SetTooltipLinkingDisabled(true)
					:Commit()
				:NewColumn("expires")
					:SetTitles(L["Expires"])
					:SetWidth(60)
					:SetFont(TSM.UI.Fonts.MontserratMedium)
					:SetFontHeight(12)
					:SetJustifyH("RIGHT")
					:SetTextInfo("expires", private.FormatDaysLeft)
					:Commit()
				:NewColumn("money")
					:SetTitles(L["Gold"])
					:SetWidth(115)
					:SetFont(TSM.UI.Fonts.RobotoMedium)
					:SetFontHeight(12)
					:SetJustifyH("RIGHT")
					:SetTextInfo(nil, private.FormatMoney)
					:Commit()
				:Commit()
			:SetQuery(private.query)
			:SetScript("OnRowClick", private.QueryOnRowClick)
			:SetScript("OnDataUpdated", private.InboxOnDataUpdated)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetStyle("height", 23)
			:SetStyle("margin.bottom", 3)
			:SetStyle("background", "#000000")
			:AddChild(TSMAPI_FOUR.UI.NewElement("Spacer", "spacer"))
			:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "gold")
				:SetStyle("margin.right", 8)
				:SetStyle("font", TSM.UI.Fonts.MontserratMedium)
				:SetStyle("fontHeight", 12)
				:SetStyle("justifyH", "RIGHT")
				:SetText(L["Total Gold"]..": "..TSMAPI_FOUR.Money.ToString(0, "OPT_PAD", "OPT_SEP"))
			)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("ActionButton", "openAllMail")
			:SetStyle("font", TSM.UI.Fonts.MontserratMedium)
			:SetStyle("margin.bottom", 4)
			:SetStyle("height", 26)
			:SetStyle("fontHeight", 14)
			:SetText(L["OPEN ALL MAIL"])
			:SetScript("OnClick", private.OpenBtnOnClick)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Frame", "buttons")
			:SetLayout("HORIZONTAL")
			:AddChild(TSMAPI_FOUR.UI.NewElement("ActionButton", "openAllSales")
				:SetStyle("font", TSM.UI.Fonts.MontserratRegular)
				:SetStyle("margin.right", 8)
				:SetStyle("height", 20)
				:SetStyle("fontHeight", 12)
				:SetStyle("iconTexturePack", "iconPack.12x12/Bid")
				:SetText(L["SALES"])
				:SetContext("SALE")
				:SetScript("OnClick", private.OpenBtnOnClick)
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("ActionButton", "openAllBuys")
				:SetStyle("font", TSM.UI.Fonts.MontserratRegular)
				:SetStyle("margin.right", 8)
				:SetStyle("height", 20)
				:SetStyle("fontHeight", 12)
				:SetStyle("iconTexturePack", "iconPack.12x12/Shopping")
				:SetText(L["BUYS"])
				:SetContext("BUY")
				:SetScript("OnClick", private.OpenBtnOnClick)
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("ActionButton", "openAllCancels")
				:SetStyle("font", TSM.UI.Fonts.MontserratRegular)
				:SetStyle("margin.right", 8)
				:SetStyle("height", 20)
				:SetStyle("fontHeight", 12)
				:SetStyle("iconTexturePack", "iconPack.12x12/Close/Circle")
				:SetText(L["CANCELS"])
				:SetContext("CANCEL")
				:SetScript("OnClick", private.OpenBtnOnClick)
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("ActionButton", "openAllExpires")
				:SetStyle("font", TSM.UI.Fonts.MontserratRegular)
				:SetStyle("height", 20)
				:SetStyle("fontHeight", 12)
				:SetStyle("iconTexturePack", "iconPack.12x12/Clock")
				:SetText(L["EXPIRES"])
				:SetContext("EXPIRE")
				:SetScript("OnClick", private.OpenBtnOnClick)
			)
		)
		:SetScript("OnUpdate", private.InboxFrameOnUpdate)
		:SetScript("OnHide", private.InboxFrameOnHide)

	private.frame = frame

	return frame
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.InboxFrameOnUpdate(frame)
	frame:SetScript("OnUpdate", nil)
	local baseFrame = frame:GetBaseElement()
	baseFrame:SetStyle("bottomPadding", 55)
	baseFrame:Draw()

	private.UpdateCountDown(true)
	TSMAPI_FOUR.Delay.AfterTime("mailUpdateCounter", 0, private.UpdateCountDown, 1)

	private.fsm:ProcessEvent("EV_FRAME_SHOW", frame, private.filterText)
end

function private.InboxFrameOnHide(frame)
	assert(frame == private.frame)
	private.frame = nil

	private.fsm:ProcessEvent("EV_FRAME_HIDE")
end

function private.InboxOnDataUpdated()
	if not private.frame then
		return
	end

	private.fsm:ProcessEvent("EV_MAIL_DATA_UPDATED", private.filterText)
end

function private.OpenBtnOnClick(button)
	button:SetPressed(true)
	private.fsm:ProcessEvent("EV_BUTTON_CLICKED", IsShiftKeyDown(), private.filterText, button:GetContext())
end

function private.QueryOnRowClick(scrollingTable, row, button)
	if button ~= "LeftButton" then
		return
	end

	local index = row:GetField("index")

	local _, _, _, _, _, cod = GetInboxHeaderInfo(index)
	if IsShiftKeyDown() and cod <= 0 then
		AutoLootMailItem(index)
	end
end

function private.SearchOnTextChanged(input)
	local text = strtrim(input:GetText())
	if text == private.filterText then
		return
	end
	private.filterText = text
	input:SetText(private.filterText)

	private.query:ResetFilters()
		:Matches("item", private.filterText)
	input:GetElement("__parent.__parent.mails"):UpdateData(true)
end

function private.FormatIcon(mailType)
	local icon = nil
	if mailType == "SALE" then
		icon = TSM.UI.TexturePacks.GetTextureLink("iconPack.12x12/Bid")
	elseif mailType == "BUY" then
		icon = TSM.UI.TexturePacks.GetTextureLink("iconPack.12x12/Shopping")
	elseif mailType == "CANCEL" then
		icon = TSM.UI.TexturePacks.GetTextureLink("iconPack.12x12/Close/Circle")
	elseif mailType == "EXPIRE" then
		icon = TSM.UI.TexturePacks.GetTextureLink("iconPack.12x12/Clock")
	end
	return icon or ""
end

function private.FormatItem(row)
	local coloredItem = TSM.UI.GetColoredItemName(row:GetField("itemString"))
	local quantity = row:GetField("quantity")
	local itemCount = row:GetField("itemCount")

	local item
	if quantity > 1 then
		item = coloredItem.."|cffe1f720 (x"..quantity..")|r"
	else
		item = coloredItem
	end
	if item and itemCount > 1 then
		item = item..", ..."
	end

	-- TODO: handle mails with no item attachment better?
	if not item then
		item = row:GetField("subject") or "--"
	end

	return item
end

function private.FormatDaysLeft(daysLeft)
	if daysLeft >= 1 then
		if daysLeft <= 5 then
			daysLeft = "|cffffff00"..ceil(daysLeft).." "..DAYS
		else
			daysLeft = "|cff00ff00"..ceil(daysLeft).." "..DAYS
		end
	else
		daysLeft = "|cffff00001 "..DAYS
	end

	return daysLeft
end

function private.FormatMoney(row)
	local money = row:GetField("money")
	local cod = row:GetField("cod")

	local gold
	if cod > 0 then
		gold = TSMAPI_FOUR.Money.ToString(cod, "|cffff0000", "OPT_PAD", "OPT_SEP")
	elseif money > 0 then
		gold = TSMAPI_FOUR.Money.ToString(money, "|cff00ff00", "OPT_PAD", "OPT_SEP")
	end

	return gold or "--"
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.UpdateCountDown(force)
	local nextUpdate = 61 - (time() - TSM.Mailing.Open.GetLastCheckTime())
	if nextUpdate == 0 then
		nextUpdate = 61
	end

	if nextUpdate ~= private.nextUpdate or force then
		private.frame:GetElement("top.mails.countdown"):SetText(SecondsToTime(nextUpdate))
			:Draw()
		private.nextUpdate = nextUpdate
	end
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	local fsmContext = {
		frame = nil,
		opening = false
	}

	local function UpdateText(context, filterText)
		local text
		local numMail, totalMail = GetInboxNumItems()
		if filterText == "" then
			if totalMail > numMail then
				text = L["Showing %d of %d Mails"]
			elseif (numMail == 1 and totalMail == 1) or (numMail == 0 and totalMail == 0) then
				text = L["Showing %d Mail"]
			else
				text = L["Showing all %d Mails"]
			end
		else
			numMail = private.query:Count()

			if (numMail == 0 and totalMail == 0) or (numMail == 1 and totalMail == 1) then
				text = L["Showing %d of %d Mail"]
			else
				text = L["Showing %d of %d Mails"]
			end
		end

		context.frame:GetElement("top.mails.text"):SetFormattedText(text, numMail, totalMail)
			:Draw()

		local totalGold = 0
		for _, row in private.query:Iterator() do
			totalGold = totalGold + row:GetField("money")
		end

		context.frame:GetElement("footer.gold"):SetText(L["Total Gold"]..": "..TSMAPI_FOUR.Money.ToString(totalGold, "OPT_PAD", "OPT_SEP"))
			:Draw()
	end

	local function UpdateButtons(context)
		if context.opening then
			context.frame:GetElement("top.filterInput")
				:SetDisabled(true)

			context.frame:GetElement("openAllMail")
				:SetDisabled(true)
				:Draw()
			context.frame:GetElement("buttons.openAllSales")
				:SetDisabled(true)
			context.frame:GetElement("buttons.openAllBuys")
				:SetDisabled(true)
			context.frame:GetElement("buttons.openAllCancels")
				:SetDisabled(true)
			context.frame:GetElement("buttons.openAllExpires")
				:SetDisabled(true)

			context.frame:GetElement("buttons")
				:Draw()
		else
			context.frame:GetElement("top.filterInput")
				:SetDisabled(false)

			local all, sales, buys, cancels, expires = 0, 0, 0, 0, 0
			for _, row in private.query:Iterator() do
				local iconType = row:GetField("icon")

				all = all + 1

				if iconType == "SALE" then
					sales = sales + 1
				elseif iconType == "BUY" then
					buys = buys + 1
				elseif iconType == "CANCEL" then
					cancels = cancels + 1
				elseif iconType == "EXPIRE" then
					expires = expires + 1
				end
			end

			local allMailButton = context.frame:GetElement("openAllMail")
			local saleButton = context.frame:GetElement("buttons.openAllSales")
			local buyButton = context.frame:GetElement("buttons.openAllBuys")
			local cancelButton = context.frame:GetElement("buttons.openAllCancels")
			local expiresButton = context.frame:GetElement("buttons.openAllExpires")

			allMailButton:SetDisabled(all == 0)
				:SetPressed(false)
				:Draw()
			saleButton:SetDisabled(sales == 0)
				:SetPressed(false)
			buyButton:SetDisabled(buys == 0)
				:SetPressed(false)
			cancelButton:SetDisabled(cancels == 0)
				:SetPressed(false)
			expiresButton:SetDisabled(expires == 0)
				:SetPressed(false)

			context.frame:GetElement("buttons")
				:Draw()
		end
	end

	private.fsm = TSMAPI_FOUR.FSM.New("MAILING_INBOX")
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_HIDDEN")
			:SetOnEnter(function(context)
				TSM.Mailing.Open.KillThread()
				TSMAPI_FOUR.Delay.Cancel("mailUpdateCounter")
				context.frame = nil
			end)
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_HIDDEN")
			:AddEvent("EV_FRAME_SHOW", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_SHOWN"))
		)
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_SHOWN")
			:SetOnEnter(function(context, frame, filterText)
				if not context.frame then
					context.frame = frame
					UpdateText(context, filterText)
					UpdateButtons(context, filterText)
				end
			end)
			:AddTransition("ST_HIDDEN")
			:AddTransition("ST_OPENING_START")
			:AddEvent("EV_MAIL_DATA_UPDATED", function(context, filterText)
				UpdateText(context, filterText)
				UpdateButtons(context, filterText)
			end)
			:AddEvent("EV_BUTTON_CLICKED", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_OPENING_START"))
		)
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_OPENING_START")
			:SetOnEnter(function(context, autoRefresh, filterText, filterType)
				context.opening = true
				UpdateButtons(context)
				TSM.Mailing.Open.StartOpening(private.FSMOpenCallback, autoRefresh, filterText, filterType)
			end)
			:SetOnExit(function(context)
				context.opening = false
				UpdateButtons(context)
			end)
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_HIDDEN")
			:AddEvent("EV_MAIL_DATA_UPDATED", function(context, filterText)
				UpdateText(context, filterText)
			end)
			:AddEvent("EV_OPENING_DONE", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_SHOWN"))
		)
		:AddDefaultEvent("EV_FRAME_HIDE", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_HIDDEN"))
		:Init("ST_HIDDEN", fsmContext)
end

function private.FSMOpenCallback()
	private.fsm:ProcessEvent("EV_OPENING_DONE")
end
