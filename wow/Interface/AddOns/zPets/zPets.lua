-- Globals Section
MyAddon_UpdateInterval = .1; -- How often the OnUpdate code will run (in seconds)
zpetspec = ""
allframesshow = true
zPetsHitCountShow = true
zPetsImplosionBarShow = true
zPetsImpendingDoomBarShow = true
zpetsactioncamlock = false
zpetshidepets = false
zpetshideshards = false
zpetshidecooldowns = false
zpetshidepettext = false

-- Functions Section
function MyAddon_OnUpdate(self, elapsed)
GetSpec()
  self.TimeSinceLastUpdate = self.TimeSinceLastUpdate + elapsed; 	
	
	if zpetsframeshow==false then
		zPetsGUI:Hide()
		zPetsHIT:Hide()
		else
		zPetsGUI:Show()
		zPetsHIT:Show()
	end
  if (self.TimeSinceLastUpdate > MyAddon_UpdateInterval) then
    --
    -- Insert your OnUpdate code here
	--print("test")
    --
	--
	--print (zpetspec)
	if zpetsplayerguid == nil then
		zpetsplayerguid=UnitGUID("player")
	end
	zpetscomptime = GetTime()
	if allframesshow == true then
		if zpetspec == "Demonology" then
		--print (zpetspec)
		DemoClassCreate()
		end
	
		UpdateZUI()
		else
		HideFrames()
	end
		
    self.TimeSinceLastUpdate = 0;
  end
end



-- Global Variables --
zpetsplayerguid=nil
zpetsimpcount=0
zpetsdeimpcount=0
zpetstotalimpcount=0
zpetswildimpvalue=0
zpetsdreadcount=0
zpetsdedreadcount=0
zpetstotaldreadcount=0
--beholdercount=0
--debeholdercount=0
zpetsthalkielstotalvalue=0
zpetsthalkielcompare=0
zpetstotalvalueofimplosion=0
zpetstotalimplosionloss=0
zpetstotalimptotemcount1=0
zpetstotalimptotemcount2=0
zpetstotalimptotemcount3=0
zpetstotalimptotemcount4=0
zpetsimptotemcount1 = 0
zpetsimptotemcount2 = 0
zpetsimptotemcount3 = 0
zpetsimptotemcount4 = 0
zpetsdeimptotemcount1 = 0
zpetsdeimptotemcount2 = 0
zpetsdeimptotemcount3 = 0
zpetsdeimptotemcount4 = 0	

-- Pet Tables --
emptytimetable={}
imptimetable={}
impdurtable={}
deimptimetable={}
deimpdurtable={}
impcasttime={}
deimpcasttime={}
dreadtimetable={}
dedreadtimetable={}
--beholdertimetable={}
--debeholdertimetable={}

-- Doomguard variables
zpetsdoomguardde = 0
zpetsdoomguardcount = 0
zpetsdoomguardduration = 0
zpetsdoomguarddeduration = 0
zpetsdoomguardappliedduration = 12
zpetsdoomguardspawned = 0
zpetsdoomguarddeapplied = 0

-- Infernal variables
zpetsinfernalde = 0
zpetsinfernalcount = 0
zpetsinfernalspawned = 0
zpetsinfernaldeapplied = 0
zpetsinfernalduration = 0
zpetsinfernaldeduration = 0
zpetsinfernalappliedduration = 12

-- service variables
zpetsservicename="Felguard"
zpetsservicede = 0
zpetsservicecount = 0
zpetsservicespawned = 0
zpetsservicedeapplied = 0
zpetsserviceduration = 0
zpetsservicededuration = 0
zpetsserviceappliedduration = 12

-- darkglare variables
zpetsdarkglarede = 0
zpetsdarkglarecount = 0
zpetsdarkglarespawned = 0
zpetsdarkglaredeapplied = 0
zpetsdarkglareduration = 0
zpetsdarkglarededuration = 0
zpetsdarkglareappliedduration = 12

-- HitCount tables
demonwrathhits={}
implosionhits={}
felstormhits={}
legionstrikehits={}
zpetsHitCountDemonwrath=0
zpetsHitCountImplosion=0
zpetsHitCountFelstorm=0
zpetsHitCountLegionstrike=0

-- CooldownStart
zpetsCallDreadStalker=0
zpetsSummonBeholder=0
zpetsPetFelstorm=0
zpetsCosumptionCD=0
zpetsServiceCD=0

-- Artifact Modifiers --
if zpetsartifactpower1==nil then
 zpetsartifactpower1=0
end
if zpetsartifactpower2==nil then
 zpetsartifactpower2=0
end
local infernalfurnace = .1
local ifdamagemod = ((infernalfurnace*zpetsartifactpower1)+1)
local SPMod = 0

-- Spell and Pet Data --
zpetsdehastevalue = 60+SPMod

-- zPet Background --
zPetBackground = CreateFrame("Frame",nil,UIParent)
zPetBackground:SetFrameStrata("BACKGROUND")
zPetBackground:SetWidth(218) -- Set these to whatever height/width is needed 
zPetBackground:SetHeight(50) -- for your Texture
zt = zPetBackground:CreateTexture(nil,"BACKGROUND")
zt:SetTexture("Interface\\dialogframe\\ui-dialogbox-background-dark")
zt:SetAllPoints(zPetBackground)
zPetBackground.texture = zt

-- Class Timer Frames --
MyZpetBar1 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar1:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar1:GetStatusBarTexture():SetHorizTile(false)
MyZpetBar2 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar2:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar2:GetStatusBarTexture():SetHorizTile(false)
MyZpetBar3 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar3:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar3:GetStatusBarTexture():SetHorizTile(false)
MyZpetBar4 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar4:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar4:GetStatusBarTexture():SetHorizTile(false)

MyZpetBar5 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar5:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar5:GetStatusBarTexture():SetHorizTile(false)
MyZpetBar6 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar6:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar6:GetStatusBarTexture():SetHorizTile(false)
MyZpetBar7 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar7:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar7:GetStatusBarTexture():SetHorizTile(false)
MyZpetBar8 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar8:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar8:GetStatusBarTexture():SetHorizTile(false)
MyZpetBar9 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar9:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar9:GetStatusBarTexture():SetHorizTile(false)

MyZpetBar10 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar10:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar10:GetStatusBarTexture():SetHorizTile(false)
MyZpetBar11 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar11:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar11:GetStatusBarTexture():SetHorizTile(false)

MyZpetBar12 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar12:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar12:GetStatusBarTexture():SetHorizTile(false)
MyZpetBar13 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar13:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar13:GetStatusBarTexture():SetHorizTile(false)

MyZpetsTextFrame = CreateFrame("StatusBar", nil, UIParent)


local MyZpetText1 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
MyZpetText1:SetPoint("BOTTOMLEFT",MyZpetBar3,"BOTTOMLEFT",0,-2)
--MyZpetText1:SetText("Testtext")
MyZpetText1:SetFont("Fonts\\ARIALN.TTF", 13)

local MyZpetText2 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
MyZpetText2:SetPoint("BOTTOMLEFT",zPetsHIT,"TOPRIGHT",5,5)
--MyZpetText2:SetText("Testtext")
MyZpetText2:SetFont("Fonts\\ARIALN.TTF", 30)

local MyZpetText3 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
MyZpetText3:SetPoint("BOTTOMLEFT",zPetsHIT,"TOPRIGHT",5,40)
--MyZpetText3:SetText("Testtext")
MyZpetText3:SetFont("Fonts\\ARIALN.TTF", 30)

local MyZpetText4 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
MyZpetText4:SetPoint("BOTTOMLEFT",zPetsHIT,"TOPRIGHT",5,75)
--MyZpetText4:SetText("Testtext")
MyZpetText4:SetFont("Fonts\\ARIALN.TTF", 30)

local MyZpetText5 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
MyZpetText5:SetPoint("BOTTOMLEFT",zPetsHIT,"TOPRIGHT",5,110)
--MyZpetText5:SetText("Testtext")
MyZpetText5:SetFont("Fonts\\ARIALN.TTF", 30)


-- Icon 1 --
ZpetsIcon1 = CreateFrame("Frame",nil,UIParent)
ZpetsIcon1:SetFrameStrata("BACKGROUND")
ZpetsIcon1:SetWidth(40) -- Set these to whatever height/width is needed 
ZpetsIcon1:SetHeight(40) -- for your Texture
zt2 = ZpetsIcon1:CreateTexture(nil,"BACKGROUND")
zt2:SetTexture("Interface\\ICONS\\spell_warlock_calldreadstalkers")
SetDesaturation(zt2, nil)
zt2:SetAllPoints(ZpetsIcon1)
ZpetsIcon1.texture = zt2
ZpetsIcon1:SetPoint("TOP", zPetBackground, "BOTTOM", 0, -2);

MyZpetCDFrame1Start = 0

MyZpetCDFrame1 = CreateFrame("Cooldown", nil, UIParent, "CooldownFrameTemplate")
--MyZpetCDFrame1:SetPoint("BOTTOMLEFT",ZpetsIcon1,"BOTTOMLEFT",0,-2)
MyZpetCDFrame1:SetAllPoints(ZpetsIcon1)

local ZpetsIcon1Text = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
ZpetsIcon1Text:SetText("2.4")
ZpetsIcon1Text:SetFont("Fonts\\ARIALN.TTF", 25, "OUTLINE")

-- Icon 2 --
ZpetsIcon2 = CreateFrame("Frame",nil,UIParent)
ZpetsIcon2:SetFrameStrata("BACKGROUND")
ZpetsIcon2:SetWidth(40) -- Set these to whatever height/width is needed 
ZpetsIcon2:SetHeight(40) -- for your Texture
zt3 = ZpetsIcon2:CreateTexture(nil,"BACKGROUND")
zt3:SetTexture("Interface\\ICONS\\ability_warlock_impoweredimp")
SetDesaturation(zt3, nil)
zt3:SetAllPoints(ZpetsIcon2)
ZpetsIcon2.texture = zt3
ZpetsIcon2:SetPoint("TOP", zPetBackground, "BOTTOM", 42, -2);

MyZpetCDFrame2 = CreateFrame("Cooldown", nil, UIParent, "CooldownFrameTemplate")
MyZpetCDFrame2:SetPoint("BOTTOMLEFT",ZpetsIcon2,"TOP",0,-2)
MyZpetCDFrame2:SetAllPoints(ZpetsIcon2)

local ZpetsIcon2Text = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
ZpetsIcon2Text:SetText("2.4")
ZpetsIcon2Text:SetFont("Fonts\\ARIALN.TTF", 25, "OUTLINE")

-- Icon 3 --
ZpetsIcon3 = CreateFrame("Frame",nil,UIParent)
ZpetsIcon3:SetFrameStrata("BACKGROUND")
ZpetsIcon3:SetWidth(40) -- Set these to whatever height/width is needed 
ZpetsIcon3:SetHeight(40) -- for your Texture
zt4 = ZpetsIcon3:CreateTexture(nil,"BACKGROUND")
zt4:SetTexture("Interface\\ICONS\\ability_warlock_impoweredimp")
SetDesaturation(zt4, nil)
zt4:SetAllPoints(ZpetsIcon3)
ZpetsIcon3.texture = zt4
ZpetsIcon3:SetPoint("TOP", zPetBackground, "BOTTOM", -42, -2);

MyZpetCDFrame3 = CreateFrame("Cooldown", nil, UIParent, "CooldownFrameTemplate")
MyZpetCDFrame3:SetPoint("BOTTOMLEFT",ZpetsIcon3,"TOP",0,-2)
MyZpetCDFrame3:SetAllPoints(ZpetsIcon3)

local ZpetsIcon3Text = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
ZpetsIcon3Text:SetText("2.4")
ZpetsIcon3Text:SetFont("Fonts\\ARIALN.TTF", 25, "OUTLINE")

-- Icon 4 --
ZpetsIcon4 = CreateFrame("Frame",nil,UIParent)
ZpetsIcon4:SetFrameStrata("BACKGROUND")
ZpetsIcon4:SetWidth(40) -- Set these to whatever height/width is needed 
ZpetsIcon4:SetHeight(40) -- for your Texture
zt5 = ZpetsIcon4:CreateTexture(nil,"BACKGROUND")
zt5:SetTexture("Interface\\ICONS\\ability_warlock_impoweredimp")
SetDesaturation(zt5, nil)
zt5:SetAllPoints(ZpetsIcon4)
ZpetsIcon4.texture = zt5
ZpetsIcon4:SetPoint("TOP", zPetBackground, "BOTTOM", 84, -2);

