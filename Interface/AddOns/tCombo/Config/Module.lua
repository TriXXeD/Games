local Class = select(2, UnitClass("player"))
local _, tCombo = ...

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

local tonumber = tonumber
local unpack = unpack
local pairs = pairs
local type = type
local Width

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

-- Config module
local ConfigFrame = CreateFrame("Frame", "HydraComboConfigFrame", UIParent)
ConfigFrame:SetPoint("CENTER", UIParent, 0, 100)
ConfigFrame:SetSize(158, 220)
StyleFrame(ConfigFrame)
ConfigFrame:Hide()

local SetFontSize = function(self)
	local Size = tonumber(self:GetText())
	
	if (not Size or type(Size) ~= "number" or Size <= 0) then
		return
	end
	
	self:ClearFocus()
	self:SetAutoFocus(false)
	tComboEnergyBar.Text:SetFont(Font, Size)
	
	tCombo.Options.EnergyFontSize = Size
end

local SetComboBarWidth = function(self)
	local Size = tonumber(self:GetText())
	
	if (not Size or type(Size) ~= "number" or Size <= 0) then
		return
	end
	
	self:ClearFocus()
	self:SetAutoFocus(false)
	tComboPoints:SetWidth(Size)
	tComboEnergyBar:SetWidth(Size)
	tComboMover:SetWidth(Size)
	Width = (Size / 5) - 2
	
	for i = 1, NumPoints do
		tComboPoints[i]:SetWidth((i == 1 and Width + 2) or Width)
	end
	
	tCombo.Options.ComboBarWidth = Size
end

local SetEnergyBarHeight = function(self)
	local Size = tonumber(self:GetText())
	
	if (not Size or type(Size) ~= "number" or Size <= 0) then
		return
	end
	
	self:ClearFocus()
	self:SetAutoFocus(false)
	tComboEnergyBar:SetHeight(Size)
	
	tCombo.Options.EnergyBarHeight = Size
end

local SetComboBarHeight = function(self)
	local Size = tonumber(self:GetText())
	
	if (not Size or type(Size) ~= "number" or Size <= 0) then
		return
	end
	
	self:ClearFocus()
	self:SetAutoFocus(false)
	tComboPoints:SetHeight(Size)
	tComboMover:SetHeight(Size)
	
	for i = 1, NumPoints do
		tComboPoints[i]:SetHeight(Size - 4)
	end
	
	tCombo.Options.ComboBarHeight = Size
end

local SetMinAlpha = function(self)
	local Alpha = tonumber(self:GetText())
	
	if (not Alpha or type(Alpha) ~= "number") then
		return
	end
	
	self:ClearFocus()
	self:SetAutoFocus(false)
	
	for i = 1, NumPoints do
		tComboPoints[i]:SetAlpha(Alpha)
	end

	tCombo.Options.ComboMinAlpha = Alpha
end

local OnMouseDown = function(self)
	self:SetAutoFocus(true)
end

local OnEscapePressed = function(self)
	self:SetAutoFocus(false)
	self:ClearFocus()
end

local OnClick = function(self)
	if self.Toggled then
		self.Tex:SetTexture(1, 0, 0)
		self.Toggled = false
	else
		self.Tex:SetTexture(0, 1, 0)
		self.Toggled = true
	end
end

local Check = function(self)
	self.Toggled = false
	OnClick(self)

	if self.HookFunc then
		self:HookFunc()
	end
end

local Uncheck = function(self)
	self.Toggled = true
	OnClick(self)
	
	if self.HookFunc then
		self:HookFunc()
	end
end

local IsChecked = function(self)
	if self.Toggled then
		return true
	end
end

local Hook = function(self, func)
	if (type(func) ~= "function") then
		return
	end
	
	self.HookFunc = func
	self:HookScript("OnClick", func)
end

