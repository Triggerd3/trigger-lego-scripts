# trigger-lego-scripts
``` lua
forbiddenColors = {
	BrickColor.new("Dark brown"),
	BrickColor.new("Black"),
	BrickColor.new("Light orange brown"),
	BrickColor.new("Earth orange"),
	BrickColor.new("Dark orange"),
	BrickColor.new("Earth yellow"),
	BrickColor.new("Dark nougat"),
	BrickColor.new("Reddish brown"),
	BrickColor.new("Rust"),
	BrickColor.new("Brown"),
	BrickColor.new("Cocoa"),
	BrickColor.new("Pine cone"),
	BrickColor.new("Dirt brown"),
	BrickColor.new("Dark Taupe"),
	BrickColor.new("Burnt Sienna"),
	BrickColor.new("Reddish brown")
}

game:GetService("Players").PlayerAdded:Connect(function(Player)
	Player.CharacterAppearanceLoaded:Connect(function(char)
		if table.find(forbiddenColors, char.Head.BrickColor) ~= nil then
			Player:Kick()
		end
	end)
end)
```