MyZpetCDFrame4 = CreateFrame("Cooldown", nil, UIParent, "CooldownFrameTemplate")
MyZpetCDFrame4:SetPoint("BOTTOMLEFT",ZpetsIcon4,"TOP",0,-2)
MyZpetCDFrame4:SetAllPoints(ZpetsIcon4)

local ZpetsIcon4Text = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
ZpetsIcon4Text:SetText("2.4")
ZpetsIcon4Text:SetFont("Fonts\\ARIALN.TTF", 25, "OUTLINE")

-- Icon 5 --
ZpetsIcon5 = CreateFrame("Frame",nil,UIParent)
ZpetsIcon5:SetFrameStrata("BACKGROUND")
ZpetsIcon5:SetWidth(40) -- Set these to whatever height/width is needed 
ZpetsIcon5:SetHeight(40) -- for your Texture
zt6 = ZpetsIcon5:CreateTexture(nil,"BACKGROUND")
zt6:SetTexture("Interface\\ICONS\\warlock_summon_doomguard")
SetDesaturation(zt6, nil)
zt6:SetAllPoints(ZpetsIcon5)
ZpetsIcon5.texture = zt6
ZpetsIcon5:SetPoint("TOP", zPetBackground, "BOTTOM", -84, -2);

MyZpetCDFrame5 = CreateFrame("Cooldown", nil, UIParent, "CooldownFrameTemplate")
MyZpetCDFrame5:SetPoint("BOTTOM",ZpetsIcon5,"TOP",0,-2)
MyZpetCDFrame5:SetAllPoints(ZpetsIcon5)

local ZpetsIcon5Text = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
ZpetsIcon5Text:SetText("2.4")
ZpetsIcon5Text:SetFont("Fonts\\ARIALN.TTF", 25, "OUTLINE")

-- Icon 6 --
ZpetsIcon6 = CreateFrame("Frame",nil,UIParent)
ZpetsIcon6:SetFrameStrata("BACKGROUND")
ZpetsIcon6:SetWidth(40) -- Set these to whatever height/width is needed 
ZpetsIcon6:SetHeight(40) -- for your Texture
zt7 = ZpetsIcon6:CreateTexture(nil,"BACKGROUND")
zt7:SetTexture("Interface\\ICONS\\warlock_summon_doomguard")
SetDesaturation(zt7, nil)
zt7:SetAllPoints(ZpetsIcon6)
ZpetsIcon6.texture = zt7
ZpetsIcon6:SetPoint("TOP", zPetBackground, "BOTTOM", -84, -2);

MyZpetCDFrame6 = CreateFrame("Cooldown", nil, UIParent, "CooldownFrameTemplate")
MyZpetCDFrame6:SetPoint("BOTTOM",ZpetsIcon6,"TOP",0,-2)
MyZpetCDFrame6:SetAllPoints(ZpetsIcon6)

local ZpetsIcon6Text = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
ZpetsIcon6Text:SetText("2.4")
ZpetsIcon6Text:SetFont("Fonts\\ARIALN.TTF", 25, "OUTLINE")

	ZpetsIcon1:Hide()
	ZpetsIcon2:Hide()
	ZpetsIcon3:Hide()
	ZpetsIcon4:Hide()
	ZpetsIcon5:Hide()
	ZpetsIcon6:Hide()
	
	
local WildImpText1 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
WildImpText1:SetPoint("BOTTOMRIGHT",ZpetsIcon1,"BOTTOMRIGHT",-2,3)
--WildImpText1:SetText("1")
WildImpText1:SetFont("Fonts\\ARIALN.TTF", 12, "OUTLINE")

local WildImpText2 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
WildImpText2:SetPoint("BOTTOMRIGHT",ZpetsIcon2,"BOTTOMRIGHT",-2,3)
--WildImpText2:SetText("2")
WildImpText2:SetFont("Fonts\\ARIALN.TTF", 12, "OUTLINE")

local WildImpText3 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
WildImpText3:SetPoint("BOTTOMRIGHT",ZpetsIcon3,"BOTTOMRIGHT",-2,3)
--WildImpText3:SetText("3")
WildImpText3:SetFont("Fonts\\ARIALN.TTF", 12, "OUTLINE")

local WildImpText4 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
WildImpText4:SetPoint("BOTTOMRIGHT",ZpetsIcon4,"BOTTOMRIGHT",-2,3)
--WildImpText4:SetText("4")
WildImpText4:SetFont("Fonts\\ARIALN.TTF", 12, "OUTLINE")





-- Impending doom / Implosion --
MyZpetBar14 = CreateFrame("StatusBar", nil, UIParent)
MyZpetBar14:SetStatusBarTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar14:GetStatusBarTexture():SetHorizTile(false)
MyZpetBar14.bg = MyZpetBar14:CreateTexture(nil, "BACKGROUND")
MyZpetBar14.bg:SetTexture("Interface\\Addons\\zPets\\Textures\\Flat")
MyZpetBar14.bg:SetAllPoints(true)
MyZpetBar14.bg:SetVertexColor(0, 0, 0, .5)
MyZpetBar14:Show()
MyZpetBar14:SetMinMaxValues(0, 100)
MyZpetBar14:SetWidth(150)
MyZpetBar14:SetHeight(10)
MyZpetBar14:SetPoint("BOTTOM", zPetBackground, "TOP", 0, 2);
MyZpetBar14:SetValue(50);

local ImpText1 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
ImpText1:SetPoint("LEFT",MyZpetBar14,"LEFT",3,0)
ImpText1:SetText("4")
ImpText1:SetFont("Fonts\\ARIALN.TTF", 15, "OUTLINE")

local ImpText2 = MyZpetsTextFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
ImpText2:SetPoint("RIGHT",MyZpetBar14,"RIGHT",-3,0)
ImpText2:SetText("4")
ImpText2:SetFont("Fonts\\ARIALN.TTF", 15, "OUTLINE")


local backdrop = {
  -- path to the background texture
  bgFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Background",  
  -- path to the border texture
  edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Border",
  -- true to repeat the background texture to fill the frame, false to scale it
  tile = true,
  -- size (width or height) of the square repeating background tiles (in pixels)
  tileSize = 32,
  -- thickness of edge segments and square size of edge corners (in pixels)
  edgeSize = 32,
  -- distance from the edges of the frame to those of the background texture (in pixels)
  insets = {
    left = 11,
    right = 12,
    top = 12,
    bottom = 11
  }
}



-- register slash commands
impframelocked=false
SLASH_ZPETS1 = '/zpets'
function handler(msg, editbox)
	if msg == '' then
	DEFAULT_CHAT_FRAME:AddMessage("zpets Options:")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets lock | unlock")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets show | hide")
	DEFAULT_CHAT_FRAME:AddMessage("To set your current Infernal Furnace trait level use the following:")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets IF 0-6")
	DEFAULT_CHAT_FRAME:AddMessage("To set your current Summoner's Prowess trait level use the following:")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets SP 0-6")
	DEFAULT_CHAT_FRAME:AddMessage("To reset the Implosion loss calculator use the following:")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets Reset")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets hitcount show | hide")
	DEFAULT_CHAT_FRAME:AddMessage("To show the Implosion Bar:")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets implosionbar show | hide")
	DEFAULT_CHAT_FRAME:AddMessage("To show the Impending Dooom imp tracker:")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets impendingbar show | hide")
	DEFAULT_CHAT_FRAME:AddMessage("To anchor zpets to the Personal Resource Display:")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets PR on | off")
	DEFAULT_CHAT_FRAME:AddMessage("To hide the shard display:")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets shards on | off")
	DEFAULT_CHAT_FRAME:AddMessage("To hide cooldown display: (Note will also hide Shard display)")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets cooldowns on | off")
	DEFAULT_CHAT_FRAME:AddMessage("To hide pet tracker display:")
	DEFAULT_CHAT_FRAME:AddMessage("/zpets pets on | off")
	end
  if msg == 'hitcount show' then
    zPetsHitCountShow = true
	print("zPets HitCount frame is now shown")
  end
  if msg == 'hitcount hide' then
    zPetsHitCountShow = false
	print("zPets HitCount frame is now hidden")
  end
  if msg == 'hitcount' then
    if zPetsHitCountShow == false then
	print("zPets HitCount frame is currently hidden")
	else
	print("zPets HitCount frame is currently shown")
	end
  end
  if msg == 'implosionbar show' then
    zPetsImplosionBarShow = true
	print("zPets Implosion Bar is now shown")
  end
  if msg == 'implosionbar hide' then
    zPetsImplosionBarShow = false
	print("zPets Implosion Bar is now hidden")
  end
  if msg == 'implosionbar' then
    if zPetsImplosionBarShow == false then
	print("zPets Implosion Bar is currently hidden")
	else
	print("zPets Implosion Bar is currently shown")
	end
  end
  if msg == 'impendingbar show' then
    zPetsImpendingDoomBarShow = true
	print("zPets ImpendingDoom Bar is now shown")
  end
  if msg == 'impendingbar hide' then
    zPetsImpendingDoomBarShow = false
	print("zPets ImpendingDoom Bar is now hidden")
  end
  if msg == 'impendingbar' then
    if zPetsImpendingDoomBarShow == false then
	print("zPets ImpendingDoom Bar is currently hidden")
	else
	print("zPets ImpendingDoom Bar is currently shown")
	end
  end
  if msg == 'hide' then
    allframesshow = false
  end
  if msg == 'show' then
    allframesshow = true
  end
  if msg == 'unlock' then
  DEFAULT_CHAT_FRAME:AddMessage("zPets Unlocked")
  zpetsframeshow=true
  zPetsGUI:Show()
  end
  if msg == 'lock' then
  DEFAULT_CHAT_FRAME:AddMessage("zPets Locked")
  zpetsframeshow=false
  zPetsGUI:Hide()
  end
  if msg == 'IF 0' then
  zpetsartifactpower1 = 0
  DEFAULT_CHAT_FRAME:AddMessage("zPets Infernal Furnace set to 0/3")
  end
  if msg == 'IF 1' then
  zpetsartifactpower1 = 1
  DEFAULT_CHAT_FRAME:AddMessage("zPets Infernal Furnace set to 1/3")
  end
  if msg == 'IF 2' then
  zpetsartifactpower1 = 2
  DEFAULT_CHAT_FRAME:AddMessage("zPets Infernal Furnace set to 2/3")
  end
  if msg == 'IF 3' then
  zpetsartifactpower1 = 3
  DEFAULT_CHAT_FRAME:AddMessage("zPets Infernal Furnace set to 3/3")
  end
  if msg == 'IF 4' then
  zpetsartifactpower1 = 4
  DEFAULT_CHAT_FRAME:AddMessage("zPets Infernal Furnace set to 4/3")
  end
  if msg == 'IF 5' then
  zpetsartifactpower1 = 5
  DEFAULT_CHAT_FRAME:AddMessage("zPets Infernal Furnace set to 5/3")
  end
  if msg == 'IF 6' then
  zpetsartifactpower1 = 6
  DEFAULT_CHAT_FRAME:AddMessage("zPets Infernal Furnace set to 6/3")
  end
  if msg == 'IF' then
  DEFAULT_CHAT_FRAME:AddMessage("zPets Infernal Furnace is currently set to "..zpetsartifactpower1.."/3")
  end
  if msg == 'SP 0' then
  zpetsartifactpower2 = 0
  DEFAULT_CHAT_FRAME:AddMessage("zPets Summoner's Prowess set to 0/3")
  end
  if msg == 'SP 1' then
  zpetsartifactpower2 = 1
  DEFAULT_CHAT_FRAME:AddMessage("zPets Summoner's Prowess set to 1/3")
  end
  if msg == 'SP 2' then
  zpetsartifactpower2 = 2
  DEFAULT_CHAT_FRAME:AddMessage("zPets Summoner's Prowess set to 2/3")
  end
  if msg == 'SP 3' then
  zpetsartifactpower2 = 3
  DEFAULT_CHAT_FRAME:AddMessage("zPets Summoner's Prowess set to 3/3")
  end
  if msg == 'SP 4' then
  zpetsartifactpower2 = 4
  DEFAULT_CHAT_FRAME:AddMessage("zPets Summoner's Prowess set to 4/3")
  end
  if msg == 'SP 5' then
  zpetsartifactpower2 = 5
  DEFAULT_CHAT_FRAME:AddMessage("zPets Summoner's Prowess set to 5/3")
  end
  if msg == 'SP 6' then
  zpetsartifactpower2 = 6
  DEFAULT_CHAT_FRAME:AddMessage("zPets Summoner's Prowess set to 6/3")
  end
  if msg == 'SP' then
  DEFAULT_CHAT_FRAME:AddMessage("zPets Summoner's Prowess is currently set to "..zpetsartifactpower2.."/3")
  end
  if msg == 'Reset' then
  zpetstotalimplosionloss=0
  end
  if msg == 'PR on' then
  zpetsactioncamlock = true
  DEFAULT_CHAT_FRAME:AddMessage("zPets will now attach itself to the Personal Resource Display when it it active!")
  end
  if msg == 'PR off' then
  zpetsactioncamlock = false
  DEFAULT_CHAT_FRAME:AddMessage("zPets will no loger attach itself to the Personal Resource Display when it it active!")
  end
  if msg == 'pets on' then
  zpetshidepets = false
  DEFAULT_CHAT_FRAME:AddMessage("zPets pets frame is now shown")
  end
  if msg == 'pets off' then
  zpetshidepets = true
  DEFAULT_CHAT_FRAME:AddMessage("zPets pets frame is now shown hidden")
  end
  if msg == 'cooldowns on' then
  zpetshidecooldowns = false
  DEFAULT_CHAT_FRAME:AddMessage("zPets cooldowns frame is now shown")
  end
  if msg == 'cooldowns off' then
  zpetshidecooldowns = true
  DEFAULT_CHAT_FRAME:AddMessage("zPets cooldowns frame is now shown hidden")
  end
  if msg == 'shards on' then
  zpetshideshards = false
  DEFAULT_CHAT_FRAME:AddMessage("zPets shards frame is now shown")
  end
  if msg == 'shards off' then
  zpetshideshards = true
  DEFAULT_CHAT_FRAME:AddMessage("zPets shards frame is now shown hidden")
  end
  if msg == 'pettext on' then
  zpetshidepettext = false
  DEFAULT_CHAT_FRAME:AddMessage("zPets pettext is now shown")
  end
  if msg == 'pettext off' then
  zpetshidepettext = true
  DEFAULT_CHAT_FRAME:AddMessage("zPets pettext is now shown hidden")
  end
