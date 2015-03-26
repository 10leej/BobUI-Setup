--All it does is adjusts the chat frames and enable a few basic cvars to be awesome
local function Setup() --call this a function to do stuff
	--Chat frames
	ChatFrame1:ClearAllPoints()
	ChatFrame1:SetPoint("BOTTOMRIGHT", UIParent, -8, 4)
	ChatFrame1:SetSize(390,115)
	ChatFrame_RemoveAllChannels(ChatFrame1)
	ChatFrame_RemoveAllMessageGroups(ChatFrame1)
	FCF_SetLocked(ChatFrame1, true)

	ChatFrame3:ClearAllPoints()
	ChatFrame3:SetPoint("BOTTOMLEFT", UIParent, 4, 4)
	ChatFrame3:SetSize(390,115)
	ChatFrame_RemoveAllChannels(ChatFrame3)
	ChatFrame_RemoveAllMessageGroups(ChatFrame3)
	FCF_SetLocked(ChatFrame3, true)

	ChatFrame4:ClearAllPoints()
	ChatFrame4:SetPoint("BOTTOMLEFT", UIParent, 410, 8)
	ChatFrame4:SetSize(212,118)
	ChatFrame_RemoveAllChannels(ChatFrame4)
	ChatFrame_RemoveAllMessageGroups(ChatFrame4)
	FCF_SetLocked(ChatFrame4, true)

	--Chat Channels
	--left window
	ChatFrame_AddMessageGroup(ChatFrame3, "SAY")
	ChatFrame_AddMessageGroup(ChatFrame3, "EMOTE")
	ChatFrame_AddMessageGroup(ChatFrame3, "YELL")
	ChatFrame_AddMessageGroup(ChatFrame3, "GUILD")
	ChatFrame_AddMessageGroup(ChatFrame3, "OFFICER")
	ChatFrame_AddMessageGroup(ChatFrame3, "WHISPER")
	ChatFrame_AddMessageGroup(ChatFrame3, "MONSTER_SAY")
	ChatFrame_AddMessageGroup(ChatFrame3, "MONSTER_EMOTE")
	ChatFrame_AddMessageGroup(ChatFrame3, "MONSTER_YELL")
	ChatFrame_AddMessageGroup(ChatFrame3, "MONSTER_WHISPER")
	ChatFrame_AddMessageGroup(ChatFrame3, "MONSTER_BOSS_EMOTE")
	ChatFrame_AddMessageGroup(ChatFrame3, "MONSTER_BOSS_WHISPER")
	ChatFrame_AddMessageGroup(ChatFrame3, "PARTY")
	ChatFrame_AddMessageGroup(ChatFrame3, "PARTY_LEADER")
	ChatFrame_AddMessageGroup(ChatFrame3, "RAID")
	ChatFrame_AddMessageGroup(ChatFrame3, "RAID_LEADER")
	ChatFrame_AddMessageGroup(ChatFrame3, "RAID_WARNING")
	ChatFrame_AddMessageGroup(ChatFrame3, "INSTANCE_CHAT")
	ChatFrame_AddMessageGroup(ChatFrame3, "INSTANCE_CHAT_LEADER")
	ChatFrame_AddMessageGroup(ChatFrame3, "BG_HORDE")
	ChatFrame_AddMessageGroup(ChatFrame3, "BG_ALLIANCE")
	ChatFrame_AddMessageGroup(ChatFrame3, "BG_NEUTRAL")
	ChatFrame_AddMessageGroup(ChatFrame3, "SYSTEM")
	ChatFrame_AddMessageGroup(ChatFrame3, "ERRORS")
	ChatFrame_AddMessageGroup(ChatFrame3, "AFK")
	ChatFrame_AddMessageGroup(ChatFrame3, "DND")
	ChatFrame_AddMessageGroup(ChatFrame3, "IGNORED")
	ChatFrame_AddMessageGroup(ChatFrame3, "BN_WHISPER")

	--right window
	ChatFrame_AddChannel(ChatFrame1, "Trade") --I heard I might have to localize this
	ChatFrame_AddChannel(ChatFrame1, "General") --I heard I might have to localize this
	ChatFrame_AddChannel(ChatFrame1, "LocalDefense") --I heard I might have to localize this
	ChatFrame_AddChannel(ChatFrame1, "GuildRecruitment") --I heard I might have to localize this
	ChatFrame_AddChannel(ChatFrame1, "LookingForGroup") --I heard I might have to localize this
	ChatFrame_AddMessageGroup(ChatFrame1, "ACHIEVEMENT")
	ChatFrame_AddMessageGroup(ChatFrame1, "BN_CONVERSATION")
	ChatFrame_AddMessageGroup(ChatFrame1, "GUILD_ACHIEVEMENT")
	ChatFrame_AddMessageGroup(ChatFrame1, "COMBAT_XP_GAIN")
	ChatFrame_AddMessageGroup(ChatFrame1, "COMBAT_HONOR_GAIN")
	ChatFrame_AddMessageGroup(ChatFrame1, "COMBAT_FACTION_CHANGE")
	ChatFrame_AddMessageGroup(ChatFrame1, "LOOT")
	ChatFrame_AddMessageGroup(ChatFrame1, "MONEY")

	-- enable classcolor automatically on login and on each character without doing /uisetup each time.
	ToggleChatColorNamesByClassGroup(true, "SAY")
	ToggleChatColorNamesByClassGroup(true, "EMOTE")
	ToggleChatColorNamesByClassGroup(true, "YELL")
	ToggleChatColorNamesByClassGroup(true, "GUILD")
	ToggleChatColorNamesByClassGroup(true, "OFFICER")
	ToggleChatColorNamesByClassGroup(true, "GUILD_ACHIEVEMENT")
	ToggleChatColorNamesByClassGroup(true, "ACHIEVEMENT")
	ToggleChatColorNamesByClassGroup(true, "WHISPER")
	ToggleChatColorNamesByClassGroup(true, "PARTY")
	ToggleChatColorNamesByClassGroup(true, "PARTY_LEADER")
	ToggleChatColorNamesByClassGroup(true, "RAID")
	ToggleChatColorNamesByClassGroup(true, "RAID_LEADER")
	ToggleChatColorNamesByClassGroup(true, "RAID_WARNING")
	ToggleChatColorNamesByClassGroup(true, "BATTLEGROUND")
	ToggleChatColorNamesByClassGroup(true, "BATTLEGROUND_LEADER")	
	ToggleChatColorNamesByClassGroup(true, "CHANNEL1")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL2")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL3")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL4")
	ToggleChatColorNamesByClassGroup(true, "CHANNEL5")
	ToggleChatColorNamesByClassGroup(true, "INSTANCE_CHAT")
	ToggleChatColorNamesByClassGroup(true, "INSTANCE_CHAT_LEADER")

	--cVars
	SetCVar("autoLootDefault", 1)
	SetCVar("buffDurations", 1)
	SetCVar("consolidateBuffs", 0)
	SetCVar("scriptErrors", 1)
	SetCVar("ShowClassColorInNameplate", 1)
	SetCVar("screenshotQuality", 8)
	SetCVar("chatMouseScroll", 1)
	SetCVar("chatStyle", "im")
	SetCVar("WholeChatWindowClickable", 0)
	SetCVar("ConversationMode", "inline")
	SetCVar("WhisperMode", "inline")
	SetCVar("BnWhisperMode", "inline")
	SetCVar("showTutorials", 0)
	SetCVar("autoQuestWatch", 1)
	SetCVar("autoQuestProgress", 1)
	SetCVar("UberTooltips", 1)
	SetCVar("removeChatDelay", 1)
	SetCVar("showVKeyCastbar", 1)
	SetCVar("bloatthreat", 0)
	SetCVar("bloattest", 0)
	SetCVar("showArenaEnemyFrames", 0)
	SetCVar("alwaysShowActionBars", 1)
	SetCVar("autoOpenLootHistory", 0)
	SetCVar("spamFilter", 0)
	SetCVar("violenceLevel", 5) --5 for super violent!
end

--Initialize Setup
local f = CreateFrame("frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function(self, event, ...)
	Setup() --And...... GO!
end)

SlashCmdList["BOBUI"] = function() Setup() end --hmm our slash command doesn't work?
SLASH_BOBUI1 = "/bobsetup"
SLASH_BOBUI2 = "/uisetup"