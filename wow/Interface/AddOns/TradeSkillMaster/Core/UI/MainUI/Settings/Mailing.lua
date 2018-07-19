-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local Mailing = TSM.MainUI.Settings:NewPackage("Mailing")
local L = TSM.L
local private = { sounds = {}, soundkeys = {} }
local MAIL_FRAME_TABS = { INBOX, L["TSM Groups"], L["Quick Send"], OTHER }
local ITEM_QUALITY_DESCS = { ITEM_QUALITY2_DESC, ITEM_QUALITY3_DESC, ITEM_QUALITY4_DESC }
local ITEM_QUALITY_KEYS = { 2, 3, 4 }



-- ============================================================================
-- Module Functions
-- ============================================================================

function Mailing.OnInitialize()
	TSM.MainUI.Settings.RegisterSettingPage(L["Inventory / Mailing"], "middle", private.GetMailingSettingsFrame)
	for key, name in pairs(TSMAPI_FOUR.Sound.GetSounds()) do
		tinsert(private.sounds, name)
		tinsert(private.soundkeys, key)
	end
end



-- ============================================================================
-- Mailing Settings UI
-- ============================================================================

function private.GetMailingSettingsFrame()
	return TSMAPI_FOUR.UI.NewElement("ScrollFrame", "mailingSettings")
		:SetStyle("padding.left", 12)
		:SetStyle("padding.right", 12)
		:AddChild(TSM.MainUI.Settings.CreateHeading("generalOptionsTitle", L["Inventory Options"])
			:SetStyle("margin.bottom", 15)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label")
			:SetStyle("height", 18)
			:SetStyle("margin.bottom", 4)
			:SetStyle("font", TSM.UI.Fonts.MontserratMedium)
			:SetStyle("fontHeight", 14)
			:SetStyle("textColor", "#ffffff")
			:SetText(L["Clean Automatically"])
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Frame", "cleanBagsRow")
			:SetLayout("HORIZONTAL")
			:SetStyle("height", 26)
			:SetStyle("margin", { bottom = 16 })
			:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "cleanBagsCheckbox")
				:SetStyle("width", 200)
				:SetStyle("height", 20)
				:SetText(L["Character Bags"])
				:SetSettingInfo(TSM.db.profile.coreOptions, "cleanBags")
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "cleanBankCheckbox")
				:SetStyle("width", 200)
				:SetStyle("height", 20)
				:SetText(L["Character Bank"])
				:SetSettingInfo(TSM.db.profile.coreOptions, "cleanBank")
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "cleanReagentBankCheckbox")
				:SetStyle("width", 200)
				:SetStyle("height", 20)
				:SetText(L["Reagent Bank"])
				:SetSettingInfo(TSM.db.profile.coreOptions, "cleanReagentBank")
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "cleanGuildBankCheckbox")
				:SetStyle("width", 200)
				:SetStyle("height", 20)
				:SetText(L["Guild Bank"])
				:SetSettingInfo(TSM.db.profile.coreOptions, "cleanGuildBank")
			)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label")
			:SetStyle("height", 18)
			:SetStyle("margin.bottom", 8)
			:SetStyle("font", TSM.UI.Fonts.MontserratMedium)
			:SetStyle("fontHeight", 14)
			:SetStyle("textColor", "#ffffff")
			:SetText(L["BankUI Move Delay"])
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Frame", "moveDelayFrame")
			:SetLayout("HORIZONTAL")
			:SetStyle("height", 20)
			:SetStyle("margin.bottom", 24)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Input", "moveDelayInput")
				:SetStyle("height", 20)
				:SetStyle("width", 60)
				:SetStyle("margin.right", 8)
				:SetStyle("fontHeight", 14)
				:SetText(TSM.db.global.coreOptions.moveDelay)
				:SetScript("OnEscapePressed", private.MoveDelayOnEscapePressed)
				:SetScript("OnEnterPressed", private.MoveDelayOnEnterPressed)
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label2")
				:SetStyle("height", 16)
				:SetStyle("fontHeight", 12)
				:SetText(L["(minimum 0 - maximum 2)"])
			)
		)
		:AddChild(TSM.MainUI.Settings.CreateHeading("mailingOptionsTitle", L["Mailing Options"])
			:SetStyle("margin.bottom", 15)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label")
			:SetStyle("height", 18)
			:SetStyle("margin.bottom", 4)
			:SetStyle("font", TSM.UI.Fonts.MontserratMedium)
			:SetStyle("fontHeight", 14)
			:SetStyle("textColor", "#ffffff")
			:SetText(L["Default Mailing Page"])
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("SelectionDropdown", "mailPageDropdown")
			:SetStyle("height", 26)
			:SetStyle("width", 204)
			:SetStyle("margin.bottom", 8)
			:SetItems(MAIL_FRAME_TABS)
			:SetSettingInfo(TSM.db.global.mailingOptions, "defaultPage")
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "mailOption1Checkbox")
			:SetStyle("height", 28)
			:SetStyle("fontHeight", 12)
			:SetText(L["Make Mailing default mail tab"])
			:SetSettingInfo(TSM.db.global.mailingOptions, "defaultMailTab")
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "mailOption2Checkbox")
			:SetStyle("height", 28)
			:SetStyle("fontHeight", 12)
			:SetText(L["Enable inbox chat messages"])
			:SetSettingInfo(TSM.db.global.mailingOptions, "inboxMessages")
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "mailOption3Checkbox")
			:SetStyle("height", 28)
			:SetStyle("fontHeight", 12)
			:SetText(L["Display total money received"])
			:SetSettingInfo(TSM.db.global.mailingOptions, "displayMoneyCollected")
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "mailOption4Checkbox")
			:SetStyle("height", 28)
			:SetStyle("fontHeight", 12)
			:SetText(L["Delete empty NPC mail"])
			:SetSettingInfo(TSM.db.global.mailingOptions, "deleteEmptyNPCMail")
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "mailOption5Checkbox")
			:SetStyle("height", 28)
			:SetStyle("fontHeight", 12)
			:SetText(L["Auto recheck mail"])
			:SetSettingInfo(TSM.db.global.mailingOptions, "autoCheck")
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "mailOption6Checkbox")
			:SetStyle("height", 28)
			:SetStyle("margin.bottom", 16)
			:SetStyle("fontHeight", 12)
			:SetText(L["Show 'Reload' button"])
			:SetSettingInfo(TSM.db.global.mailingOptions, "showReloadBtn")
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label")
			:SetStyle("height", 18)
			:SetStyle("margin.bottom", 8)
			:SetStyle("font", TSM.UI.Fonts.MontserratMedium)
			:SetStyle("fontHeight", 14)
			:SetStyle("textColor", "#ffffff")
			:SetText(L["Amount of Bag Space to Keep Free"])
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Frame", "freeSpaceFrame")
			:SetLayout("HORIZONTAL")
			:SetStyle("height", 20)
			:SetStyle("margin.bottom", 16)
			:AddChild(TSMAPI_FOUR.UI.NewElement("InputNumeric", "moveDelayInput")
				:SetStyle("height", 20)
				:SetStyle("width", 60)
				:SetStyle("margin.right", 8)
				:SetStyle("fontHeight", 14)
				:SetMaxNumber(20)
				:SetSettingInfo(TSM.db.global.mailingOptions, "keepMailSpace")
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label2")
				:SetStyle("height", 16)
				:SetStyle("fontHeight", 12)
				:SetText(L["(minimum 0 - maximum 20)"])
			)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label")
			:SetStyle("height", 18)
			:SetStyle("margin.bottom", 4)
			:SetStyle("font", TSM.UI.Fonts.MontserratMedium)
			:SetStyle("fontHeight", 14)
			:SetStyle("textColor", "#ffffff")
			:SetText(L["Open Mail Complete Sound"])
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("SelectionDropdown", "soundDropdown")
			:SetStyle("height", 26)
			:SetStyle("width", 300)
			:SetStyle("margin.bottom", 24)
			:SetItems(private.sounds, private.soundkeys)
			:SetSettingInfo(TSM.db.global.mailingOptions, "openMailSound")
			:SetScript("OnSelectionChanged", private.SoundOnSelectionChanged)
		)
		:AddChild(TSM.MainUI.Settings.CreateHeading("sendingOptionsTitle", L["Sending Settings"])
			:SetStyle("margin.bottom", 16)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "sendMessagesCheckbox")
			:SetStyle("height", 28)
			:SetStyle("fontHeight", 12)
			:SetText(L["Enable TSM Mailing info in chat"])
			:SetSettingInfo(TSM.db.global.mailingOptions, "sendMessages")
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Checkbox", "sendItemsCheckbox")
			:SetStyle("height", 28)
			:SetStyle("margin.bottom", 16)
			:SetStyle("fontHeight", 12)
			:SetText(L["Send items individually"])
			:SetSettingInfo(TSM.db.global.mailingOptions, "sendItemsIndividually")
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label")
			:SetStyle("height", 18)
			:SetStyle("margin.bottom", 4)
			:SetStyle("font", TSM.UI.Fonts.MontserratMedium)
			:SetStyle("fontHeight", 14)
			:SetStyle("textColor", "#ffffff")
			:SetText(L["Mail Send Delay (seconds)"])
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Frame", "sendDelayFrame")
			:SetLayout("HORIZONTAL")
			:SetStyle("height", 20)
			:SetStyle("margin.bottom", 16)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Input", "sendDelay")
				:SetStyle("height", 20)
				:SetStyle("width", 60)
				:SetStyle("margin.right", 8)
				:SetStyle("fontHeight", 14)
				:SetText(TSM.db.global.mailingOptions.sendDelay)
				:SetScript("OnEscapePressed", private.SendDelayOnEscapePressed)
				:SetScript("OnEnterPressed", private.SendDelayOnEnterPressed)
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label2")
				:SetStyle("height", 16)
				:SetStyle("fontHeight", 12)
				:SetText(L["(minimum 0.1 - maximum 2)"])
			)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label")
			:SetStyle("height", 18)
			:SetStyle("margin.bottom", 4)
			:SetStyle("font", TSM.UI.Fonts.MontserratMedium)
			:SetStyle("fontHeight", 14)
			:SetStyle("textColor", "#ffffff")
			:SetText(L["Restart Delay (minutes)"])
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Frame", "restartDelayFrame")
			:SetLayout("HORIZONTAL")
			:SetStyle("height", 20)
			:SetStyle("margin.bottom", 16)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Input", "restartDelay")
				:SetStyle("height", 20)
				:SetStyle("width", 60)
				:SetText(TSM.db.global.mailingOptions.resendDelay)
				:SetScript("OnEscapePressed", private.RestartDelayOnEscapePressed)
				:SetScript("OnEnterPressed", private.RestartDelayOnEnterPressed)
			)
			:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label2")
				:SetStyle("height", 16)
				:SetStyle("fontHeight", 12)
				:SetText(L["(minimum 0.5 - maximum 10)"])
			)
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("Text", "label")
			:SetStyle("height", 18)
			:SetStyle("margin.bottom", 4)
			:SetStyle("font", TSM.UI.Fonts.MontserratMedium)
			:SetStyle("fontHeight", 14)
			:SetStyle("textColor", "#ffffff")
			:SetText(L["Mail Disenchantables Max Quality"])
		)
		:AddChild(TSMAPI_FOUR.UI.NewElement("SelectionDropdown", "mailPageDropdown")
			:SetStyle("height", 26)
			:SetStyle("width", 300)
			:SetItems(ITEM_QUALITY_DESCS, ITEM_QUALITY_KEYS)
			:SetSettingInfo(TSM.db.global.mailingOptions, "deMaxQuality")
		)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.SoundOnSelectionChanged(self, selection)
	TSMAPI_FOUR.Sound.PlaySound(TSM.db.global.mailingOptions.openMailSound)
