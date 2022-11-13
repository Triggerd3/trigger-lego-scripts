loadstring(game:HttpGet("https://raw.githubusercontent.com/Triggerd3/trigger-lego-scripts/main/edited-hub.lua", true))()

local GameTitle = ""
local GameList = {
	["Fakewoken 3"] = 8350658333
}
for Name,ID in next, GameList do
	if game.GameId == ID then
		GameTitle = Name
	elseif game.PlaceId == ID then
		GameTitle = Name
	end
end

if GameTitle == "Fakewoken 3" then
	print("dawgwiththebuttah")
	library:Init()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Triggerd3/trigger-lego-scripts/main/Games/squidward-emoji.lua", true))
end
