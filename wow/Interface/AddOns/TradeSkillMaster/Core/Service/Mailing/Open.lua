-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                http://www.curse.com/addons/wow/tradeskill-master               --
--                                                                                --
--             A TradeSkillMaster Addon (http://tradeskillmaster.com)             --
--    All Rights Reserved* - Detailed license information included with addon.    --
-- ------------------------------------------------------------------------------ --

local _, TSM = ...
local Open = TSM.Mailing:NewPackage("Open")
local private = {
	thread = nil,
	isOpening = false,
	lastCheck = nil
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Open.OnInitialize()
	private.thread = TSMAPI_FOUR.Thread.New("MAIL_OPENING", private.OpenMailThread)

	TSMAPI_FOUR.Event.Register("MAIL_SHOW", private.ScheduleCheck)
	TSMAPI_FOUR.Event.Register("MAIL_CLOSED", private.MailClosedHandler)
end

function Open.KillThread()
	TSMAPI_FOUR.Thread.Kill(private.thread)

	private.isOpening = false
end

function Open.StartOpening(callback, autoRefresh, filterText, filterType)
	TSMAPI_FOUR.Thread.Kill(private.thread)

	private.isOpening = true

	TSMAPI_FOUR.Thread.SetCallback(private.thread, callback)
	TSMAPI_FOUR.Thread.Start(private.thread, autoRefresh, filterText, filterType)
end

function Open.GetLastCheckTime()
	return private.lastCheck
end



-- ============================================================================
-- Mail Opening Thread
-- ============================================================================

function private.OpenMailThread(autoRefresh, filterText, filterType)
	while true do
		local query = TSM.Inventory.MailTracking.CreateMailInboxQuery()
		query:ResetOrderBy()
			:OrderBy("index", false)
			:Matches("subject", filterText)
			:Select("index")

		if filterType then
			query:Equal("icon", filterType)
		end

		local mails = TSMAPI_FOUR.Thread.AcquireSafeTempTable()

		for _, index in query:Iterator() do
			tinsert(mails, index)
		end

		query:Release()

		private.OpenMails(mails, filterType)

		TSMAPI_FOUR.Thread.ReleaseSafeTempTable(mails)

		if not autoRefresh then
			break
		end

		local numLeftMail, totalLeftMail = GetInboxNumItems()
		if totalLeftMail == numLeftMail or numLeftMail == 50 then
			break
		end

		CheckInbox()
		TSMAPI_FOUR.Thread.Sleep(1)
	end

	private.isOpening = false
end

function private.CanOpenMail()
	return not C_Mail.IsCommandPending()
end

function private.OpenMails(mails, filterType)
	for i = 1, #mails do
		local index = mails[i]
		TSMAPI_FOUR.Thread.WaitForFunction(private.CanOpenMail)

		local mailType = TSM.Inventory.MailTracking.GetMailType(index)

		if (not filterType and mailType) or (filterType and filterType == mailType) then
			AutoLootMailItem(index)

			TSMAPI_FOUR.Thread.WaitForEvent("CLOSE_INBOX_ITEM")
		end
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.CheckInbox()
	if private.isOpening then
		-- try again in a second
		TSMAPI_FOUR.Delay.AfterTime("mailInboxCheck", 1, private.CheckInbox)
		return
	end

	CheckInbox()
	private.ScheduleCheck()
end



-- ============================================================================
-- Event Handlers
-- ============================================================================

function private.ScheduleCheck()
	if not private.lastCheck or time() - private.lastCheck > 60 then
		private.lastCheck = time()
		TSMAPI_FOUR.Delay.AfterTime("mailInboxCheck", 61, private.CheckInbox)
	else
		local nextUpdate = 61 - (time() - private.lastCheck)
		TSMAPI_FOUR.Delay.AfterTime("mailInboxCheck", nextUpdate, private.CheckInbox)
	end
end

function private.MailClosedHandler()
	TSMAPI_FOUR.Delay.Cancel("mailInboxCheck")
end