end

function private.SendDelayOnEscapePressed(self)
	self:SetText(TSM.db.global.mailingOptions.sendDelay)
	self:Draw()
end

function private.SendDelayOnEnterPressed(self)
	local value = tonumber(strtrim(self:GetText()))
	if value then
		value = TSMAPI_FOUR.Util.Round(value, 0.1)
		TSM.db.global.mailingOptions.sendDelay = value
	else
		value = TSM.db.global.mailingOptions.sendDelay
	end
	self:SetText(value)
	self:Draw()
end

function private.RestartDelayOnEscapePressed(self)
	self:SetText(TSM.db.global.mailingOptions.resendDelay)
	self:Draw()
end

function private.RestartDelayOnEnterPressed(self)
	local value = tonumber(strtrim(self:GetText()))
	if value then
		value = TSMAPI_FOUR.Util.Round(value, 0.5)
		TSM.db.global.mailingOptions.resendDelay = value
	else
		value = TSM.db.global.mailingOptions.resendDelay
	end
	self:SetText(value)
	self:Draw()
end

function private.MoveDelayOnEscapePressed(self)
	self:SetText(TSM.db.global.coreOptions.moveDelay)
	self:Draw()
end

function private.MoveDelayOnEnterPressed(self)
	local value = tonumber(strtrim(self:GetText()))
	if value then
		TSM.db.global.coreOptions.moveDelay = min(max(value, 0), 2)
	else
		value = TSM.db.global.coreOptions.moveDelay
	end
	self:SetText(value)
	self:Draw()
end
