local _, tCombo = ...
local Class = select(2, UnitClass("player"))

if (not Class == "ROGUE" or not Class == "DRUID") then
	return
end

-- Locals
local Color = RAID_CLASS_COLORS[Class]
local NumPoints = MAX_COMBO_POINTS
local Texture = [[Interface\AddOns\tCombo\Media\StatusBar]]
local Blank = [[Interface\AddOns\tCombo\Media\Blank]]
local Font = [=[Interface\Addons\tCombo\Media\Font.ttf]=]
local BackdropColor = {0.075, 0.075, 0.075}
local BorderColor = {0.250, 0.250, 0.250}

local UnitHasVehicleUI = UnitHasVehicleUI
local GetComboPoints = GetComboPoints
local UIFrameFade = UIFrameFade
local UnitPowerMax = UnitPowerMax
local UnitPower = UnitPower
local GetSpellInfo = GetSpellInfo
local UnitAura = UnitAura
local select = select

local Colors = { 
	[1] = {0.70, 0.30, 0.30},
	[2] = {0.70, 0.40, 0.30},
	[3] = {0.60, 0.60, 0.30},
	[4] = {0.40, 0.70, 0.30},
	[5] = {0.30, 0.70, 0.30},
}

local Backdrop = {
	bgFile = Blank, 
	edgeFile = Blank, 
	tile = false, tileSize = 0, edgeSize = 1,
	insets = {left = -1, right = -1, top = -1, bottom = -1}
}

-- Functions
local StyleFrame = function(self)
	self:SetBackdrop(Backdrop)
	self:SetBackdropColor(unpack(BackdropColor))
	self:SetBackdropBorderColor(unpack(BorderColor))
end

local GetAnticipation = function()
	local Name = GetSpellInfo(115189)
	local Count = select(4, UnitAura("player", Name))
	
	if (Count and Count > 0) then
		return Count
	end
end

local OnUpdate = function(self)
	local min = UnitPower("player")
	
	self.Bar:SetValue(min)
	self.Text:SetText(min .. " / " .. self.max)
end

local SetComboPoints = function(self)
	local Points = (UnitHasVehicleUI("player") and GetComboPoints("vehicle", "target") or GetComboPoints("player", "target"))
	
	for i = 1, NumPoints do
		if (i <= Points) then
			self[i]:SetAlpha(1)
		else
			self[i]:SetAlpha(tCombo.Options.ComboMinAlpha)
		end
	end
end

local ConstructComboPoints = function()
	local ComboPoints = CreateFrame("Frame", "tComboPoints", UIParent)
	StyleFrame(ComboPoints)
	ComboPoints:SetSize(tCombo.Options.ComboBarWidth, tCombo.Options.ComboBarHeight)
	ComboPoints:SetAllPoints(tComboMover)
	ComboPoints:RegisterEvent("UNIT_COMBO_POINTS")
	ComboPoints:RegisterEvent("PLAYER_TARGET_CHANGED")
	ComboPoints:RegisterEvent("PLAYER_ENTERING_WORLD")
	ComboPoints:RegisterEvent("PLAYER_REGEN_DISABLED")
	ComboPoints:RegisterEvent("PLAYER_REGEN_ENABLED")
	
	if (Class == "ROGUE") then
		ComboPoints:RegisterEvent("UNIT_AURA") -- Only used for antipation
	end
	
	ComboPoints:SetScript("OnEvent", function(self, event, arg1)
		self[event](self, arg1)
	end)
	
	ComboPoints["UNIT_AURA"] = function(self, unit)
		if (unit ~= "player") then
			return
		end
		
		local Count = GetAnticipation()
		
		self.Anticipation:SetText(Count and Count or "")
	end

	ComboPoints["UNIT_COMBO_POINTS"] = function(self)
		SetComboPoints(self)
	end
	
	ComboPoints["PLAYER_TARGET_CHANGED"] = function(self)
		SetComboPoints(self)
	end
	
	ComboPoints["PLAYER_ENTERING_WORLD"] = function(self)
		if (not tCombo.Options.ComboHideOOC) then
			self:UnregisterEvent("PLAYER_REGEN_DISABLED")
			self:UnregisterEvent("PLAYER_REGEN_ENABLED")
		end
		
		self:UnregisterEvent("PLAYER_ENTERING_WORLD")
	end
	
	ComboPoints["PLAYER_REGEN_DISABLED"] = function(self)
		UIFrameFadeIn(self, 0.6, 0, 1)
	end
	
	ComboPoints["PLAYER_REGEN_ENABLED"] = function(self)
		UIFrameFadeOut(self, 0.6, 1, 0)
	end
	
	ComboPoints.Enable = function(self)
		self:RegisterEvent("PLAYER_REGEN_ENABLED")
		self:RegisterEvent("PLAYER_REGEN_DISABLED")
		self:Hide()
	end
	
	ComboPoints.Disable = function(self)
		self:UnregisterEvent("PLAYER_REGEN_ENABLED")
		self:UnregisterEvent("PLAYER_REGEN_DISABLED")
		self:Show()
	end

	ComboPoints.Anticipation = ComboPoints:CreateFontString(nil, "OVERLAY")
	ComboPoints.Anticipation:SetFont(Font, tCombo.Options.EnergyFontSize)
	ComboPoints.Anticipation:SetPoint("BOTTOM", ComboPoints, "TOP", 0, 1)
	ComboPoints.Anticipation:SetShadowColor(0, 0, 0)
	ComboPoints.Anticipation:SetShadowOffset(1.25, -1.25)
	
	local Width = (tCombo.Options.ComboBarWidth / 5) - 2

	for i = 1, NumPoints do
		ComboPoints[i] = CreateFrame("StatusBar", nil, ComboPoints)
		ComboPoints[i]:SetStatusBarTexture(Texture)
		ComboPoints[i]:SetStatusBarColor(unpack(Colors[i]))
		ComboPoints[i]:SetSize((i == 1 or i == 2) and Width + 1 or Width, tCombo.Options.ComboBarHeight - 4)
		ComboPoints[i]:SetAlpha(tCombo.Options.ComboMinAlpha)

		if (i == 1) then
			ComboPoints[i]:SetPoint("LEFT", ComboPoints, "LEFT", 2, 0)
		else
			ComboPoints[i]:SetPoint("LEFT", ComboPoints[i-1], "RIGHT", 1, 0)
		end
	end