end

SlashCmdList["ZPETS"] = handler

-- Rest Total Implosion Loss at start of combat --
local frame, zevents = CreateFrame("Frame"), {};
function zevents:PLAYER_REGEN_DISABLED(...)
	zpetstotalimplosionloss = 0
end
function zevents:PLAYER_REGEN_ENABLED(...)
	
end
frame:SetScript("OnEvent", function(self, event, ...)
	zevents[event](self, ...)
end);
for k, v in pairs(zevents) do
	frame:RegisterEvent(k) 
end

function impLoad()
	DEFAULT_CHAT_FRAME:AddMessage("Zinnin's Demo Utilities Loaded.")
	impCountFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	impCountFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
end

function impStartDrag()
	if not impframelocked then
		zPetsGUI:StartMoving()
	end
end

function HitCountDrag()
	if not impframelocked then
		zPetsHIT:StartMoving()
	end
end

function impOnEvent(self, event, ...)
	
	
	-- Set Demonic Empowerment --
	SummonersProwess()
	zpetsdehastevalue = 60+SPMod
	
	-- Get current time --
	zpetscomptime = GetTime()
	
	-- Setplayer GUID --
	if zpetsplayerguid == nil then
		zpetsplayerguid=UnitGUID("player")
	end
	zpetsguid = UnitGUID("pet")
		
	-- Combat Stat Mods --
	zpetsversmod = ((((GetCombatRating(29))/350)/100)+1)
	zpetsversmod2 = (1-(((GetCombatRating(29))/700)/100))
	zpetsmasterymod = ((((GetCombatRating(26))/150)/100)+1.16)
	zpetsspellDmg = GetSpellBonusDamage(6)
	zpetshastemod = ((UnitSpellHaste("player")/100)+1)
	zpetsdehastemod = ((((UnitSpellHaste("player")*((zpetsdehastevalue/100)+1))+zpetsdehastevalue)/100)+1)
	
	-- Time out all combat tables --	
	TimeOut(imptimetable, 13.2)
	TimeOut(deimptimetable, 13.2)
	TimeOut(dreadtimetable, 13.2)
	TimeOut(dedreadtimetable, 13.2)
	--TimeOut(beholdertimetable, 13.2)
	--TimeOut(debeholdertimetable, 13.2)
	ClearHitCount(demonwrathhits,1,true)
	ClearHitCount(legionstrikehits,5,false)
	ClearHitCount(implosionhits,3,false)
	ClearHitCount(felstormhits,1,false)
	MaintainCooldowns()
	
	-- Combat Log Events and Functions --
	if(event=="COMBAT_LOG_EVENT_UNFILTERED") then
		zpetstimeStamp, zpetscombatevent, zpetshideCaster, zpetssourceGUID, zpetssourceName, zpetssourceFlags, zpetssourceRaidFlags, zpetsdestGUID, zpetsdestName, zpetsdestFlags, zpetsdestRaidFlags, zpetsspellID, zpetsspellName, zpetsspellSchool, zpetsspellSourceGUID, zpetssourceHealth, zpetssourceAP, zpetssourceSP, zpetssourceResourcetype, zpetssourceResourceamount = ...
		if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Dreadstalker" and zpetssourceGUID==zpetsplayerguid) then
		
		
		end
		SummonTable(imptimetable,"Wild Imp")
		DeathTable(imptimetable,"Wild Imp")
		DeathTable(deimptimetable,"Wild Imp")
		PetCastTable(impcasttime,"Wild Imp",imptimetable)
		SummonTable(dreadtimetable,"Dreadstalker")
		DeathTable(dreadtimetable,"Dreadstalker")
		DeathTable(dedreadtimetable,"Dreadstalker")	
		--SummonTable(beholdertimetable,"Beholder")
		--DeathTable(debeholdertimetable,"Beholder")
		--DeathTable(debeholdertimetable,"Beholder")
		CooldownSummons()		
		DemonicEmpowerment()
		HitCount(felstormhits,"Felstorm",true)
		HitCount(demonwrathhits,"Demonwrath",false)
		HitCount(implosionhits,"Implosion",false)
		HitCount(legionstrikehits,"Legion Strike",true)
		if allframesshow == true then
			if zpetshidepets == false then
			StartPetTimers()
			end
		end
		if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Implosion") then --This is for if pets are ever cast limted
			--print("Implosion was cast by player")
			zpetstotalimplosionloss = math.floor(zpetstotalimplosionloss+zpetswildimpvalue)
		end
		-- Cooldowns Tracked
		if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Call Dreadstalkers") then --This is for if pets are ever cast limted
			zpetsCallDreadStalker = zpetscomptime
		end
		if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Summon Darkglare") then --This is for if pets are ever cast limted
			zpetsSummonBeholder = zpetscomptime
		end
		if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsguid and zpetsspellName=="Felstorm") then --This is for if pets are ever cast limted
			zpetsPetFelstorm = zpetscomptime
		end
		if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Thal'kiel's Consumption") then --This is for if pets are ever cast limted
			zpetsCosumptionCD = zpetscomptime
		end
		if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Grimoire: Felguard") then --This is for if pets are ever cast limted
			zpetsServiceCD = zpetscomptime
		end
		if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Grimoire: Imp") then --This is for if pets are ever cast limted
			zpetsServiceCD = zpetscomptime
		end
		if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Grimoire: Voidwalker") then --This is for if pets are ever cast limted
			zpetsServiceCD = zpetscomptime
		end
		if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Grimoire: Felhunter") then --This is for if pets are ever cast limted
			zpetsServiceCD = zpetscomptime
		end
		if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Grimoire: Succubus") then --This is for if pets are ever cast limted
			zpetsServiceCD = zpetscomptime
		end
	end	
	
	MaintainCDProgress()
	
	
	-- Update Global Variables --
	CountPets()
	CountImpCasts()
	ValueWildImps()
	ConsuptionValue()
	ImplosionValue()
	zpetsHitCountDemonwrath = entrysum(demonwrathhits)
	zpetsHitCountImplosion = entrysum(implosionhits)
	zpetsHitCountFelstorm = entrysum(felstormhits)
	zpetsHitCountLegionstrike = entrysum(legionstrikehits)
	zpetstotalimptotemcount1 = (((PetTotemSummonCount(1,imptimetable,"Wild Imps")))+((PetTotemSummonCount(1,deimptimetable,"Wild Imps"))))
	zpetstotalimptotemcount2 = (((PetTotemSummonCount(2,imptimetable,"Wild Imps")))+((PetTotemSummonCount(2,deimptimetable,"Wild Imps"))))
	zpetstotalimptotemcount3 = (((PetTotemSummonCount(3,imptimetable,"Wild Imps")))+((PetTotemSummonCount(3,deimptimetable,"Wild Imps"))))
	zpetstotalimptotemcount4 = (((PetTotemSummonCount(4,imptimetable,"Wild Imps")))+((PetTotemSummonCount(4,deimptimetable,"Wild Imps"))))
	zpetsimptotemcount1 = ((PetTotemSummonCount(1,imptimetable,"Wild Imps")))
	zpetsimptotemcount2 = ((PetTotemSummonCount(2,imptimetable,"Wild Imps")))
	zpetsimptotemcount3 = ((PetTotemSummonCount(3,imptimetable,"Wild Imps")))
	zpetsimptotemcount4 = ((PetTotemSummonCount(4,imptimetable,"Wild Imps")))
	zpetsdeimptotemcount1 = ((PetTotemSummonCount(1,deimptimetable,"Wild Imps")))
	zpetsdeimptotemcount2 = ((PetTotemSummonCount(2,deimptimetable,"Wild Imps")))
	zpetsdeimptotemcount3 = ((PetTotemSummonCount(3,deimptimetable,"Wild Imps")))
	zpetsdeimptotemcount4 = ((PetTotemSummonCount(4,deimptimetable,"Wild Imps")))	
end

function StartPetTimers()
	if IsPlayerSpell(152107) == false then
		if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Doomguard" and zpetssourceGUID==zpetsplayerguid) then
			--print("test")
			MyZpetCDFrame5:SetCooldown(GetTime(), 26)
			zt6:SetTexture("Interface\\ICONS\\warlock_summon_doomguard")
		
		end
		if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Infernal" and zpetssourceGUID==zpetsplayerguid) then
			--print("test")
			MyZpetCDFrame5:SetCooldown(GetTime(), 26)
			zt6:SetTexture("Interface\\ICONS\\spell_shadow_summoninfernal")
		
		end
	end
	if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Grimoire: Felguard") then --This is for if pets are ever cast limted
		MyZpetCDFrame6:SetCooldown(GetTime(), 26)
		zt7:SetTexture("Interface\\ICONS\\spell_shadow_summonfelguard")
	end
	if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Grimoire: Imp") then --This is for if pets are ever cast limted
		MyZpetCDFrame6:SetCooldown(GetTime(), 26)
		zt7:SetTexture("Interface\\ICONS\\spell_shadow_summonimp")
	end
	if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Grimoire: Succubus") then --This is for if pets are ever cast limted
		MyZpetCDFrame6:SetCooldown(GetTime(), 26)
		zt7:SetTexture("Interface\\ICONS\\spell_shadow_summonsuccubus")
	end
	if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Grimoire: Felhunter") then --This is for if pets are ever cast limted
		MyZpetCDFrame6:SetCooldown(GetTime(), 26)
		zt7:SetTexture("Interface\\ICONS\\spell_shadow_summonfelhunter")
	end
	if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Grimoire: Voidwalker") then --This is for if pets are ever cast limted
		MyZpetCDFrame6:SetCooldown(GetTime(), 26)
		zt7:SetTexture("Interface\\ICONS\\spell_shadow_summonvoidwalker")
	end
end

function UpdateZUI()

		
	-- Update Display
	

	if zpetspec == "Demonology" then
	DemoUI()
	else
	HideFrames()
	end
	--print(currentSpecName)
	--test2 = GetSpellCDProgress("Call Dreadstalkers",15)
	--MyZpetBar1:SetValue(test2)
	
end

