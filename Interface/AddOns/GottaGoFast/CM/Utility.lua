local ggf = GottaGoFast;
local utility = ggf.Utility;

function GottaGoFast.EmpoweredString()
  if (GottaGoFast.CurrentCM and next(GottaGoFast.CurrentCM)) then
    local empowered = GottaGoFast.CurrentCM["Empowered"];
    if (empowered) then
      return "Empowered";
    else
      return "Depleted";
    end
  end
  return "?";
end

function GottaGoFast.BuildCMTooltip()
  if (GottaGoFast.CurrentCM and next(GottaGoFast.CurrentCM)) then
    local newTooltip;
    local cmLevel = GottaGoFast.CurrentCM["Level"];
    local empowered = GottaGoFast.EmpoweredString();
    local bonus = GottaGoFast.CurrentCM["Bonus"];
    if (cmLevel) then
      newTooltip = empowered .. ": Level " .. cmLevel .. " - " .. tostring(bonus) .. "%\n\n";
      if (next(GottaGoFast.CurrentCM["Affixes"])) then
        for i, affixID in pairs(GottaGoFast.CurrentCM["Affixes"]) do
          local affixName = affixID["name"];
          local affixDesc = affixID["desc"];
          newTooltip = newTooltip .. affixName .. "\n" .. affixDesc .. "\n\n";
        end
      end
      newTooltip = GottaGoFast.Utility.ShortenStr(newTooltip, 2);
      GottaGoFast.tooltip = newTooltip;
    else
      GottaGoFast.tooltip = GottaGoFast.defaultTooltip;
    end
  end
end

function GottaGoFast.InitCM(currentZoneID)
  GottaGoFast.Utility.DebugPrint("Player Entered Challenge Mode");
  GottaGoFast.WipeCM();
  GottaGoFast.Utility.DebugPrint("Wiping CM");
  GottaGoFast.SetupCM(currentZoneID);
  GottaGoFast.Utility.DebugPrint("Setting Up CM");
  GottaGoFast.UpdateCMTimer();
  GottaGoFast.Utility.DebugPrint("Setting Up Timer");
  GottaGoFast.UpdateCMObjectives();
  GottaGoFast.Utility.DebugPrint("Setting Up Objectives");
  GottaGoFast.inCM = true;
  GottaGoFast.inTW = false;
  GottaGoFastFrame:SetScript("OnUpdate", GottaGoFast.UpdateCM);
  GottaGoFast.Utility.DebugPrint("Setting Up Update Script");
  GottaGoFast.ShowFrames();
  GottaGoFast.Utility.DebugPrint("Showing Frames");
end

function GottaGoFast.MobPointsToInteger(mobPoints)
  return tonumber(utility.ShortenStr(mobPoints, 1));
end

function GottaGoFast.HasTeeming(affixes)
  if (next(affixes) ~= nil) then
    for k, v in pairs(affixes) do
      if k == 5 or v.name == "Teeming" then
        return true;
      end
    end
  end
  return false;
end

function GottaGoFast.MouseoverUnitID()
  local guid = UnitGUID("mouseover");
  if (guid ~= nil) then
    local guidSplit = utility.ExplodeStr("-", guid);
    return tonumber(guidSplit[6]);
  end
  return nil;
end
