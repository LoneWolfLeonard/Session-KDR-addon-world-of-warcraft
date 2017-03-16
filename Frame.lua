local SayKill = CreateFrame("Frame")
local PKills = 0;
local PKDR = 0;
local PDeaths = 0;

SayKill:RegisterEvent("PLAYER_PVP_KILLS_CHANGED")
SayKill:RegisterEvent("PLAYER_DEAD")
SayKill:RegisterEvent("CHAT_MSG_SAY")
SayKill:RegisterEvent("PLAYER_ENTERING_WORLD")

SayKill:SetScript("OnEvent", function(Self, event, ...)

if event == "PLAYER_ENTERING_WORLD" then 
print("Get a kill or die to start the KDR, it will show up in this box.");
end

if event == "PLAYER_PVP_KILLS_CHANGED" then 
PKills = PKills + 1;
PKDR = 0;
PKDR = PKills / PDeaths;
print("Your Session KDR Is: " .. PKDR);
end


if event == "PLAYER_DEAD" then 
PDeaths = PDeaths + 1;
PKDR = 0;
PKDR = PKills / PDeaths;
print("Your Session KDR Is: " .. PKDR);
end
end)