function DemoUI()
	if zpetsactioncamlock == true then
		local incombat = UnitAffectingCombat("player")
		--if incombat == true or (UnitHealth("player")<UnitHealthMax("player"))then
		ArtifactWatchBar:Hide()
		if ClassNameplateManaBarFrame:IsVisible() then		
				--NamePlatePlayerResourceFrame:Hide()
				ClassNameplateBarWarlockFrame:Hide()
				ArtifactWatchBar:Hide()
				
				
				local zpetplayerframe=C_NamePlate.GetNamePlateForUnit("player"):GetName()
				CastingBarFrame:ClearAllPoints()
				CastingBarFrame.Border:Hide()
				CastingBarFrame.Flash:Hide()
				CastingBarFrame:SetPoint("CENTER", zpetplayerframe, "CENTER", 0, 25);
				zPetBackground:ClearAllPoints()
				zPetBackground:SetPoint("CENTER", zpetplayerframe, "CENTER", 0, -50);
				
				--zPetBackground:SetScale(0.5)
				CastingBarFrame:SetScale(0.9)
				
			else
				zPetBackground:SetPoint("BOTTOMLEFT", zPetsGUI, "TOPLEFT", 0, 0)
		end
	else
		zPetBackground:SetPoint("BOTTOMLEFT", zPetsGUI, "TOPLEFT", 0, 0)
	end
	
	-- Position Demo UI --
	MyZpetBar1:SetPoint("BOTTOMLEFT", zPetBackground, "BOTTOMLEFT", 2, 2);
	MyZpetBar2:SetPoint("BOTTOMLEFT", MyZpetBar1, "BOTTOMRIGHT", 2, 0);
	MyZpetBar3:SetPoint("BOTTOMLEFT", MyZpetBar1, "TOPLEFT", 0, 2);
	MyZpetBar4:SetPoint("BOTTOMLEFT", MyZpetBar3, "BOTTOMRIGHT", 2, 0);
	--zPetBackground:SetPoint("BOTTOMLEFT", zPetsGUI, "TOPLEFT", 0, 0);
	
	MyZpetBar10:SetPoint("BOTTOMLEFT", MyZpetBar3, "TOPLEFT", 0, 2);
	MyZpetBar11:SetPoint("BOTTOMLEFT", MyZpetBar10, "BOTTOMRIGHT", 2, 0);
	if IsPlayerSpell(205181) then
		MyZpetBar5:SetPoint("BOTTOMLEFT", MyZpetBar10, "TOPLEFT", 0, 2);
		else
		MyZpetBar5:SetPoint("BOTTOMLEFT", MyZpetBar3, "TOPLEFT", 0, 2);
	end	
	MyZpetBar6:SetPoint("BOTTOMLEFT", MyZpetBar5, "BOTTOMRIGHT", 2, 0);
	MyZpetBar7:SetPoint("BOTTOMLEFT", MyZpetBar6, "BOTTOMRIGHT", 2, 0);
	MyZpetBar8:SetPoint("BOTTOMLEFT", MyZpetBar7, "BOTTOMRIGHT", 2, 0);
	MyZpetBar9:SetPoint("BOTTOMLEFT", MyZpetBar8, "BOTTOMRIGHT", 2, 0);
	
	if zpetshideshards == false then
	if UnitPower("player" , 7) == 0 then
		MyZpetBar5:Hide()
		MyZpetBar6:Hide()
		MyZpetBar7:Hide()
		MyZpetBar8:Hide()
		MyZpetBar9:Hide()
		elseif UnitPower("player" , 7) == 1 then
		MyZpetBar5:Show()
		MyZpetBar6:Hide()
		MyZpetBar7:Hide()
		MyZpetBar8:Hide()
		MyZpetBar9:Hide()
		elseif UnitPower("player" , 7) == 2 then
		MyZpetBar5:Show()
		MyZpetBar6:Show()
		MyZpetBar7:Hide()
		MyZpetBar8:Hide()
		MyZpetBar9:Hide()
		elseif UnitPower("player" , 7) == 3 then
		MyZpetBar5:Show()
		MyZpetBar6:Show()
		MyZpetBar7:Show()
		MyZpetBar8:Hide()
		MyZpetBar9:Hide()
		elseif UnitPower("player" , 7) == 4 then
		MyZpetBar5:Show()
		MyZpetBar6:Show()
		MyZpetBar7:Show()
		MyZpetBar8:Show()
		MyZpetBar9:Hide()
		elseif UnitPower("player" , 7) == 5 then
		MyZpetBar5:Show()
		MyZpetBar6:Show()
		MyZpetBar7:Show()
		MyZpetBar8:Show()
		MyZpetBar9:Show()
		else
		MyZpetBar5:Hide()
		MyZpetBar6:Hide()
		MyZpetBar7:Hide()
		MyZpetBar8:Hide()
		MyZpetBar9:Hide()
	end
	elseif zpetshideshards == true then
		MyZpetBar5:Hide()
		MyZpetBar6:Hide()
		MyZpetBar7:Hide()
		MyZpetBar8:Hide()
		MyZpetBar9:Hide()
	end
	-- Shadowflame Charges --
	if IsPlayerSpell(205181) and GetSpellCharges(205181) == 1 then
		MyZpetBar10:Show()
		MyZpetBar10:SetValue(100)
		MyZpetBar11:Show()
			local SPELL_ID = 205181 -- Set to SpellID of tracked ability
			local chargesCurrent, chargesMax, cdStart, cdDuration = GetSpellCharges(SPELL_ID)
			local CHARGES = function(val) return (val >= 1) end 
			local timeCurrent = GetTime();    
			if (cdStart - cdDuration) <= timeCurrent and timeCurrent <= (cdStart + cdDuration) and CHARGES(chargesCurrent) then 
				local timeleft = ((cdStart+cdDuration)-timeCurrent)
				local results = math.floor((1-(timeleft/cdDuration))*100)
				MyZpetBar11:SetValue(results)
			end
		elseif IsPlayerSpell(205181) and GetSpellCharges(205181) == 2 then
			MyZpetBar10:Show()
			MyZpetBar11:Show()
			MyZpetBar10:SetValue(100)
			MyZpetBar11:SetValue(100)
		elseif IsPlayerSpell(205181) and GetSpellCharges(205181) == 0 then
			MyZpetBar10:Show()
			MyZpetBar11:Hide()
			local SPELL_ID = 205181 -- Set to SpellID of tracked ability
			local chargesCurrent, chargesMax, cdStart, cdDuration = GetSpellCharges(SPELL_ID)
			local CHARGES = function(val) return (val == 0) end 
			local timeCurrent = GetTime();
    		if (cdStart - cdDuration) <= timeCurrent and timeCurrent <= (cdStart + cdDuration) and CHARGES(chargesCurrent) then -- Cooldown active
				local timeleft = ((cdStart+cdDuration)-timeCurrent)
				local results = math.floor((1-(timeleft/cdDuration))*100)
				MyZpetBar10:SetValue(results)
			end
		else
			MyZpetBar10:Hide()
			MyZpetBar11:Hide()
	end	
	--print((GetSpellCDProgress("Felstorm",45,zpetsPetFelstorm)))
	MyZpetBar2:SetValue(GetSpellCDProgress("Felstorm",45,zpetsPetFelstorm))
	--MyZpetBar2:SetValue(GetSpellCDProgress("Call Dreadstalkers",15,zpetsCallDreadStalker))
	if IsPlayerSpell(205180) then -- Setup Bar 2 Based on Summon Observer talent
		MyZpetBar12:SetValue(GetSpellCDProgress("Summon Darkglare",24,zpetsSummonBeholder))
				
			
	end
	if IsPlayerSpell(111859) then
		MyZpetBar4:SetValue(GetSpellCDProgress("Grimoire: Imp",90,zpetsServiceCD))
	end
	if IsPlayerSpell(211714) then
		MyZpetBar3:SetValue(GetSpellCDProgress("Thal'kiel's Consumption",60,zpetsCosumptionCD))
	end
	MyZpetBar1:SetValue(GetSpellCDProgress("Call Dreadstalkers",15,zpetsCallDreadStalker))	
	
	local updatetext = ((GetSpellCDProgress("Thal'kiel's Consumption",60,zpetsCosumptionCD)))
	local compare2 = ((UnitHealthMax("player")*.5)/10)
	local compare = ((zpetsthalkielstotalvalue /compare2)*100)
	local compare3 = (math.floor(compare))
	local compare4 = (compare3.."%")
	zpetsthalkielcompare = compare3
	if updatetext >= 75 and zpetshidecooldowns == false then
		MyZpetText1:SetText(compare4)
			else
		MyZpetText1:SetText("")
	end
	
	if zPetsHitCountShow == true then
	local SpellHitCount = 0
	if zpetsHitCountDemonwrath > 0 then
		SpellHitCount = SpellHitCount + 1
	end	
	if zpetsHitCountImplosion > 0 then
		SpellHitCount = SpellHitCount + 1
	end	
	if zpetsHitCountFelstorm > 0 then
		SpellHitCount = SpellHitCount + 1
	end	
	if zpetsHitCountLegionstrike > 1 then
		SpellHitCount = SpellHitCount + 1
	end	
	if SpellHitCount < 2 then
		MyZpetText3:SetText("")
	end
	if SpellHitCount < 3 then
		MyZpetText4:SetText("")
	end
	if SpellHitCount < 4 then
		MyZpetText5:SetText("")
	end
	
	
	if SpellHitCount == 0 then
			MyZpetText2:SetText("")
		elseif SpellHitCount == 1 and zpetsHitCountImplosion > 0 then
			MyZpetText2:SetText("Implosion hit: "..zpetsHitCountImplosion.." target")
		elseif SpellHitCount == 1 and zpetsHitCountFelstorm > 0 then
			MyZpetText2:SetText("Felstorm hit: "..zpetsHitCountFelstorm.." target")
		elseif SpellHitCount == 1 and zpetsHitCountLegionstrike > 1 then
			MyZpetText2:SetText("LegionStrike hit: "..zpetsHitCountLegionstrike.." target")	
		elseif SpellHitCount == 1 and zpetsHitCountDemonwrath > 0 then
			MyZpetText2:SetText("Demonwrath hit: "..zpetsHitCountDemonwrath.." target")	
		elseif SpellHitCount == 2 and zpetsHitCountDemonwrath > 1 and zpetsHitCountImplosion > 1 then
			MyZpetText2:SetText("Demonwrath hit: "..zpetsHitCountDemonwrath.." target")
			MyZpetText3:SetText("Implosion hit: "..zpetsHitCountImplosion.." target")
		elseif SpellHitCount == 2 and zpetsHitCountDemonwrath > 1 and zpetsHitCountFelstorm > 1 then
			MyZpetText2:SetText("Demonwrath hit: "..zpetsHitCountDemonwrath.." target")
			MyZpetText3:SetText("Felstorm hit: "..zpetsHitCountFelstorm.." target")
		elseif SpellHitCount == 2 and zpetsHitCountDemonwrath > 1 and zpetsHitCountLegionstrike > 1 then
			MyZpetText2:SetText("Demonwrath hit: "..zpetsHitCountDemonwrath.." target")
			MyZpetText3:SetText("Legion Strike hit: "..zpetsHitCountLegionstrike.." target")
		elseif SpellHitCount == 2 and zpetsHitCountImplosion > 1 and zpetsHitCountFelstorm > 1 then
			MyZpetText2:SetText("Implosion hit: "..zpetsHitCountImplosion.." target")
			MyZpetText3:SetText("Felstorm hit: "..zpetsHitCountFelstorm.." target")
		elseif SpellHitCount == 2 and zpetsHitCountImplosion > 1 and zpetsHitCountLegionstrike > 1 then
			MyZpetText2:SetText("Implosion hit: "..zpetsHitCountImplosion.." target")
			MyZpetText3:SetText("Legion Strike hit: "..zpetsHitCountLegionstrike.." target")
		elseif SpellHitCount == 2 and zpetsHitCountFelstorm > 1 and zpetsHitCountLegionstrike > 1 then
			MyZpetText2:SetText("Felstorm hit: "..zpetsHitCountFelstorm.." target")
			MyZpetText3:SetText("Legion Strike hit: "..zpetsHitCountLegionstrike.." target")
		elseif SpellHitCount == 3 and zpetsHitCountLegionstrike < 1 then
			MyZpetText2:SetText("Demonwrath hit: "..zpetsHitCountDemonwrath.." target")
			MyZpetText3:SetText("Implosion hit: "..zpetsHitCountImplosion.." target")
			MyZpetText4:SetText("Felstorm hit: "..zpetsHitCountFelstorm.." target")
		elseif SpellHitCount == 3 and zpetsHitCountFelstorm < 1 then
			MyZpetText2:SetText("Demonwrath hit: "..zpetsHitCountDemonwrath.." target")
			MyZpetText3:SetText("Implosion hit: "..zpetsHitCountImplosion.." target")
			MyZpetText4:SetText("Legion Strike hit: "..zpetsHitCountLegionstrike.." target")
		elseif SpellHitCount == 3 and zpetsHitCountImplosion < 1 then
			MyZpetText2:SetText("Demonwrath hit: "..zpetsHitCountDemonwrath.." target")
			MyZpetText3:SetText("Felstorm hit: "..zpetsHitCountFelstorm.." target")
			MyZpetText4:SetText("Legion Strike hit: "..zpetsHitCountLegionstrike.." target")
		elseif SpellHitCount == 3 and zpetsHitCountDemonwrath < 1 then
			MyZpetText2:SetText("Implosion hit: "..zpetsHitCountImplosion.." target")
			MyZpetText3:SetText("Felstorm hit: "..zpetsHitCountFelstorm.." target")
			MyZpetText4:SetText("Legion Strike hit: "..zpetsHitCountLegionstrike.." target")
		elseif SpellHitCount == 4 then
			MyZpetText2:SetText("Demonwrath hit: "..zpetsHitCountDemonwrath.." target")
			MyZpetText3:SetText("Implosion hit: "..zpetsHitCountImplosion.." target")
			MyZpetText4:SetText("Felstorm hit: "..zpetsHitCountFelstorm.." target")
			MyZpetText4:SetText("Legion Strike hit: "..zpetsHitCountLegionstrike.." target")
	end
	end
	-- Pet Timers --
	--ZpetsIcon1Text:SetPoint("CENTER",MyZpetCDFrame1,"CENTER",0,0)
	--ZpetsIcon1Text:SetText("2.4")
	--if zpetsdedreadcount > 0 then
	--	SetDesaturation(zt2, nil)
	--else
	--	SetDesaturation(zt2, 1)
	--end
	--if zpetsdreadcount <= 0 and zpetsdedreadcount <= 0 then
	--	ZpetsIcon1:Hide()
	--	else
	--	ZpetsIcon1:Show()
	--end
	
	--local i = 1
	--local petIconDur1 = 0
	--while i < 4 do
	--	local haveTotem, tname, startTime, duration, icon = GetTotemInfo(i)
	--	if tname == "Dreadstalkers" then
	---		petIconDur1 = ((duration+1)-(GetTime()-startTime))
	--	end
