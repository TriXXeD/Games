-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local VendoringUI = TSM.UI:NewPackage("VendoringUI")
local L = TSM.L
local private = { topLevelPages = {}, fsm = nil, defaultUISwitchBtn = nil, showDefault = true, isVisible = false }
local MIN_FRAME_SIZE = { width = 560, height = 500 }



-- ============================================================================
-- Module Functions
-- ============================================================================

function VendoringUI.OnInitialize()
	private.showDefault = not TSM.db.global.vendoringOptions.defaultMerchantTab
	private.FSMCreate()
end

function VendoringUI.RegisterTopLevelPage(name, textureInfo, callback)
	tinsert(private.topLevelPages, { name = name, textureInfo = textureInfo, callback = callback })
end

function VendoringUI.IsVisible()
	return private.isVisible
end



-- ============================================================================
-- Main Frame
-- ============================================================================

function private.CreateMainFrame()
	local frame = TSMAPI_FOUR.UI.NewElement("LargeApplicationFrame", "base")
		:SetParent(UIParent)
		:SetMinResize(MIN_FRAME_SIZE.width, MIN_FRAME_SIZE.height)
		:SetContextTable(TSM.db.global.internalData.vendoringUIFrameContext, TSM.db:GetDefaultReadOnly("global", "internalData", "vendoringUIFrameContext"))
		:SetStyle("strata", "HIGH")
		:SetStyle("titleStyle", "TITLE_ONLY")
		:SetTitle(L["TSM Vendoring"])
		:AddSwitchButton(private.SwitchBtnOnClick)
		:SetScript("OnHide", private.BaseFrameOnHide)

	for _, info in ipairs(private.topLevelPages) do
		frame:AddNavButton(info.name, info.textureInfo, info.callback)
	end

	return frame
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.BaseFrameOnHide()
	private.fsm:ProcessEvent("EV_FRAME_HIDE")
end

function private.GetNavFrame(_, path)
	return private.topLevelPages.callback[path]()
end

function private.SwitchBtnOnClick(button)
	private.showDefault = button ~= private.defaultUISwitchBtn
	private.fsm:ProcessEvent("EV_SWITCH_BTN_CLICKED")
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	TSMAPI_FOUR.Event.Register("MERCHANT_SHOW", function()
		private.fsm:ProcessEvent("EV_MERCHANT_SHOW")
	end)
	TSMAPI_FOUR.Event.Register("MERCHANT_CLOSED", function()
		private.fsm:ProcessEvent("EV_MERCHANT_CLOSED")
	end)
	MerchantFrame:UnregisterEvent("MERCHANT_SHOW")

	local fsmContext = {
		frame = nil,
	}
	local function DefaultFrameOnHide()
		private.fsm:ProcessEvent("EV_FRAME_HIDE")
	end
	private.fsm = TSMAPI_FOUR.FSM.New("MERCHANT_UI")
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_CLOSED")
			:AddTransition("ST_DEFAULT_OPEN")
			:AddTransition("ST_FRAME_OPEN")
			:AddEvent("EV_FRAME_TOGGLE", function(context)
				assert(not private.showDefault)
				return "ST_FRAME_OPEN"
			end)
			:AddEvent("EV_MERCHANT_SHOW", function(context)
				if private.showDefault then
					return "ST_DEFAULT_OPEN"
				else
					return "ST_FRAME_OPEN"
				end
			end)
		)
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_DEFAULT_OPEN")
			:SetOnEnter(function(context, isIgnored)
				MerchantFrame_OnEvent(MerchantFrame, "MERCHANT_SHOW")
				if not private.defaultUISwitchBtn then
					private.defaultUISwitchBtn = TSMAPI_FOUR.UI.NewElement("ActionButton", "switchBtn")
						:SetStyle("width", 60)
						:SetStyle("height", 15)
						:SetStyle("anchors", { { "TOPRIGHT", -30, -4 } })
						:SetStyle("font", TSM.UI.Fonts.MontserratBold)
						:SetStyle("fontHeight", 12)
						:SetText(L["TSM4"])
						:SetScript("OnClick", private.SwitchBtnOnClick)
					private.defaultUISwitchBtn:_GetBaseFrame():SetParent(MerchantFrame)
				end
				if isIgnored then
					private.defaultUISwitchBtn:Hide()
				else
					private.defaultUISwitchBtn:Show()
					private.defaultUISwitchBtn:Draw()
				end
				MerchantFrame:SetScript("OnHide", DefaultFrameOnHide)
			end)
			:SetOnExit(function(context)
				MerchantFrame:SetScript("OnHide", nil)
				HideUIPanel(MerchantFrame)
			end)
			:AddTransition("ST_CLOSED")
			:AddTransition("ST_FRAME_OPEN")
			:AddEvent("EV_FRAME_HIDE", function(context)
				CloseMerchant()
				return "ST_CLOSED"
			end)
			:AddEvent("EV_MERCHANT_SHOW", MerchantFrame_Update)
			:AddEvent("EV_MERCHANT_CLOSED", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_CLOSED"))
			:AddEvent("EV_SWITCH_BTN_CLICKED", function()
				return "ST_FRAME_OPEN"
			end)
		)
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_FRAME_OPEN")
			:SetOnEnter(function(context)
				assert(not context.frame)
				OpenAllBags()
				context.frame = private.CreateMainFrame()
				context.frame:Show()
				context.frame:GetElement("titleFrame.switchBtn"):Show()
				context.frame:Draw()
				private.isVisible = true
			end)
			:SetOnExit(function(context)
				CloseAllBags()
				private.isVisible = false
				context.frame:Hide()
				context.frame:Release()
				context.frame = nil
			end)
			:AddTransition("ST_CLOSED")
			:AddTransition("ST_DEFAULT_OPEN")
			:AddEvent("EV_FRAME_HIDE", function(context)
				CloseMerchant()
				return "ST_CLOSED"
			end)
			:AddEvent("EV_MERCHANT_CLOSED", function(context)
				return "ST_CLOSED"
			end)
			:AddEvent("EV_SWITCH_BTN_CLICKED", function()
				return "ST_DEFAULT_OPEN"
			end)
		)
		:Init("ST_CLOSED", fsmContext)
end