local CreateConfigButton = function(name)
	local Button = CreateFrame("Button", name, ConfigFrame)
	StyleFrame(Button)
	Button:SetSize(40, 12)
	Button.Toggled = false
	Button:SetScript("OnClick", OnClick)
	
	Button.Tex = Button:CreateTexture(nil, "OVERLAY")
	Button.Tex:SetPoint("TOPLEFT", 2, -2)
	Button.Tex:SetPoint("BOTTOMRIGHT", -2, 2)
	Button.Tex:SetTexture(1, 0, 0)
	
	Button.Hook = Hook
	Button.Check = Check
	Button.Uncheck = Uncheck
	Button.IsChecked = IsChecked

	Button.Label = Button:CreateFontString(nil, "OVERLAY")
	Button.Label:SetFont(Font, 12)
	Button.Label:SetPoint("LEFT", Button, "RIGHT", 5, 0)
	Button.Label:SetShadowColor(0, 0, 0)
	Button.Label:SetShadowOffset(1.25, -1.25)

	return Button
end

local EditBox = {}

for i = 1, 6 do
	EditBox[i] = CreateFrame("Frame", nil, ConfigFrame)
	EditBox[i]:SetSize(40, 20)
	StyleFrame(EditBox[i])

	EditBox[i].Box = CreateFrame("EditBox", "tComboEditBox" .. i, ConfigFrame)
	EditBox[i].Box:SetFont(Font, 12)
	EditBox[i].Box:SetPoint("TOPLEFT", EditBox[i], 4, -2)
	EditBox[i].Box:SetPoint("BOTTOMRIGHT", EditBox[i], -4, 2)
	EditBox[i].Box:SetMaxLetters(3)
	EditBox[i].Box:SetAutoFocus(false)
	EditBox[i].Box:EnableKeyboard(true)
	EditBox[i].Box:EnableMouse(true)
	EditBox[i].Box:SetScript("OnMouseDown", OnMouseDown)
	EditBox[i].Box:SetScript("OnEscapePressed", OnEscapePressed)
	EditBox[i].Box:SetScript("OnEditFocusLost", OnEscapePressed)
	
	EditBox[i].Label = EditBox[i]:CreateFontString(nil, "OVERLAY")
	EditBox[i].Label:SetFont(Font, 12)
	EditBox[i].Label:SetPoint("LEFT", EditBox[i], "RIGHT", 5, 0)
	EditBox[i].Label:SetShadowColor(0,0,0)
	EditBox[i].Label:SetShadowOffset(1.25, -1.25)
	
	if (i == 1) then -- Combo Bar Width
		EditBox[i]:SetPoint("TOPLEFT", ConfigFrame, "TOPLEFT", 10, -10)
		EditBox[i].Box:SetScript("OnEnterPressed", SetComboBarWidth)
		EditBox[i].Box:SetText(tCombo.Options.ComboBarWidth)
		EditBox[i].Label:SetText("Combo Bar Width")
	elseif (i == 2) then -- Combo Bar Height
		EditBox[i]:SetPoint("TOP", EditBox[i-1], "BOTTOM", 0, -5)
		EditBox[i].Box:SetScript("OnEnterPressed", SetComboBarHeight)
		EditBox[i].Box:SetText(tCombo.Options.ComboBarHeight)
		EditBox[i].Label:SetText("Combo Bar Height")
	elseif (i == 3) then -- Combo Min Alpha
		EditBox[i]:SetPoint("TOP", EditBox[i-1], "BOTTOM", 0, -5)
		EditBox[i].Box:SetScript("OnEnterPressed", SetMinAlpha)
		EditBox[i].Box:SetText(tCombo.Options.ComboMinAlpha)
		EditBox[i].Label:SetText("Combo Min Alpha")
	elseif (i == 4) then -- Energy Bar Height
		EditBox[i]:SetPoint("TOP", EditBox[i-1], "BOTTOM", 0, -5)
		EditBox[i].Box:SetScript("OnEnterPressed", SetEnergyBarHeight)
		EditBox[i].Box:SetText(tCombo.Options.EnergyBarHeight)
		EditBox[i].Label:SetText("Energy Bar Height")
	elseif (i == 5) then -- Energy Font Size
		EditBox[i]:SetPoint("TOP", EditBox[i-1], "BOTTOM", 0, -5)
		EditBox[i].Box:SetScript("OnEnterPressed", SetFontSize)
		EditBox[i].Box:SetText(tCombo.Options.EnergyFontSize)
		EditBox[i].Label:SetText("Energy Font Size")
	else -- Energy Fade Time
		-- Derp
	end