--i = i + 1
	--end
--if petIconDur1 > 0 then
	--	petIconDur1 = math.floor(petIconDur1)
	--	else
	--	petIconDur1 = 0
	--end
	--if zpetsdreadcount <= 0 and zpetsdedreadcount <= 0 then
	--	ZpetsIcon1Text:SetText("")
	--	else
	--	ZpetsIcon1Text:SetText(petIconDur1)
	--end
	
	WildImpTotem1 = 0
	WildImpTotem2 = 0
	WildImpTotem3 = 0
	WildImpTotem4 = 0
	
	PetTableDuration(imptimetable,impdurtable,13.2)
	PetTableDuration(deimptimetable,deimpdurtable,13.2)
	--tprint (imptimetable, indent)
	--tprint (impdurtable, indent)
	--tprint (deimpdurtable, indent)
	--if (PetTotemSummonCount(1,deimpdurtable,"Wild Imps")) > 0 then
	--	print("I Have: "..PetTotemSummonCount(1,deimpdurtable,"Wild Imps").." buffed Wild Imps")
	--	else
	--	print("I Have: "..PetTotemSummonCount(1,impdurtable,"Wild Imps").." unbuffed Wild Imps")
	--end
	----------------
	-- Pet Timers --
	----------------
	if zpetshidepets == false then
		-- Totem 1 --
		ZpetsIcon1Text:SetPoint("CENTER",MyZpetCDFrame1,"CENTER",0,0)
		local haveTotem, tname, startTime, duration, icon = GetTotemInfo(1)
		local petIconDur1 = ((duration+1)-(GetTime()-startTime))
		if MyZpetCDFrame1Start ~= startTime then
			MyZpetCDFrame1Start = startTime
			MyZpetCDFrame1:SetCooldown(startTime, duration)
		end
		if petIconDur1 > 0 then
			ZpetsIcon1:Show()
			else
			ZpetsIcon1:Hide()
		end
		if petIconDur1 > 0 then
			petIconDur1 = math.floor(petIconDur1)
			else
			petIconDur1 = 0
		end	
		if petIconDur1 > 0 then
			else
			
		end		
		if petIconDur1 > 0 and zpetshidepettext == false then
			ZpetsIcon1Text:SetText(petIconDur1)
			else
			ZpetsIcon1Text:SetText("")
			WildImpText1:SetText("")
		end	
		
		if tname == "Dreadstalkers" then
			zt2:SetTexture("Interface\\ICONS\\spell_warlock_calldreadstalkers")
			if zpetsdedreadcount > 0 then
				SetDesaturation(zt2, nil)
				else
				SetDesaturation(zt2, 1)
			end
			elseif tname == "Wild Imps" then
			zt2:SetTexture("Interface\\ICONS\\ability_warlock_impoweredimp")
			if (PetTotemSummonCount(1,deimptimetable,"Wild Imps")) > 0 then
			SetDesaturation(zt2, nil)
			
			if petIconDur1 > 0 and zpetshidepettext == false then
				WildImpText1:SetText((PetTotemSummonCount(1,deimptimetable,"Wild Imps")))
				else
				WildImpText1:SetText("")
			end	
			--	print("I Have: "..PetTotemSummonCount(1,deimptimetable,"Wild Imps").." buffed Wild Imps")
			else
			SetDesaturation(zt2, 1)
			if petIconDur1 > 0 and zpetshidepettext == false then
				WildImpText1:SetText((PetTotemSummonCount(1,imptimetable,"Wild Imps")))
				else
				WildImpText1:SetText("")
			end	
			--	print("I Have: "..PetTotemSummonCount(1,imptimetable,"Wild Imps").." unbuffed Wild Imps")
			end
			elseif tname == "Darkglare" then
			zt2:SetTexture("Interface\\ICONS\\achievement_boss_durumu")
			if zpetsdarkglarede > 0 then
				SetDesaturation(zt2, nil)
				else
				SetDesaturation(zt2, 1)
			end
		end
		
		-- Totem 2 --
		ZpetsIcon2Text:SetPoint("CENTER",MyZpetCDFrame2,"CENTER",0,0)
		local haveTotem, tname, startTime, duration, icon = GetTotemInfo(2)
		local petIconDur2 = ((duration+1)-(GetTime()-startTime))
		if MyZpetCDFrame2Start ~= startTime then
			MyZpetCDFrame2Start = startTime
			MyZpetCDFrame2:SetCooldown(startTime, duration)
		end
		if petIconDur2 > 0 then
			ZpetsIcon2:Show()
			else
			ZpetsIcon2:Hide()
		end
		if petIconDur2 > 0 then
			petIconDur2 = math.floor(petIconDur2)
			else
			petIconDur2 = 0
		end		
		if petIconDur2 > 0 and zpetshidepettext == false then
			ZpetsIcon2Text:SetText(petIconDur2)
			else
			ZpetsIcon2Text:SetText("")
			WildImpText2:SetText("")
		end		
		if tname == "Dreadstalkers" then
			zt3:SetTexture("Interface\\ICONS\\spell_warlock_calldreadstalkers")
			if zpetsdedreadcount > 0 then
				SetDesaturation(zt3, nil)
				else
				SetDesaturation(zt3, 1)
			end
			elseif tname == "Wild Imps" then
			zt3:SetTexture("Interface\\ICONS\\ability_warlock_impoweredimp")
			if (PetTotemSummonCount(2,deimptimetable,"Wild Imps")) > 0 then
			SetDesaturation(zt3, nil)
			if petIconDur2 > 0 and zpetshidepettext == false then
				WildImpText2:SetText((PetTotemSummonCount(2,deimptimetable,"Wild Imps")))
				else
				WildImpText2:SetText("")
			end	
			--	print("I Have: "..PetTotemSummonCount(2,deimptimetable,"Wild Imps").." buffed Wild Imps")
			else
			SetDesaturation(zt3, 1)
			--	print("I Have: "..PetTotemSummonCount(2,imptimetable,"Wild Imps").." unbuffed Wild Imps")
			if petIconDur2 > 0 and zpetshidepettext == false then
				WildImpText2:SetText((PetTotemSummonCount(2,imptimetable,"Wild Imps")))
				else
				WildImpText2:SetText("")
			end	
			end
			elseif tname == "Darkglare" then
			zt3:SetTexture("Interface\\ICONS\\achievement_boss_durumu")
			if zpetsdarkglarede > 0 then
				SetDesaturation(zt3, nil)
				else
				SetDesaturation(zt3, 1)
			end
		end
		
		-- Totem 3 --
		ZpetsIcon3Text:SetPoint("CENTER",MyZpetCDFrame3,"CENTER",0,0)
		local haveTotem, tname, startTime, duration, icon = GetTotemInfo(3)
		local petIconDur3 = ((duration+1)-(GetTime()-startTime))
		if MyZpetCDFrame3Start ~= startTime then
			MyZpetCDFrame3Start = startTime
			MyZpetCDFrame3:SetCooldown(startTime, duration)
		end
		if petIconDur3 > 0 then
			ZpetsIcon3:Show()
			else
			ZpetsIcon3:Hide()
		end
		if petIconDur3 > 0 then
			petIconDur3 = math.floor(petIconDur3)
			else
			petIconDur3 = 0
		end		
		if petIconDur3 > 0 and zpetshidepettext == false then
			ZpetsIcon3Text:SetText(petIconDur3)
			else
			ZpetsIcon3Text:SetText("")
			WildImpText3:SetText("")
		end		
		if tname == "Dreadstalkers" then
			zt4:SetTexture("Interface\\ICONS\\spell_warlock_calldreadstalkers")
			if zpetsdedreadcount > 0 then
				SetDesaturation(zt4, nil)
				else
				SetDesaturation(zt4, 1)
			end
			elseif tname == "Wild Imps" then
			zt4:SetTexture("Interface\\ICONS\\ability_warlock_impoweredimp")
			if (PetTotemSummonCount(3,deimptimetable,"Wild Imps")) > 0 then
			SetDesaturation(zt4, nil)
			if petIconDur3 > 0 and zpetshidepettext == false then
				WildImpText3:SetText((PetTotemSummonCount(3,deimptimetable,"Wild Imps")))
				else
				WildImpText3:SetText("")
			end	
			--	print("I Have: "..PetTotemSummonCount(1,deimpdurtable,"Wild Imps").." buffed Wild Imps")
			else
			SetDesaturation(zt4, 1)
			if petIconDur3 > 0 and zpetshidepettext == false then
				WildImpText3:SetText((PetTotemSummonCount(3,imptimetable,"Wild Imps")))
				else
				WildImpText3:SetText("")
			end	
			--	print("I Have: "..PetTotemSummonCount(1,impdurtable,"Wild Imps").." unbuffed Wild Imps")
			end
			elseif tname == "Darkglare" then
			zt4:SetTexture("Interface\\ICONS\\achievement_boss_durumu")
			if zpetsdarkglarede > 0 then
				SetDesaturation(zt4, nil)
				else
				SetDesaturation(zt4, 1)
			end
		end
		
		-- Totem 4 --
		ZpetsIcon4Text:SetPoint("CENTER",MyZpetCDFrame4,"CENTER",0,0)
		local haveTotem, tname, startTime, duration, icon = GetTotemInfo(4)
		local petIconDur4 = ((duration+1)-(GetTime()-startTime))
		if MyZpetCDFrame4Start ~= startTime then
			MyZpetCDFrame4Start = startTime
			MyZpetCDFrame4:SetCooldown(startTime, duration)
		end
		if petIconDur4 > 0 then
			ZpetsIcon4:Show()
			else
			ZpetsIcon4:Hide()
		end
		if petIconDur4 > 0 then
			petIconDur4 = math.floor(petIconDur4)
			else
			petIconDur4 = 0
		end		
		if petIconDur4 > 0 and zpetshidepettext == false then
			ZpetsIcon4Text:SetText(petIconDur4)
			else
			ZpetsIcon4Text:SetText("")
			WildImpText4:SetText("")
		end		
		if tname == "Dreadstalkers" then
			zt5:SetTexture("Interface\\ICONS\\spell_warlock_calldreadstalkers")
			if zpetsdedreadcount > 0 then
				SetDesaturation(zt5, nil)
				else
				SetDesaturation(zt5, 1)
			end
			elseif tname == "Wild Imps" then
			zt5:SetTexture("Interface\\ICONS\\ability_warlock_impoweredimp")
			if (PetTotemSummonCount(4,deimptimetable,"Wild Imps")) > 0 then
			SetDesaturation(zt5, nil)
			if petIconDur4 > 0 and zpetshidepettext == false then
				WildImpText4:SetText((PetTotemSummonCount(4,deimptimetable,"Wild Imps")))
				else
				WildImpText4:SetText("")
			end	
			--	print("I Have: "..PetTotemSummonCount(1,deimpdurtable,"Wild Imps").." buffed Wild Imps")
			else
			SetDesaturation(zt5, 1)
			if petIconDur4 > 0 and zpetshidepettext == false then
				WildImpText4:SetText((PetTotemSummonCount(4,imptimetable,"Wild Imps")))
				else
				WildImpText4:SetText("")
			end	
			--	print("I Have: "..PetTotemSummonCount(1,impdurtable,"Wild Imps").." unbuffed Wild Imps")
			end
			elseif tname == "Darkglare" then
			zt5:SetTexture("Interface\\ICONS\\achievement_boss_durumu")
			if zpetsdarkglarede > 0 then
				SetDesaturation(zt5, nil)
				else
				SetDesaturation(zt5, 1)
			end
		end
		
		-- Check Supremacy Talent --
		
		
		-- Doomguard Icon --
		ZpetsIcon5Text:SetPoint("CENTER",MyZpetCDFrame5,"CENTER",0,0)
		if zpetsdoomguardduration > 0 or zpetsinfernalduration > 0 then
			if zpetshidepettext == false then
			if zpetsdoomguardduration > zpetsinfernalduration then			
				local displaytext = math.floor(zpetsdoomguardduration)
				ZpetsIcon5Text:SetText(displaytext)
				else
				local displaytext = math.floor(zpetsinfernalduration)
				ZpetsIcon5Text:SetText(displaytext)
			end	
			else
			ZpetsIcon5Text:SetText("")
			end
			else
			ZpetsIcon5Text:SetText("")
		end	
		if zpetsdoomguardduration > 0 or zpetsinfernalduration > 0 then
			ZpetsIcon5:Show()
			else
			ZpetsIcon5:Hide()
		end
		if zpetsdoomguardde > 0 or zpetsinfernalde > 0 then
				SetDesaturation(zt6, nil)
				else
				SetDesaturation(zt6, 1)
		end
		
		-- Service --
		ZpetsIcon6Text:SetPoint("CENTER",MyZpetCDFrame6,"CENTER",0,0)
		
		
		if zpetsdoomguardduration > 0 or zpetsinfernalduration > 0 then
			ZpetsIcon6:SetPoint("TOP", zPetBackground, "BOTTOM", -84, -43);
			else
			ZpetsIcon6:SetPoint("TOP", zPetBackground, "BOTTOM", -84, -2);
		end
		if zpetsservicede > 0 then
				SetDesaturation(zt7, nil)
				else
				SetDesaturation(zt7, 1)
		end
		if zpetsserviceduration > 0 then
			ZpetsIcon6:Show()
			else
			ZpetsIcon6:Hide()
		end
		if zpetsserviceduration > 0 and zpetshidepettext == false then
			
			local displaytext = math.floor(zpetsserviceduration)
			ZpetsIcon6Text:SetText(displaytext)
				
			else
			ZpetsIcon6Text:SetText("")
		end	
		
	end
		-- Impending Doom \\ Implosion --
	
	if IsPlayerSpell(196270) then
		if zpetsimpcount+zpetsdeimpcount > 0 and zPetsImpendingDoomBarShow == true then
			MyZpetBar14:Show()
			if (zpetsdeimpcount) ~= (zpetsimpcount+zpetsdeimpcount)then
				ImpText1:SetText(zpetsimpcount)
				else
				ImpText1:SetText("")
			end
			ImpText2:SetText(zpetsimpcount+zpetsdeimpcount)
			if (zpetsimpcount+zpetsdeimpcount) > 0 then
				MyZpetBar14:SetValue((zpetsdeimpcount/(zpetsimpcount+zpetsdeimpcount))*100)
			end
		else
			ImpText1:SetText("")
			ImpText2:SetText("")
			MyZpetBar14:Hide()
		end
	elseif IsPlayerSpell(196277) then
		
		if zpetswildimpvalue > 0 and  zpetstotalvalueofimplosion > 0 and zPetsImplosionBarShow == true then
			
				MyZpetBar14:Show()
				ImpText1:SetText("")
				ImpText2:SetText("")
			MyZpetBar14:SetValue((zpetstotalvalueofimplosion/(zpetswildimpvalue))*100)
				
				else
				ImpText1:SetText("")
				ImpText2:SetText("")
				MyZpetBar14:Hide()
			end
	else
		ImpText1:SetText("")
		ImpText2:SetText("")
		MyZpetBar14:Hide()
	end
		
	if zpetshidecooldowns == true then

		end
		
	
