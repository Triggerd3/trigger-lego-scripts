local GameTitle = ""
local GameList = {
	["Fakewoken 3"] = 8350658333,
	["Noobs in Combat"] = 5734383673
}
for Name,ID in next, GameList do
	if game.GameId == ID then
		GameTitle = Name
	elseif game.PlaceId == ID then
		GameTitle = Name
	end
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/Triggerd3/trigger-lego-scripts/main/edited-hub.lua", true))()

if GameTitle == "Fakewoken 3" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Triggerd3/trigger-lego-scripts/main/Games/squidward-emoji.lua", true))()
end
