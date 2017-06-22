local chatEvents = {
	["CHAT_MSG_BATTLEGROUND"] = true,
	["CHAT_MSG_BATTLEGROUND_LEADER"] = true,
	["CHAT_MSG_BN_CONVERSATION"] = true,
	["CHAT_MSG_BN_WHISPER"] = true,
	["CHAT_MSG_BN_WHISPER_INFORM"] = true,
	["CHAT_MSG_CHANNEL"] = true,
	["CHAT_MSG_EMOTE"] = true,
	["CHAT_MSG_GUILD"] = true,
	["CHAT_MSG_INSTANCE_CHAT"] = true,
	["CHAT_MSG_INSTANCE_CHAT_LEADER"] = true,
	["CHAT_MSG_OFFICER"] = true,
	["CHAT_MSG_PARTY"] = true,
	["CHAT_MSG_PARTY_LEADER"] = true,
	["CHAT_MSG_RAID"] = true,
	["CHAT_MSG_RAID_LEADER"] = true,
	["CHAT_MSG_RAID_WARNING"] = true,
	["CHAT_MSG_SAY"] = true,
	["CHAT_MSG_WHISPER"] = true,
	["CHAT_MSG_WHISPER_INFORM"] = true,
	["CHAT_MSG_YELL"] = true
}

local bnetChatEvents = {
	["CHAT_MSG_BN_CONVERSATION"] = true,
	["CHAT_MSG_BN_WHISPER"]=true,
	["CHAT_MSG_BN_WHISPER_INFORM"] = true	
}

local function getKeystoneData(str)
	local map,level,active,affix1,affix2,affix3 = string.match(str,"|Hkeystone:(%d+):(%d+):(%d+):(%d+):(%d+):(%d+)|h%[.-%]|h");
	if (map and level and active) then
		return { 
			dungeon = C_ChallengeMode.GetMapInfo(map),
			active = tonumber(active)==1,
			level = tonumber(level)
		}
	end
	return {};
end

local function getKeystoneText(event, msg)
	local keystone = getKeystoneData(msg);
	if ( keystone and keystone.dungeon and keystone.level ) then
		msg = string.gsub(msg,"|h%[(.-)%]|h","|h%["..keystone.dungeon.." +"..keystone.level.."%]|h");
	
		if (not keystone.active and not bnetChatEvents[event]) then
			msg = string.gsub(msg,"ffa335ee","ff9d9d9d");
		end
	end
	
	return msg;
end

function KeystoneLinks_Filter(self, event, msg, ...)
	if ( event and chatEvents[event] ) then
		local i = 1;
		local ret = "";
		
		local s,e = string.find(msg,".-|Hkeystone:.-%]|h",i);
		while ( s ) do
			ret = ret .. getKeystoneText(event,string.sub(msg,s,e));
			i = e+1;
			s,e = string.find(msg,".-|Hkeystone:.-%]|h",i);
		end
		ret = ret .. string.sub(msg,i);
		
		if ( ret ~= msg ) then 
			return false, ret, ...;
		end
	end
end

function KeystoneLinks_OnLoad()
	for event,_ in pairs(chatEvents) do
		ChatFrame_AddMessageEventFilter(event,KeystoneLinks_Filter);
	end
end