end


function MaintainCDProgress()
	local timesince = zpetsCallDreadStalker + 15
	if timesince < zpetscomptime then
		zpetsCallDreadStalker = 0
	end
	local timesince = zpetsSummonBeholder + 24
	if timesince < zpetscomptime then
		zpetsSummonBeholder = 0
	end
	local timesince = zpetsPetFelstorm + 45
	if timesince < zpetscomptime then
		zpetsPetFelstorm = 0
	end
	local timesince = zpetsCosumptionCD + 60
	if timesince < zpetscomptime then
		zpetsCosumptionCD = 0
	end
	local timesince = zpetsServiceCD + 90
	if timesince < zpetscomptime then
		zpetsServiceCD = 0
	end
end

function GetSpellCDProgress(SpellName,MaxDuration,CDVar)
    local maxduration=MaxDuration
    local current = 0
	local start = 0
	local duration = 0
    local start, duration, enabled = GetSpellCooldown(SpellName);
	if start ~= nil then
		local cooldown = (start + duration - GetTime())
		if start > 0 and duration > 0 then
			current = cooldown
		else
			current = 0
		end
    
		local currentamount = maxduration - current
		local results = math.floor((currentamount/maxduration)*100)
		local testedvar = CDVar
		if testedvar > 0 then
		return (results)
		else 
		return (100)
		end
		else
		return(100)
	end
end

function ImplosionValue()
	local implosioncoefficient = 2.0
	local implosiondamage = (implosioncoefficient*zpetsspellDmg*zpetsversmod)
	zpetstotalvalueofimplosion=(math.floor(implosiondamage*zpetstotalimpcount))
end

function CooldownSummons()
		if IsPlayerSpell(152107) == false then
			if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Doomguard" and zpetssourceGUID==zpetsplayerguid) then
				zpetsdoomguardspawned=zpetscomptime
				zpetsdoomguarddeapplied=0
				zpetsdoomguardappliedduration = 12
			end
			if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Infernal" and zpetssourceGUID==zpetsplayerguid) then
				zpetsinfernalspawned=zpetscomptime
				zpetsinfernaldeapplied=0
				zpetsinfernalappliedduration = 12
			end
		end
		if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Felguard" and zpetssourceGUID==zpetsplayerguid) then
			zpetsservicespawned=zpetscomptime
			zpetsservicedeapplied=0
			zpetsserviceappliedduration = 12
			servicehealthmod=zpetsfelguardmax
			zpetsservicename="Felguard"
		end		
		if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Imp" and zpetssourceGUID==zpetsplayerguid) then
			zpetsservicespawned=zpetscomptime
			zpetsservicedeapplied=0
			zpetsserviceappliedduration = 12
			servicehealthmod=zpetsimpmax
			zpetsservicename="Imp"
		end
		if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Voidwalker" and zpetssourceGUID==zpetsplayerguid) then
			zpetsservicespawned=zpetscomptime
			zpetsservicedeapplied=0
			zpetsserviceappliedduration = 12
			servicehealthmod=zpetsvoidwalkermax
			zpetsservicename="Voidwalker"
		end
		if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Succubus" and zpetssourceGUID==zpetsplayerguid) then
			zpetsservicespawned=zpetscomptime
			zpetsservicedeapplied=0
			zpetsserviceappliedduration = 12
			servicehealthmod=zpetssuccubusmax
			zpetsservicename="Succubus"
		end
		if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Felhunter" and zpetssourceGUID==zpetsplayerguid) then
			zpetsservicespawned=zpetscomptime
			zpetsservicedeapplied=0
			zpetsserviceappliedduration = 12
			servicehealthmod=zpetsfelhuntermax
			zpetsservicename="Felhunter"
		end
		if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName=="Darkglare" and zpetssourceGUID==zpetsplayerguid) then
			zpetsdarkglarespawned=zpetscomptime
			zpetsdarkglaredeapplied=0
			zpetsdarkglareappliedduration = 12
			darkglarehealthmod=zpetsfelhuntermax
		end
end

function MaintainCooldowns()
	if(zpetsdoomguardspawned+26<zpetscomptime) then
		local zpetsdoomguardspawned = 0
		zpetsdoomguardcount = 0
		zpetsdoomguardappliedduration = 0
		zpetsdoomguardduration = 0
		else
		zpetsdoomguardcount = 1
	end
	if(zpetsdoomguarddeapplied+zpetsdoomguardappliedduration<zpetscomptime) then
		zpetsdoomguarddeapplied = 0
		zpetsdoomguardde = 0
		zpetsdoomguardappliedduration = 12
	end
	if(zpetsdoomguardspawned+26>zpetscomptime) then
		durationspent = zpetscomptime-zpetsdoomguardspawned
		duration = 25-durationspent
		zpetsdoomguardduration=duration
		else
		zpetsdoomguardduration=0
	end
	if zpetsdoomguardduration < 0 then
		zpetsdoomguardduration = 0
	end
	if(zpetsdoomguarddeapplied+zpetsdoomguardappliedduration>zpetscomptime) then
		durationspent = zpetscomptime-zpetsdoomguarddeapplied
		duration = zpetsdoomguardappliedduration-durationspent
		zpetsdoomguarddeduration=duration
	end
	if zpetsdoomguarddeduration < 0 then
		zpetsdoomguarddeduration = 0
	end
	if zpetsdoomguardde == 0 then
		zpetsdoomguarddeduration = 0
	end
	if zpetsdoomguarddeduration > zpetsdoomguardduration then
		zpetsdoomguarddeduration = zpetsdoomguardduration
	end
	if zpetsdoomguardcount == 0 then
		zpetsdoomguardde = 0
	end
	if(zpetsinfernalspawned+26<zpetscomptime) then
		local zpetsinfernalspawned = 0
		zpetsinfernalcount = 0
		zpetsinfernalappliedduration = 0
		zpetsinfernalduration = 0
		else
		zpetsinfernalcount = 1
	end
	if(zpetsinfernaldeapplied+zpetsinfernalappliedduration<zpetscomptime) then
		zpetsinfernaldeapplied = 0
		zpetsinfernalde = 0
		zpetsinfernalappliedduration = 12
	end
	if(zpetsinfernalspawned+26>zpetscomptime) then
		durationspent = zpetscomptime-zpetsinfernalspawned
		duration = 25-durationspent
		zpetsinfernalduration=duration
	end
	if zpetsinfernalduration < 0 then
		zpetsinfernalduration = 0
	end
	if(zpetsinfernaldeapplied+zpetsinfernalappliedduration>zpetscomptime) then
		durationspent = zpetscomptime-zpetsinfernaldeapplied
		duration = zpetsinfernalappliedduration-durationspent
		zpetsinfernaldeduration=duration
		else
		zpetsinfernaldeduration=0
	end
	if zpetsinfernaldeduration < 0 then
		zpetsinfernaldeduration = 0
	end
	if zpetsinfernalde == 0 then
		zpetsinfernaldeduration = 0
	end
	if zpetsinfernaldeduration > zpetsinfernalduration then
		zpetsinfernaldeduration = zpetsinfernalduration
	end
	if zpetsinfernalcount == 0 then
		zpetsinfernalde = 0
	end
	if(zpetsservicespawned+26<zpetscomptime) then
		local zpetsservicespawned = 0
		zpetsservicecount = 0
		zpetsserviceappliedduration = 0
		zpetsserviceduration = 0
		else
		zpetsservicecount = 1
	end
	if(zpetsservicedeapplied+zpetsserviceappliedduration<zpetscomptime) then
		zpetsservicedeapplied = 0
		zpetsservicede = 0
		zpetsserviceappliedduration = 12
	end
	if(zpetsservicespawned+26>zpetscomptime) then
		durationspent = zpetscomptime-zpetsservicespawned
		duration = 25-durationspent
		zpetsserviceduration=duration
	end
	if zpetsserviceduration < 0 then
		zpetsserviceduration = 0
	end
	if(zpetsservicedeapplied+zpetsserviceappliedduration>zpetscomptime) then
		durationspent = zpetscomptime-zpetsservicedeapplied
		duration = zpetsserviceappliedduration-durationspent
		zpetsservicededuration=duration
		else
		zpetsservicededuration=0
	end
	if zpetsservicededuration < 0 then
		zpetsservicededuration = 0
	end
	if zpetsservicede == 0 then
		zpetsservicededuration = 0
	end
	if zpetsservicededuration > zpetsserviceduration then
		zpetsservicededuration = zpetsserviceduration
	end
	if zpetsservicecount == 0 then
		zpetsservicede = 0
	end
	if(zpetsdarkglarespawned+13.2<zpetscomptime) then
		local zpetsdarkglarespawned = 0
		zpetsdarkglarecount = 0
		zpetsdarkglaredeapplied = 0
		zpetsdarkglareduration = 0
		else
		zpetsdarkglarecount = 1
	end
	if(zpetsdarkglaredeapplied+zpetsdarkglareappliedduration<zpetscomptime) then
		zpetsdarkglaredeapplied = 0
		zpetsdarkglarede = 0
		zpetsdarkglareappliedduration = 12
	end
	if(zpetsdarkglarespawned+13.2>zpetscomptime) then
		durationspent = zpetscomptime-zpetsdarkglarespawned
		duration = 12-durationspent
		zpetsdarkglareduration=duration
	end
	if zpetsdarkglareduration < 0 then
		zpetsdarkglareduration = 0
	end
	if(zpetsdarkglaredeapplied+zpetsdarkglareappliedduration>zpetscomptime) then
		durationspent = zpetscomptime-zpetsdarkglaredeapplied
		duration = zpetsdarkglareappliedduration-durationspent
		zpetsdarkglarededuration=duration
		else
		zpetsdarkglarededuration=0
	end
	if zpetsdarkglarededuration < 0 then
		zpetsdarkglarededuration = 0
	end
	if zpetsdarkglarede == 0 then
		zpetsdarkglarededuration = 0
	end
	if zpetsdarkglarededuration > zpetsdarkglareduration then
		zpetsdarkglarededuration = zpetsdarkglareduration
	end
	if zpetsdarkglarecount == 0 then
		zpetsdarkglarede = 0
	end
