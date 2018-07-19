-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local ProfessionState = TSM.Crafting:NewPackage("ProfessionState")
local private = { fsm = nil, updateCallbacks = {}, isClosed = true, professionName = nil }
local WAIT_FRAME_DELAY = 5



-- ============================================================================
-- Module Functions
-- ============================================================================

function ProfessionState.OnInitialize()
	private.CreateFSM()
end

function ProfessionState.RegisterUpdateCallback(callback)
	tinsert(private.updateCallbacks, callback)
end

function ProfessionState.GetIsClosed()
	return private.isClosed
end

function ProfessionState.GetCurrentProfession()
	return private.professionName
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.CreateFSM()
	TSMAPI_FOUR.Event.Register("TRADE_SKILL_SHOW", function()
		private.fsm:ProcessEvent("EV_TRADE_SKILL_SHOW")
	end)
	TSMAPI_FOUR.Event.Register("TRADE_SKILL_CLOSE", function()
		private.fsm:ProcessEvent("EV_TRADE_SKILL_CLOSE")
	end)
	TSMAPI_FOUR.Event.Register("GARRISON_TRADESKILL_NPC_CLOSED", function()
		private.fsm:ProcessEvent("EV_TRADE_SKILL_CLOSE")
	end)
	TSMAPI_FOUR.Event.Register("TRADE_SKILL_DATA_SOURCE_CHANGED", function()
		private.fsm:ProcessEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGED")
	end)
	TSMAPI_FOUR.Event.Register("TRADE_SKILL_DATA_SOURCE_CHANGING", function()
		private.fsm:ProcessEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGING")
	end)
	local function FrameDelayCallback()
		private.fsm:ProcessEvent("EV_FRAME_DELAY")
	end
	private.fsm = TSMAPI_FOUR.FSM.New("PROFESSION_STATE")
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_CLOSED")
			:SetOnEnter(function()
				private.isClosed = true
				private.RunUpdateCallbacks()
			end)
			:SetOnExit(function()
				private.isClosed = false
				private.RunUpdateCallbacks()
			end)
			:AddTransition("ST_WAITING_FOR_DATA")
			:AddEvent("EV_TRADE_SKILL_SHOW", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_WAITING_FOR_DATA"))
		)
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_WAITING_FOR_DATA")
			:AddTransition("ST_WAITING_FOR_READY")
			:AddTransition("ST_CLOSED")
			:AddEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGED", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_WAITING_FOR_READY"))
			:AddEvent("EV_TRADE_SKILL_CLOSE", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_CLOSED"))
		)
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_WAITING_FOR_READY")
			:SetOnEnter(function()
				TSMAPI_FOUR.Delay.AfterFrame("PROFESSION_STATE_TIME", WAIT_FRAME_DELAY, FrameDelayCallback, WAIT_FRAME_DELAY)
			end)
			:SetOnExit(function()
				TSMAPI_FOUR.Delay.Cancel("PROFESSION_STATE_TIME")
			end)
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_DATA_CHANGING")
			:AddTransition("ST_CLOSED")
			:AddEvent("EV_FRAME_DELAY", function()
				if C_TradeSkillUI.IsTradeSkillReady() and not C_TradeSkillUI.IsDataSourceChanging() then
					return "ST_SHOWN"
				end
			end)
			:AddEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGING", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_DATA_CHANGING"))
			:AddEvent("EV_TRADE_SKILL_CLOSE", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_CLOSED"))
		)
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_SHOWN")
			:SetOnEnter(function()
				local _, fullName, _, _, _, _, name = C_TradeSkillUI.GetTradeSkillLine()
				name = name or fullName
				assert(name)
				TSM:LOG_INFO("Showing profession: %s", name)
				private.professionName = name
				private.RunUpdateCallbacks()
			end)
			:SetOnExit(function()
				private.professionName = nil
				private.RunUpdateCallbacks()
			end)
			:AddTransition("ST_DATA_CHANGING")
			:AddTransition("ST_CLOSED")
			:AddEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGING", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_DATA_CHANGING"))
			:AddEvent("EV_TRADE_SKILL_CLOSE", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_CLOSED"))
		)
		:AddState(TSMAPI_FOUR.FSM.NewState("ST_DATA_CHANGING")
			:AddTransition("ST_WAITING_FOR_READY")
			:AddTransition("ST_CLOSED")
			:AddEvent("EV_TRADE_SKILL_DATA_SOURCE_CHANGED", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_WAITING_FOR_READY"))
			:AddEvent("EV_TRADE_SKILL_CLOSE", TSMAPI_FOUR.FSM.SimpleTransitionEventHandler("ST_CLOSED"))
		)
		:Init("ST_CLOSED")
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.RunUpdateCallbacks()
	for _, callback in ipairs(private.updateCallbacks) do
		callback(private.professionName)
	end
end
