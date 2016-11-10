local ggf = GottaGoFast;
local constants = ggf.Constants;
local utility = ggf.Utility;
local version = constants.Version;

function GottaGoFast.VersionCheck()
  local lastVersion = ggf.GetVersion(nil);
  utility.DebugPrint("Last Version: " .. lastVersion);
  utility.DebugPrint("Current Version: " .. version);
  if (lastVersion == nil or lastVersion == 0) then
    -- First Time Run
    ggf.VersionFirstRun();
  elseif (lastVersion < 25000) then
    ggf:Print("Welcome To Version 2.5");
    ggf:Print("New Files Have Been Added, Before Submitting A Bug I Recommend Restarting Your Client Fully");
    ggf:Print("History: Your Runs Are Now Being Optionally Stored In The Sub-Addon GottaGoFastHistory, Disable It To Avoid This Future Feature");
    ggf:Print("Mob Points: New Feature Added To Show How Enemy Forces Is Calculated In. Disabled By Default");
  elseif (lastVersion < 25200) then
    ggf:Print("Version 2.5.2");
    ggf:Print("Individual Mob Value: Shows Mob Value Towards Enemy Forces In The Tooltip, Enabled By Default");
  elseif (lastVersion < 25300) then
    ggf:Print("Version 2.5.3");
    ggf:Print("More Custom Colors, Timewalking Disabled (7.1), Death Information, And Tooltip Enable/Disable Option");
  elseif (lastVersion < 25400) then
    ggf:Print("Version 2.5.4");
    ggf:Print("Safer Data Syncing, Mob Count Fixed On Reload")
  end
  ggf.SetVersion(nil, version);
end

function GottaGoFast.VersionFirstRun()
  utility.DebugPrint("First Run");
  GottaGoFast.SendHistoryFlag = true;
end