end

function ConsuptionValue()
	zpetstotaldoomguardhealth=0
	zpetstotalinfernalhealth=0
	zpetstotalservicehealth=0
	local zpetsdemod = 1.3
	if SPMod > 0 then
		zpetsdemod = (1.3+(SPMod/100))
	end
	local thalkielshealthcost = .08
	local zpetsplayermax = UnitHealthMax("player")
	local zpetspetmax = UnitHealthMax("pet")
	local zpetswildimpmax = .15
	local zpetsdreadmax = .4
	--local zpetsbeholdermax = .4
	local zpetsdoomguardmax = .4
	local zpetsinfernalmax = .5
	local zpetsfelguardmax = .5
	local zpetsfelhuntermax = .5
	local zpetsimpmax = .3
	local zpetssuccubusmax = .4
	local zpetsvoidwalkermax = .5
	local darkglarehealthmod = .4
	local servicehealthmod=zpetsfelguardmax
	local zpetsdreadactual = zpetsdreadmax*zpetsplayermax
	local zpetswildimpactual = zpetswildimpmax*zpetsplayermax
	--local zpetsbeholderactual = zpetsbeholdermax*zpetsplayermax
	local zpetsdoomguardactual = zpetsdoomguardmax*zpetsplayermax
	local zpetsinfernalactual = zpetsinfernalmax*zpetsplayermax
	local zpetsserviceactual = servicehealthmod*zpetsplayermax	
	local zpetsdarkglareactual = darkglarehealthmod*zpetsplayermax	
	local totalwildimphealth=zpetswildimpactual*zpetsimpcount
	local totaldreadhealth=zpetsdreadactual*zpetsdreadcount
	--local totalbeholderhealth=zpetsbeholderactual*beholdercount	
	local totaldewildimphealth=zpetswildimpactual*zpetsdeimpcount*zpetsdemod
	local totaldedreadhealth=zpetsdreadactual*zpetsdedreadcount*zpetsdemod
	--local totaldebeholderhealth=zpetsbeholderactual*debeholdercount*zpetsdemod	
	if zpetsdoomguardde > 0 then
			zpetstotaldoomguardhealth=(zpetsdoomguardcount*zpetsdoomguardactual*zpetsdemod)
		else
			zpetstotaldoomguardhealth=(zpetsdoomguardcount*zpetsdoomguardactual)
	end
	if zpetsinfernalde > 0 then
			zpetstotalinfernalhealth=(zpetsinfernalcount*zpetsinfernalactual*zpetsdemod)
		else
			zpetstotalinfernalhealth=(zpetsinfernalcount*zpetsinfernalactual)
	end
	if zpetsservicede > 0 then
			zpetstotalservicehealth=(zpetsservicecount*zpetsserviceactual*zpetsdemod)
		else
			zpetstotalservicehealth=(zpetsservicecount*zpetsserviceactual)
	end
	if zpetsdarkglarede > 0 then
			zpetstotaldarkglarehealth=(zpetsdarkglarecount*zpetsdarkglareactual*zpetsdemod)
		else
			zpetstotaldarkglarehealth=(zpetsdarkglarecount*zpetsdarkglareactual)
	end
	local totalpethealthvalue=zpetspetmax+totalwildimphealth+totaldreadhealth+totaldewildimphealth+totaldedreadhealth+zpetstotaldoomguardhealth+zpetstotalinfernalhealth+zpetstotalservicehealth+zpetstotaldarkglarehealth--+totaldebeholderhealth
	local damagetopets=totalpethealthvalue*thalkielshealthcost
	local damagepostvers=damagetopets	
	zpetsthalkielstotalvalue=(math.floor((damagepostvers)))
	
	local updatetext = ((GetSpellCDProgress("Thal'kiel's Consumption",60,zpetsCosumptionCD)))
	local compare2 = ((UnitHealthMax("player")*.5)/10)
	local compare = ((zpetsthalkielstotalvalue /compare2)*100)
	local compare3 = (math.floor(compare))
	local compare4 = (compare3.."%")
	zpetsthalkielcompare = compare3
	
end

function HitCount(tab,spellName,pet)
	if pet == true then
		usedguid = zpetsguid
		else
		usedguid = zpetsplayerguid
	end
	if (zpetscombatevent=="SPELL_DAMAGE" and zpetsspellName==spellName and zpetssourceGUID==usedguid) then
		tab[zpetsdestGUID]=zpetscomptime		
	end
end

function ClearHitCount(tab,period,haste)
	if haste == true then
		for i,v in pairs(tab) do
			local hastedperiod = (period/zpetshastemod)
			if(v+zpetshastemod<zpetscomptime) then
				tab[i]=nil
			end
		end
	else
		for i,v in pairs(tab) do
			if(v+period<zpetscomptime) then
				tab[i]=nil
			end
		end
	end
end

function CountPets()
	zpetsimpcount = entrysum(imptimetable)
	zpetsdeimpcount = entrysum(deimptimetable)
	zpetstotalimpcount = zpetsimpcount+zpetsdeimpcount
	
	zpetsdreadcount = entrysum(dreadtimetable)
	zpetsdedreadcount = entrysum(dedreadtimetable)
	zpetstotaldreadcount = zpetsdreadcount+zpetsdedreadcount	
	
	--beholdercount = entrysum(beholdertimetable)
	--debeholdercount = entrysum(debeholdertimetable)
	--totalbeholdercount = debholdercount + beholdercount
	
	zpetspetcount = zpetstotalimpcount+zpetstotaldreadcount+zpetsdoomguardcount+zpetsservicecount+zpetsinfernalcount+zpetsdarkglarecount--+totalbeholdercount
	zpetspetsneedde = zpetsimpcount+zpetsdreadcount--+beholdercount
	if zpetsdoomguardcount > 0 and zpetsdoomguardde == 0 then
		zpetspetsneedde = zpetspetsneedde + 1
	end
	if zpetsservicecount > 0 and zpetsservicede == 0 then
		zpetspetsneedde = zpetspetsneedde + 1
	end
	if zpetsinfernalcount > 0 and zpetsinfernalde == 0 then
		zpetspetsneedde = zpetspetsneedde + 1
	end	
	if zpetsdarkglarecount > 0 and zpetsdarkglarede == 0 then
		zpetspetsneedde = zpetspetsneedde + 1
	end	
end

function CountImpCasts()
	impcastremains = GetCastsRemaining(imptimetable,impcasttime,13.2,2,false)
	deimpcastremains = GetCastsRemaining(deimptimetable,deimpcasttime,13.2,2,true)
end

function DemonicEmpowerment()
	if (zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceGUID==zpetsplayerguid and zpetsspellName=="Demonic Empowerment") then
		merge(imptimetable,deimptimetable)
		deimptimetable=clone(imptimetable)
		imptimetable=clone(emptytimetable)		
		merge(impcasttime,deimpcasttime)
		deimpcasttime=clone(impcasttime)
		impcasttime=clone(emptytimetable)		
		merge(dreadtimetable,dedreadtimetable)
		dedreadtimetable=clone(dreadtimetable)
		dreadtimetable=clone(emptytimetable)		
		--merge(beholdertimetable,debeholdertimetable)
		--debeholdertimetable=clone(beholdertimetable)
		--beholdertimetable=clone(emptytimetable)		
		if zpetsdoomguardduration > 0 then
		zpetsdoomguardde = 1
		end
		if zpetsdoomguarddeduration == 0 then
			zpetsdoomguarddeapplied = zpetscomptime
		end
		if zpetsdoomguarddeduration > 3.6 then
			zpetsdoomguardappliedduration = 15.6
			zpetsdoomguarddeapplied = zpetscomptime
		end
		if zpetsdoomguarddeduration < 3.6 and zpetsdoomguarddeduration > 0 then
			zpetsdoomguardappliedduration = 12+zpetsdoomguarddeduration
			zpetsdoomguarddeapplied = zpetscomptime
		end
		if zpetsinfernalduration > 0 then
		zpetsinfernalde = 1
		end
		if zpetsinfernaldeduration == 0 then
			zpetsinfernaldeapplied = zpetscomptime
		end
		if zpetsinfernaldeduration > 3.6 then
			zpetsinfernalappliedduration = 15.6
			zpetsinfernaldeapplied = zpetscomptime
		end
		if zpetsinfernaldeduration < 3.6 and zpetsinfernaldeduration > 0 then
			zpetsinfernalappliedduration = 12+zpetsinfernaldeduration
			zpetsinfernaldeapplied = zpetscomptime
		end
		if zpetsserviceduration > 0 then
		zpetsservicede = 1
		end
		if zpetsservicededuration == 0 then
			zpetsservicedeapplied = zpetscomptime
		end
		if zpetsservicededuration > 3.6 then
			zpetsserviceappliedduration = 15.6
			zpetsservicedeapplied = zpetscomptime
		end
		if zpetsservicededuration < 3.6 and zpetsservicededuration > 0 then
			zpetsserviceappliedduration = 12+zpetsservicededuration
			zpetsservicedeapplied = zpetscomptime
		end
		if zpetsdarkglareduration > 0 then
		zpetsdarkglarede = 1
		end
		if zpetsdarkglarededuration == 0 then
			zpetsdarkglaredeapplied = zpetscomptime
		end
		if zpetsdarkglarededuration > 3.6 then
			zpetsdarkglareappliedduration = 15.6
			zpetsdarkglaredeapplied = zpetscomptime
		end
		if zpetsdarkglarededuration < 3.6 and zpetsdarkglarededuration > 0 then
			zpetsdarkglareappliedduration = 12+zpetsdarkglarededuration
			zpetsdarkglaredeapplied = zpetscomptime
		end
	end
end

function TimeOut(tab, dur) --Time out units in the table that have passed their duration
	for k,v in pairs(tab) do
		if(v+dur<zpetscomptime) then
			tab[k]=nil
		end
	end
end

function SummonTable(tab,unitname) --Fills the given table with the given units summon time
	if (zpetscombatevent=="SPELL_SUMMON" and zpetsdestName==unitname and zpetssourceGUID==zpetsplayerguid) then
		--print(unitname.."Summoned")
		tab[zpetsdestGUID]=zpetscomptime
	end
end

function DeathTable(tab,unitname) --Removes units from the given table if they are killed or destroyed
	if(zpetscombatevent=="UNIT_DIED") then
		for i,v in pairs(tab) do
			if(zpetsdestGUID==i) then
				tab[i]=nil
			end
		end
	end
	if(zpetscombatevent=="SPELL_INSTAKILL") then
		for i,v in pairs(tab) do
			if(zpetsdestGUID==i) then
				tab[i]=nil
			end
		end
	end
end

function PetCastTable(tab,unitname,tab2) --Adds cast start time of unitname to tab as long as unit exists in tab2
	if(zpetscombatevent=="SPELL_CAST_SUCCESS" and zpetssourceName==unitname) then
		for i,v in pairs(tab2) do
			if(zpetssourceGUID==i) then
				tab[i]=zpetscomptime	
			end
		end
	 end
end

