local _, tCombo = ...
local Class = select(2, UnitClass("player"))

if (not Class == "ROGUE" or not Class == "DRUID") then
	return
end

-- Locals
local Blank = [[Interface\AddOns\tCombo\Media\Blank]]
local Font = [=[Interface\Addons\tCombo\Media\Font.ttf]=]
local BackdropColor = {0.075, 0.075, 0.075}
local BorderColor = {0.250, 0.250, 0.250}

local Backdrop = {
	bgFile = Blank, 
	edgeFile = Blank, 
	tile = false, tileSize = 0, edgeSize = 1,
	insets = {left = -1, right = -1, top = -1, bottom = -1}
}

local StyleFrame = function(self)
	self:SetBackdrop(Backdrop)
	self:SetBackdropColor(unpack(BackdropColor))
	self:SetBackdropBorderColor(unpack(BorderColor))
end

local OnDragStart = function(self)
	self:SetUserPlaced(true)
	self:StartMoving()
end

local OnDragStop = function(self)
	self:StopMovingOrSizing()
	tCombo.Options.ComboBarPoint = {self:GetPoint()}
end

local ConstructMover = function()
	local Point, Anchor, RelativePoint, xOfs, yOfs = unpack(tCombo.Options.ComboBarPoint)

	local tComboMover = CreateFrame("Frame", "tComboMover", UIParent)
	StyleFrame(tComboMover)
	tComboMover:SetSize(tCombo.Options.ComboBarWidth, tCombo.Options.ComboBarHeight)
	tComboMover:SetPoint(Point, UIParent, RelativePoint, xOfs, yOfs)
	tComboMover:SetFrameStrata("HIGH")
	tComboMover:EnableMouse(true)
	tComboMover:SetMovable(true)
	tComboMover:RegisterForDrag("LeftButton")
	tComboMover:SetScript("OnDragStart", OnDragStart)
	tComboMover:SetScript("OnDragStop", OnDragStop)
	tComboMover:Hide()
	
	tComboMover.Text = tComboMover:CreateFontString()
	tComboMover.Text:SetPoint("CENTER", tComboMover, 0, 0)
	tComboMover.Text:SetFont(Font, 12)
	tComboMover.Text:SetText("Move me!")
end

local Load = CreateFrame("Frame")
Load:RegisterEvent("PLAYER_ENTERING_WORLD")
Load:SetScript("OnEvent", function(self, event)
	ConstructMover()
	
	self:UnregisterEvent(event)
end)