end

local ConstructEnergyBar = function()
	local EnergyBar = CreateFrame("Frame", "tComboEnergyBar", UIParent)
	EnergyBar:SetSize(tCombo.Options.ComboBarWidth, tCombo.Options.EnergyBarHeight)
	EnergyBar:SetPoint("TOP", tComboPoints, "BOTTOM", 0, -3)
	StyleFrame(EnergyBar)
	EnergyBar:Hide()
	EnergyBar:RegisterEvent("PLAYER_REGEN_ENABLED")
	EnergyBar:RegisterEvent("PLAYER_REGEN_DISABLED")
	EnergyBar:SetScript("OnEvent", function(self, event)
		if (event == "PLAYER_REGEN_ENABLED") then
			UIFrameFadeOut(self, 0.6, 1, 0)
			self:SetScript("OnUpdate", nil)
		else
			self.max = UnitPowerMax("player")
			self:SetScript("OnUpdate", OnUpdate)
			UIFrameFadeIn(self, 0.6, 0, 1)
		end
	end)

	EnergyBar.Bar = CreateFrame("StatusBar", nil, EnergyBar)
	EnergyBar.Bar:SetStatusBarTexture(Texture)
	EnergyBar.Bar:SetStatusBarColor(Color.r, Color.g, Color.b)
	EnergyBar.Bar:SetMinMaxValues(0, UnitPowerMax("player"))
	EnergyBar.Bar:SetPoint("TOPLEFT", 2, -2)
	EnergyBar.Bar:SetPoint("BOTTOMRIGHT", -2, 2)

	EnergyBar.Text = EnergyBar:CreateFontString(nil, "OVERLAY")
	EnergyBar.Text:SetFont(Font, tCombo.Options.EnergyFontSize)
	EnergyBar.Text:SetPoint("TOP", EnergyBar, "BOTTOM", 0, -3)
	EnergyBar.Text:SetShadowColor(0, 0, 0)
	EnergyBar.Text:SetShadowOffset(1.25, -1.25)
	
	EnergyBar.Enable = function(self)
		self:RegisterEvent("PLAYER_REGEN_ENABLED")
		self:RegisterEvent("PLAYER_REGEN_DISABLED")
	end
	
	EnergyBar.Disable = function(self)
		self:UnregisterEvent("PLAYER_REGEN_ENABLED")
		self:UnregisterEvent("PLAYER_REGEN_DISABLED")
		self:Hide()
	end
end

local Load = CreateFrame("Frame")
Load:RegisterEvent("PLAYER_ENTERING_WORLD")
Load:SetScript("OnEvent", function(self, event)
	ConstructComboPoints()
	ConstructEnergyBar()
	
	-- Move me later
	if tCombo.Options.ComboHideOOC then tComboCheckBox1:Check() else tComboCheckBox1:Uncheck() end
	if tCombo.Options.EnergyBarEnable then tComboCheckBox2:Check() else tComboCheckBox2:Uncheck() end
	
	self:UnregisterEvent(event)
end)

-- Disable other combo points
if (TukuiPlayer and TukuiPlayer.ComboPointsBar) then
	TukuiPlayer:DisableElement("ComboPointsBar")
	TukuiPlayer.ComboPointsBar:Hide()
	
	if TukuiPlayer.shadow then
		TukuiPlayer.shadow:SetPoint("TOPLEFT", -3, 3)
	end
end