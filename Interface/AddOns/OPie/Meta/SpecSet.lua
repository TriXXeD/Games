local _, T = ...

local EV, L = T.Evie, T.L
local AB = assert(T.ActionBook:compatible(2,17), "A compatible version of ActionBook is required.")
local RW = assert(AB:compatible("Rewire", 1,7), "A compatible version of Rewire is required")
local PLAYERNAME = UnitName("player") .. "@" .. GetRealmName()

do -- RW/opiespecset
	local f = CreateFrame("Frame", nil, nil, "SecureFrameTemplate")
	f:SetAttribute("RunSlashCmd", [[self:CallMethod("SwitchSpec", ...)]])
	local esSpec, esSet, esDeadline
	function EV:PLAYER_SPECIALIZATION_CHANGED(unit)
		if esDeadline and unit == "player" and GetSpecialization() == esSpec and not InCombatLockdown() and esDeadline > GetTime() then
			UseEquipmentSet(esSet)
			esDeadline, esSpec, esSet = nil
		end
	end
	function f:SwitchSpec(_cmd, args)
		local sid, sname = args:match("(%d+) {(.+)}")
		sid = tonumber(sid)
		if GetSpecialization() ~= sid and not InCombatLockdown() then
			SetSpecialization(sid)
			if sname ~= "" then
				esSpec, esSet, esDeadline = sid, sname, GetTime()+9
			end
		end
	end
	RW:RegisterCommand("/opiespecset", false, false, f)
end
do -- AB/specset
	local slot, tspec, tset = {}, {}, {}
	local function SetSpecializationTooltip(self, id, set)
		local _, name, desc = GetSpecializationInfo(id)
		if name then
			self:SetText(name, 1,1,1)
			self:AddLine(desc, nil, nil, nil, 1)
			if (set or "") ~= "" then
				local ico, _, _isCur, total, eq, bags, miss = GetEquipmentSetInfoByName(set)
				if ico then
					local eql
					if total == eq then
						eql = GREEN_FONT_COLOR_CODE .. ITEMS_EQUIPPED:format(eq)
					elseif miss > 0 then
						eql = RED_FONT_COLOR_CODE .. ITEMS_NOT_IN_INVENTORY:format(miss)
					else
						eql = NORMAL_FONT_COLOR_CODE .. ITEMS_IN_INVENTORY:format(bags)
					end
					self:AddLine(" ")
					self:AddLine("|T" .. ico .. ":0|t " .. set .. ": " .. eql, 1,1,1)
				end
			end
		else
			self:Hide()
		end
	end
	local function SetSpecSetTooltip(self, tok)
		local spec, set = tspec[tok], tset[tok]
		if spec == nil then
			spec, set = 0+tok:sub(1,1), tok:sub(3)
			tspec[tok], tset[tok] = spec, set
		end
		SetSpecializationTooltip(self, spec, set)
	end
	local function hint(tok)
		local cs, spec, set = GetSpecialization(), tspec[tok], tset[tok]
		if spec == nil then
			spec, set = 0+tok:sub(1,1), tok:sub(3)
			tspec[tok], tset[tok] = spec, set
		end
		local _, name, _, ico = GetSpecializationInfo(spec)
		local state = (cs == spec and 1 or 0)
		return not InCombatLockdown(), state, ico, name, 0, 0, 0, SetSpecSetTooltip, tok
	end
	local function create(idx, sets)
		local _, specName = GetSpecializationInfo(idx)
		local setName = sets and sets[PLAYERNAME]
		setName = setName ~= false and (setName or specName) or ""
		local tk = idx .. "#" .. setName
		local ret = slot[tk]
		if specName and UnitLevel("player") >= 10 and GetNumSpecializations() >= idx and not ret then
			ret = AB:GetActionSlot("macrotext", ("/opiespecset %d {%s}\n%s [spec:%d] %s"):format(idx, setName, SLASH_EQUIP_SET1, setName ~= "" and idx or 5, setName))
			ret = AB:CreateActionSlot(hint, tk, "clone", ret)
			slot[tk] = ret
		end
		return ret
	end
	local function describe(idx, _sets)
		local _, name, _, ico = GetSpecializationInfo(idx)
		return SPECIALIZATION, name or idx, ico or "Interface/Icons/Temp", nil, SetSpecializationTooltip, idx
	end
	AB:RegisterActionType("specset", create, describe)
	AB:AugmentCategory("Miscellaneous", function(_, add)
		for i=1,GetNumSpecializations() do
			add("specset", i)
		end
	end)
end
do -- EditorUI
	local bg = CreateFrame("Frame")
	local drop = CreateFrame("Frame", "OPie_SS_Drop", bg, "UIDropDownMenuTemplate")
	local lab = drop:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	lab:SetPoint("LEFT", bg, "TOPLEFT", 0, -14)
	lab:SetText(L"Equip set:")
	drop:SetPoint("TOPRIGHT", -3, -2)
	UIDropDownMenu_SetWidth(drop, 250)
	function drop:set(name, skipSave)
		drop.value = name
		local ico = name and GetEquipmentSetInfoByName(name)
		UIDropDownMenu_SetText(drop, name == false and NONE or ((ico and "|T" .. ico .. ":0|t " or "") .. name))
		if not skipSave then
			local p = bg:GetParent()
			p = p and p.SaveAction and p:SaveAction()
		end
	end
	function drop.initialize()
		local inf, hadSpec = UIDropDownMenu_CreateInfo(), false
		inf.func, inf.minWidth = drop.set, drop:GetWidth()-40
		inf.text, inf.arg1, inf.checked = NONE, false, drop.value == false
		UIDropDownMenu_AddButton(inf)
		for i=1,GetNumEquipmentSets() do
			local n, ico = GetEquipmentSetInfo(i)
			inf.text, inf.arg1, inf.checked = "|T" .. (ico or "Interface/Icons/Temp") .. ":0|t " .. n, n, drop.value == n
			hadSpec = hadSpec or n == drop.spec
			UIDropDownMenu_AddButton(inf)
		end
		if not hadSpec and drop.spec then
			inf.text, inf.arg1, inf.checked = drop.spec, drop.spec, drop.value == nil or drop.value == drop.spec
			UIDropDownMenu_AddButton(inf)
		end
	end

	function bg:SetAction(owner, action)
		bg:SetParent(nil)
		bg:ClearAllPoints()
		bg:SetAllPoints(owner)
		bg:SetParent(owner)
		bg:Show()
		local at = action[3]
		at = at and at[PLAYERNAME]
		drop.spec = select(2, GetSpecializationInfo(action[2]))
		drop:set(at == nil and drop.spec or at, true)
	end
	function bg:GetAction(into)
		local v, at = drop.value, into[3]
		local cv = at and at[PLAYERNAME]
		if v == drop.spec then v = nil end
		if v ~= cv then
			at = at or {}
			at[PLAYERNAME] = v
			if next(at) == nil then at = nil end
			into[3] = at
		end
	end
	function bg:Release(owner)
		if bg:IsOwned(owner) then
			bg:SetParent(nil)
			bg:ClearAllPoints()
			bg:Hide()
		end
	end
	function bg:IsOwned(owner)
		return bg:GetParent() == owner
	end
	
	T.TEMP_AB_EDITORS.specset = bg
end