function GetCastsRemaining(tab,tab2,petduration,casttime,de) --tab = spawn table, tab2= caststart table, petduration = petsmaxduration, casttime = spells default cast time, de = true|false if empowered
	local realcasttime = 0
	local totalcastsremaining = 0	
	if de == true then
		realcasttime = casttime/zpetsdehastemod
		else
		realcasttime = casttime/zpetshastemod
	end	
	for k, v in pairs(tab) do
		local casttimeleft = 0
		local creatureid = k
		local durationremaining = petduration-(zpetscomptime-v)
		local timespentcast = GetTimeSpentCasting(creatureid,tab2)
		if timespentcast == nil then
			timespentcast = 0
		end
		if timespentcast > 0 then
			local casttimeleft = realcasttime-timespentcast
		end
		local usableduration =  durationremaining-timespentcast
		local castsremaining = usableduration/realcasttime		
		if casttimeleft ~= 0 and casttimeleft < durationremaining then
			local castsremaining = castsremaining + 1
		end
		local castsremaining = math.floor(castsremaining)
		totalcastsremaining = totalcastsremaining+castsremaining	
	end
	return(totalcastsremaining)
end

function PetTableDuration(tab,tab2,petduration)
	for k, v in pairs(tab) do
		local newshit = k
		local durationremaining = petduration-(zpetscomptime-v)
		--print(durationremaining)
		tab2[newshit]=durationremaining
	end
	
	for k, v in pairs(tab2) do
		local keycheck = k
		local testvar = 0
		for k, v in pairs(tab) do
			if k == keycheck then
				testvar = testvar + 1
				else
			end	
		end
		if testvar == 0 then
			tab2[keycheck]=nil
		end
	end
end


function PetTotemSummonCount(TotemNumber,tab,PetType)
	local zpetspetcount = 0
	local depetcount = 0
	local totemStart = 0
	local haveTotem, tname, startTime, duration, icon = GetTotemInfo(TotemNumber)
		if tname == PetType then
			totemStart = startTime
		end
		
	for k, v in pairs(tab) do
		local teststart = v
		--print(teststart.." , "..totemStart)
		if ((teststart <= totemStart + 1.5) and (teststart >= totemStart -.2 )) or teststart == totemStart then
			zpetspetcount = zpetspetcount+1
			 
		end
	end	
	return(zpetspetcount)
end



function GetTimeSpentCasting(creatureid,tab) --Find out how much creatures in table have spent casting since cast start
	for i,v in pairs(tab) do					
		if creatureid == i then
			local timespentcast = zpetscomptime - v
			return(timespentcast)
		end			
	end
end

function ValueWildImps() --Get a total damage value of all current Wild Imps
	local wildimpsscaler = 1
	local felfireballcoefficient = 0.18
	local ifdamagemod = ((infernalfurnace*zpetsartifactpower1)+1)
	local versmod = (zpetsversmod)
	--local versmod = 1
	local felfireballdamage = (zpetsspellDmg * felfireballcoefficient* wildimpsscaler*versmod*ifdamagemod)
	local felfireballdamagede = (zpetsspellDmg * felfireballcoefficient * wildimpsscaler*versmod*ifdamagemod*zpetsmasterymod)
	zpetswildimpvalue = (((impcastremains*felfireballdamage)+(deimpcastremains*felfireballdamagede))*1.35)	
end

function clone (t) -- deep-copy a table
    if type(t) ~= "table" then return t end
    local meta = getmetatable(t)
    local target = {}
    for k, v in pairs(t) do
        if type(v) == "table" then
            target[k] = clone(v)
        else
            target[k] = v
        end
    end
    setmetatable(target, meta)
    return target
end

function merge(a, b)
    if type(a) == 'table' and type(b) == 'table' then
        for k,v in pairs(b) do if type(v)=='table' and type(a[k] or false)=='table' then merge(a[k],v) else a[k]=v end end
    end
    return a
end

function sum(t) --Get the total value of entries in a table
    local sum = 0
    for k,v in pairs(t) do
        sum = sum + v
    end
    return sum
end

function entrysum(t) --Get the total number of entries in a table
    local sum = 0
    for k,v in pairs(t) do
        sum = sum + 1
    end
    return sum
end

function SummonersProwess()
	if zpetsartifactpower2 == 0 then
	SPMod = 0
	elseif zpetsartifactpower2 == 1 then
	SPMod = 2
	elseif zpetsartifactpower2 == 2 then
	SPMod = 4
	elseif zpetsartifactpower2 == 3 then
	SPMod = 6
	elseif zpetsartifactpower2 == 4 then
	SPMod = 8
	elseif zpetsartifactpower2 == 5 then
	SPMod = 10
	elseif zpetsartifactpower2 == 6 then
	SPMod = 12
	end
end

function DemoClassCreate()
	zPetBackground:Show()

	-- Call Dreadstalkers --
	MyZpetBar1:Show()
	MyZpetBar1:SetMinMaxValues(0, 100)
	--MyZpetBar1:SetWidth(106)
	MyZpetBar1:SetHeight(10)
	MyZpetBar1:SetStatusBarColor(.36,.43,.26)
	
	-- Summon Darkglare / Felstorm --
	--MyZpetBar2:Show()
	MyZpetBar2:SetMinMaxValues(0, 100)
	--MyZpetBar2:SetWidth(106)
	MyZpetBar2:SetHeight(10)
	MyZpetBar12:SetStatusBarColor(.23,.32,.41)
	MyZpetBar2:SetStatusBarColor(.52,.41,.34)
		
	-- Thal'kiel's Consumption --
	MyZpetBar3:Show()
	MyZpetBar3:SetMinMaxValues(0, 100)
	MyZpetBar3:SetHeight(10)
	if IsPlayerSpell(111898) then
		MyZpetBar3:SetWidth(106)
		else
		MyZpetBar3:SetWidth(214)
	end
	MyZpetBar3:SetStatusBarColor(.29,.25,.51)
	
	-- Grimoire: Service --
	if IsPlayerSpell(111898) then
		MyZpetBar4:Show()
		else
		MyZpetBar4:Hide()
	end
	MyZpetBar4:SetMinMaxValues(0, 100)
	MyZpetBar4:SetHeight(10)
	MyZpetBar4:SetWidth(106)
	MyZpetBar4:SetStatusBarColor(.29,.25,.51)
	
	-- Call Darkglare --
	if IsPlayerSpell(205180) and IsPlayerSpell(152107) then
		MyZpetBar1:SetWidth(106)
		MyZpetBar12:SetWidth(106)
		MyZpetBar2:Hide()
		MyZpetBar12:Show()
		MyZpetBar12:SetPoint("BOTTOMLEFT", MyZpetBar1, "BOTTOMRIGHT", 2, 0);
		elseif IsPlayerSpell(205180) then
		MyZpetBar2:Show()
				MyZpetBar12:Show()
		MyZpetBar1:SetWidth(70)
		MyZpetBar2:SetWidth(70)
		MyZpetBar12:SetWidth(70)
		MyZpetBar12:SetPoint("BOTTOMLEFT", MyZpetBar2, "BOTTOMRIGHT", 2, 0);
		MyZpetBar12:Show()
		elseif (IsPlayerSpell(205180) == false) and (IsPlayerSpell(152107) == true) then
		MyZpetBar1:SetWidth(214)
		MyZpetBar2:Hide()
		MyZpetBar12:Hide()
		else
		MyZpetBar2:Show()
				MyZpetBar1:SetWidth(106)
		MyZpetBar2:SetWidth(106)
		MyZpetBar12:Hide()
	end
	MyZpetBar12:SetMinMaxValues(0, 100)
	MyZpetBar12:SetHeight(10)
	--MyZpetBar12:SetWidth(70)
	MyZpetBar12:SetStatusBarColor(.29,.25,.51)
	
	-- Soul Shards --
	MyZpetBar5:SetMinMaxValues(0, 100)
	MyZpetBar5:SetHeight(10)
	MyZpetBar5:SetWidth(41.2)
	MyZpetBar5:SetStatusBarColor(.90,0,1)
	MyZpetBar6:SetMinMaxValues(0, 100)
	MyZpetBar6:SetHeight(10)
	MyZpetBar6:SetWidth(41.2)
	MyZpetBar6:SetStatusBarColor(.90,0,1)
	MyZpetBar7:SetMinMaxValues(0, 100)
	MyZpetBar7:SetHeight(10)
	MyZpetBar7:SetWidth(41.2)
	MyZpetBar7:SetStatusBarColor(.90,0,1)
	MyZpetBar8:SetMinMaxValues(0, 100)
	MyZpetBar8:SetHeight(10)
	MyZpetBar8:SetWidth(41.2)
	MyZpetBar8:SetStatusBarColor(.90,0,1)
	MyZpetBar9:SetMinMaxValues(0, 100)
	MyZpetBar9:SetHeight(10)
	MyZpetBar9:SetWidth(41.2)
	MyZpetBar9:SetStatusBarColor(.90,0,1)
	
	-- Shadowflame --
	
	if IsPlayerSpell(205181) and zpetshidecooldowns == false then
		MyZpetBar10:SetMinMaxValues(0, 100)
		MyZpetBar10:SetHeight(10)
		MyZpetBar10:SetWidth(106)
		MyZpetBar10:SetStatusBarColor(.54,.31,.53)
		MyZpetBar10:Show()
		MyZpetBar11:SetMinMaxValues(0, 100)
		MyZpetBar11:SetHeight(10)
		MyZpetBar11:SetWidth(106)
		MyZpetBar11:SetStatusBarColor(.54,.31,.53)
		MyZpetBar11:Show()
		else
		MyZpetBar10:Hide()
		MyZpetBar11:Hide()
	end
	
	-- Impending Doom \\ Implosion --
	
	if IsPlayerSpell(196270) then
		MyZpetBar14:Show()
		elseif IsPlayerSpell(196277) then
		MyZpetBar14:Show()
		else
		MyZpetBar14:Hide()
		ImpText1:SetText("")
		ImpText2:SetText("")
	end
	local shardreduction = 0
	if zpetshideshards == true then
	shardreduction = 12
	end
	-- Setup correct Background Size based on talents --
	if IsPlayerSpell(205181) then
		zPetBackground:SetHeight(50-shardreduction)
		else
		zPetBackground:SetHeight(38-shardreduction)
	end

	if zpetshidecooldowns == true then
	zPetBackground:Hide()
	MyZpetBar1:Hide()
	MyZpetBar2:Hide()
	MyZpetBar3:Hide()
	MyZpetBar4:Hide()
	MyZpetBar5:Hide()
	MyZpetBar6:Hide()
	MyZpetBar7:Hide()
	MyZpetBar8:Hide()
	MyZpetBar9:Hide()
	MyZpetBar10:Hide()
	MyZpetBar11:Hide()
	MyZpetBar12:Hide()
	MyZpetBar13:Hide()
	end
end

function HideFrames()
	zPetBackground:Hide()
	MyZpetBar1:Hide()
	MyZpetBar2:Hide()
	MyZpetBar3:Hide()
	MyZpetBar4:Hide()
	MyZpetBar5:Hide()
	MyZpetBar6:Hide()
	MyZpetBar7:Hide()
	MyZpetBar8:Hide()
	MyZpetBar9:Hide()
	MyZpetBar10:Hide()
	MyZpetBar11:Hide()
	MyZpetBar12:Hide()
	MyZpetBar13:Hide()
	ZpetsIcon1:Hide()
	ZpetsIcon2:Hide()
	ZpetsIcon3:Hide()
	ZpetsIcon4:Hide()
	ZpetsIcon5:Hide()
	ZpetsIcon6:Hide()
	MyZpetsTextFrame:Hide()
	
end

function GetSpec()
	local currentSpec = GetSpecialization()
	local localizedClass, englishClass, classIndex = UnitClass("player");
	if classIndex == 9 and currentSpec == 1 then
		zpetspec = "Affliction"
		elseif classIndex == 9 and currentSpec == 2 then
		zpetspec = "Demonology"
		elseif classIndex == 9 and currentSpec == 3 then
		zpetspec = "Destruction"
		else
		zpetspec = "NA"
	end
	end
function tprint (tbl, indent)
if not indent then indent = 0 end
  for k, v in pairs(tbl) do
    formatting = string.rep("  ", indent) .. k .. ": "
    if type(v) == "table" then
      print(formatting)
      tprint(v, indent+1)
    elseif type(v) == 'boolean' then
      print(formatting .. tostring(v))      
    else
      print(formatting .. v)
    end
  end
end

function SetDesaturation(texture, desaturation)
	local shaderSupported = texture:SetDesaturated(desaturation);
	if ( not shaderSupported ) then
		if ( desaturation ) then
			texture:SetVertexColor(0.5, 0.5, 0.5);
		else
			texture:SetVertexColor(1.0, 1.0, 1.0);
		end
		
	end
end