end

local ToggleComboOOC = function(self)
	if self:IsChecked() then
		tComboPoints:Enable()
		tCombo.Options.ComboHideOOC = true
	else
		tComboPoints:Disable()
		tCombo.Options.ComboHideOOC = false
	end
end

local ToggleEnergyBar = function(self)
	if self:IsChecked() then
		tComboEnergyBar:Enable()
		tCombo.Options.EnergyBarEnable = true
	else
		tComboEnergyBar:Disable()
		tCombo.Options.EnergyBarEnable = false
	end
end

local CheckBox = {}

for i = 1, 2 do
	CheckBox[i] = CreateConfigButton("tComboCheckBox" .. i)
	
	if (i == 1) then
		CheckBox[i]:SetPoint("TOPLEFT", EditBox[5], "BOTTOMLEFT", 0, -5)
		CheckBox[i]:Hook(ToggleComboOOC)
		CheckBox[i].Label:SetText("Hide Points OOC")
	else
		CheckBox[i]:SetPoint("TOPLEFT", CheckBox[i-1], "BOTTOMLEFT", 0, -5)
		CheckBox[i]:Hook(ToggleEnergyBar)
		CheckBox[i].Label:SetText("Enable Energy Bar")
	end
end

local MoverButton = CreateFrame("Button", nil, ConfigFrame)
StyleFrame(MoverButton)
MoverButton:SetSize(138, 20)
MoverButton:SetPoint("BOTTOM", 0, 10)
MoverButton:SetText("|cff00FF00Unlock|r Frame")

MoverButton.Text = MoverButton:CreateFontString()
MoverButton.Text:SetPoint("CENTER", MoverButton, 0, -1)
MoverButton.Text:SetFont(Font, 12)
MoverButton.Text:SetText("|cff00FF00Unlock|r Frame")

MoverButton:SetScript("OnClick", function(self)
	if not self.Shown then
		tComboMover:Show()
		self.Text:SetText("|cffFF0000Lock|r Frame")
		self.Shown = true
	else
		tComboMover:Hide()
		self.Text:SetText("|cff00FF00Unlock|r Frame")
		self.Shown = false
	end
end)

-- Saved Variables
local SaveVariables = function(self, event)
	if (event == "ADDON_LOADED") or (event == "PLAYER_ENTERING_WORLD") then
		if (tComboConfig == nil) then
			tComboConfig = {}
			
			for option, value in pairs(tCombo.Options) do
				tComboConfig[option] = value
			end
		else
			tCombo.Options = tComboConfig
		end
	else
		for option, value in pairs(tCombo.Options) do
			tComboConfig[option] = value
		end
	end
	
	tComboEditBox1:SetText(tCombo.Options.ComboBarWidth)
	tComboEditBox2:SetText(tCombo.Options.ComboBarHeight)
	tComboEditBox3:SetText(tCombo.Options.ComboMinAlpha)
	tComboEditBox4:SetText(tCombo.Options.EnergyBarHeight)
	tComboEditBox5:SetText(tCombo.Options.EnergyFontSize)
end

local Saver = CreateFrame("FRAME")
Saver:RegisterEvent("ADDON_LOADED")
Saver:RegisterEvent("PLAYER_ENTERING_WORLD")
Saver:RegisterEvent("PLAYER_LOGOUT")
Saver:SetScript("OnEvent", SaveVariables)

local EnableConfig = function()
	ToggleFrame(ConfigFrame)
end

SLASH_HYDRACOMBOCONFIG1 = "/tcombo"
SlashCmdList["HYDRACOMBOCONFIG"] = EnableConfig