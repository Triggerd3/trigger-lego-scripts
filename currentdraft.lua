local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Triggerd3/trigger-lego-scripts/main/edited-hub.lua", true))()

-- NEEDS PING ADJUSTMENT ON AUTO-PARRY

-- // Global Variables
getgenv().AutoParry = false
getgenv().OpFacing = false
getgenv().FacingOp = false
getgenv().FeintRoll = true
getgenv().SpeedHack = false
getgenv().CFly = false
getgenv().InfiniteJump = false
getgenv().NoClipGlobal = false
getgenv().AutoRun = false
getgenv().AutoPerfectCast = false
getgenv().SwingAfterParry = false
getgenv().NoAnimation = false
getgenv().SpeedSwing = false
getgenv().AutoParryWhitelist = {}

getgenv().AutoParrylist = {
    
    -- FIST MOVESET
        --BARE FISTS (FISTS)
    ["rbxassetid://9890788066"] = {"Fist1", .35, "Parry", "Close", "Swing"},
    ["rbxassetid://9890790186"] = {"Fist2", .35, "Parry", "Close", "Swing"},
    ["rbxassetid://9890792365"] = {"Fist3", .35, "Parry", "Close", "Swing"},
    ["rbxassetid://9890796934"] = {"Fist4", .35, "Parry", "Close", "Swing"},
    ["rbxassetid://9890800691"] = {"Critical", .55, "Parry", "Ranged", "Swing"},
    ["rbxassetid://9891303051"] = {"Run", .3, "Parry", "Ranged", "Swing"},
    ["rbxassetid://10558610693"] = {"Aerial", .3, "Parry", "Far", "Not"},
    
    -- LIGHT MOVESET
        -- STILETTO (DAGGER)
    ["rbxassetid://10300203796"] = {"Stiletto1", 0.08, "Parry", "Close", "Swing"},
    ["rbxassetid://10300357869"] = {"Stilleto2", 0, "Parry", "Close", "Swing"},
    ["rbxassetid://10310816773"] = {"Critical", 0.45, "Parry", "Ranged", "Swing"},
    ["rbxassetid://10307611102"] = {"StilettoRun", 0.06, "Parry", "Ranged", "Swing"},
    ["rbxassetid://10571560499"] = {"Aerial", 0.03, "Parry", "Ranged", "Not"},
        -- RAPIER (RAPIER)
    ["rbxassetid://10225217835"] = {"Rapier1", 0.3, "Parry", "Close", "Swing"},
    ["rbxassetid://10225390984"] = {"Rapier2", 0.3, "Parry", "Close", "Swing"},
    ["rbxassetid://10234795108"] = {"Critical", 0.5, "Parry", "Ranged", "Not"},
        -- FLINTLOCK (PISTOL)
    ["rbxassetid://10206784771"] = {"Shoot1", 0.15, "Parry", "Ranged", "Swing"},
    ["rbxassetid://10206804975"] = {"Shoot2", 0.15, "Parry", "Ranged", "Swing"},
    ["rbxassetid://10206765261"] = {"RunShoot", 0.1, "Parry", "Ranged", "Swing"},
    ["rbxassetid://8787495611"] = {"Critical", 0.1, "Parry", "Ranged", "Swing"},
    
    
    -- MEDIUM MOVESET
        -- SWORD (SWORD)
    ["rbxassetid://8698443433"] = {"Sword1", 0.25, "Parry", "Close", "Swing"},
    ["rbxassetid://8699014368"] = {"Sword2", 0.25, "Parry", "Close", "Swing"},
    ["rbxassetid://8787495611"] = {"Critical", 0.45, "Parry", "Ranged", "Swing"},
    ["rbxassetid://8779280417"] = {"SwordRun", 0.2, "Parry", "Ranged", "Swing"},
    ["rbxassetid://9112351440"] = {"Aerial", 0.2, "Parry", "Far", "Not"},
            -- SWORD (TWO-HANDED)
    ["rbxassetid://9215215492"] = {"Sword1", 0.2, "Parry", "Close", "Swing"},
    ["rbxassetid://9255163830"] = {"Sword2", 0.2, "Parry", "Close", "Swing"},
        -- SPEAR (TWO-HANDED)
    ["rbxassetid://11363516302"] = {"SPEAR1", 0.2, "Parry", "Close", "Swing"},
    ["rbxassetid://11363591881"] = {"SPEAR2", 0.2, "Parry", "Close", "Swing"},
    ["rbxassetid://11404365708"] = {"SPEARRUN", 0.2, "Parry", "Ranged", "Swing"},
    ["rbxassetid://11425673362"] = {"Critical", 0.4, "Parry", "Ranged", "Swing"},
    ["rbxassetid://11425773935"] = {"Critical2", 0, "Parry", "Ranged", "Swing"},
            -- SPEAR (ONE-HANDED)
    ["rbxassetid://11404159898"] = {"SPEAR1", 0.2, "Parry", "Close", "Swing"},
    ["rbxassetid://11404162476"] = {"SPEAR2", 0.2, "Parry", "Close", "Swing"},
        -- KATANA (KATANA)
    ["rbxassetid://9892586559"] = {"KatanaSpecial", 0.4, "Parry", "Ranged", "Swing"},
    
    -- HEAVY MOVESET
        -- HEAVY AXE (BATTLE AXE)
    ["rbxassetid://10013909049"] = {"Heavy1", 0.3, "Parry", "Close", "Swing"},
    ["rbxassetid://10013911426"] = {"Heavy2", 0.3, "Parry", "Close", "Swing"},
    ["rbxassetid://10013915154"] = {"Heavy3", 0.3, "Parry", "Close", "Swing"},
    ["rbxassetid://10022838306"] = {"Critical", 0.7, "Parry", "Ranged", "Swing"},
    ["rbxassetid://10013919534"] = {"HeavyRun", 0.3, "Parry", "Ranged", "Swing"},
    
        -- ZWEIHANDER (GREATSWORD)
    ["rbxassetid://10787560419"] = {"Great1", 0.35, "Parry", "Close", "Swing"},
    ["rbxassetid://10873957240"] = {"Great2", 0.35, "Parry", "Close", "Swing"},
    ["rbxassetid://10876826705"] = {"Critical", 0.7, "Parry", "Close", "Swing"},
    ["rbxassetid://10771933209"] = {"GreatRun", 0.5, "Parry", "Ranged", "Swing"},
    
    --- MANTRAS
        -- ATTUNEMENT-LESS
    ["rbxassetid://9912709174"] = {"StrongLeft", 0.4, "Parry", "Ranged", "Swing"},
    
    --- MOBS
        -- MUDSKIPPER
    ["rbxassetid://10109623939"] = {"Combo1", .2, "Parry", "Close", "Swing"},
    ["rbxassetid://10109628136"] = {"Combo2", .2, "Parry", "Close", "Swing"},
        -- ENFORCER
    ["rbxassetid://8916943692"] = {"Swing1", 0.4, "Parry", "Close", "Swing"},
    ["rbxassetid://8917108290"] = {"Swing2", 0.4, "Parry", "Close", "Swing"},
        -- SQUIDWARD
    ["rbxassetid://10085445723"] = {"Combo1", .2, "Parry", "Close", "Swing"},
    ["rbxassetid://10085688428"] = {"Combo2", .2, "Parry", "Close", "Swing"},
    ["rbxassetid://10085695929"] = {"Combo3", .2, "Parry", "Close", "Swing"},
    ["rbxassetid://10096299376"] = {"Jetstream", .2, "Roll", "Ranged", "Swing"}, --????????
    ["rbxassetid://10098630808"] = {"FlipKick", .2, "Parry", "Close", "Swing"},
        -- OWL
    ["rbxassetid://9984057511"] = {"LeftSwing", .2, "Parry", "Ranged", "Swing"},
    ["rbxassetid://9983925053"] = {"RightSwing", .2, "Parry", "Ranged", "Swing"},
    ["rbxassetid://9995957168"] = {"Rush", .4, "Roll", "Ranged", "Swing"},
    ["rbxassetid://9995234248"] = {"Swoop", .4, "Roll", "Ranged", "Swing"},
        --MONKE
    ["rbxassetid://9145238578"] = {"Stomp", 0, "Parry", "MONKE", "Swing"},
    ["rbxassetid://9145941681"] = {"Kick", 0, "Roll", "MONKE", "Swing"},
    ["rbxassetid://9147807267"] = {"Grab", 0.2, "Parry", "MONKE", "Swing"},
    ["rbxassetid://9137450354"] = {"TripleStomp", 0.6, "Parry", "MONKE", "Swing"},
    ["rbxassetid://9157621952"] = {"Throw", 0.6, "Roll", "MONKE", "Swing"},
        --SHARKO
    ["rbxassetid://8680523972"] = {"Swing1", 0.5, "Parry", "Far", "Swing"},
    ["rbxassetid://8686839894"] = {"SwingCombo", 0.5, "Parry", "Far", "Swing"},
    ["rbxassetid://8688521045"] = {"Kick", 0.5, "Roll", "Far", "Swing"},
    ["rbxassetid://8687295215"] = {"Spray", 0.4, "Parry", "Far", "Swing"},
    
    -- RESONANCES
        --ESCAPIST
    ["rbxassetid://10968567648"] = {"Exit", 0, "Roll", "Close", "Not"},
        --RUINATION
    ["rbxassetid://10974528182"] = {"Swing1", 0.7, "Roll", "Close", "Swing"},
    ["rbxassetid://10974684486"] = {"Swing2", 0.6, "Roll", "Close", "Swing"},
    ["rbxassetid://11286554002"] = {"Swing3", 0.6, "Roll", "Close", "Swing"},
    ["rbxassetid://10976188963"] = {"Slam", 0.6, "Roll", "Close", "Swing"},
}



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




-- // Local Variables
local PlayerService = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UIS = game:GetService("UserInputService")

local Players = PlayerService:GetChildren()
local LocalPlayer = PlayerService.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CheckSpeed = ReplicatedStorage.Events.CheckSpeed
local Camera = workspace.CurrentCamera

local Settings = settings()
local WTSP = Camera.WorldToScreenPoint
local WTVP = Camera.WorldToViewportPoint
local CameraSpoof = {
	FieldOfView = Camera.FieldOfView
}
local Lighting = game:GetService"Lighting"
local LightingSpoof = {
	ClockTime = Lighting.ClockTime,
	Brightness = Lighting.Brightness,
	Ambient = Lighting.Ambient,
	OutdoorAmbient = Lighting.OutdoorAmbient,
	ColorShift_Top = Lighting.ColorShift_Top,
}

local NameRequest
local TeamRequest
local HealthRequest
local UniversalBodyParts = {
		"Head",
		"UpperTorso", "LowerTorso", "Torso",
		"Left Arm", "LeftUpperArm", "LeftLowerArm", "LeftHand",
		"Right Arm", "RightUpperArm", "RightLowerArm", "RightHand",
		"Left Leg", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot",
		"Right Leg", "RightUpperLeg", "RightLowerLeg", "RightFoot"
	}
local R6BodyParts = {"Head","Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}
local UseBodyParts = GameTitle == "Fakewoken 3" and R6BodyParts or UniversalBodyParts
local OpponentFeinted = false

-- // Functions
local function mouse1click(delay) spawn(function() mouse1press() wait(delay or 0.1) mouse1release() end) end
local function mouse2click(delay) spawn(function() keypress(0x02) wait(delay or 0.1) keprelease(0x02) end) end
local function keytap(key, delay) spawn(function() keypress(key) wait(delay or 0.1) keyrelease(key) end) end

local function GetHitboxFromChar(Character, BodyPart)
	BodyPart = BodyPart or "Head"
	if not Character then return end
	return Character:FindFirstChild(BodyPart) or Character:FindFirstChild("UpperTorso")
end

local RayParams = RaycastParams.new()
RayParams.FilterType = Enum.RaycastFilterType.Blacklist
RayParams.IgnoreWater = true
local function RayCheck(ClientChar, To, Distance)
    local Ignores = {Camera, ClientChar}
    if GameTitle == "Phantom Forces" then
	    Ignores[3] = workspace.Ignore
    end
    RayParams.FilterDescendantsInstances = Ignores
    return workspace:Raycast(Camera.CFrame.p, (To - Camera.CFrame.p).Unit * Distance, RayParams)
end

local Sub = Vector3.new(-0.1, -0.1, -0.1)
local function GetCorners(Object, Esp)
	local CF = Object.CFrame
	local Size = (Object.Size / 2)
	Size = Esp and Size or Size - Sub
	return {
		Vector3.new(CF.X+Size.X, CF.Y+Size.Y, CF.Z+Size.Z);
		Vector3.new(CF.X-Size.X, CF.Y+Size.Y, CF.Z+Size.Z);

		Vector3.new(CF.X-Size.X, CF.Y-Size.Y, CF.Z-Size.Z);
		Vector3.new(CF.X+Size.X, CF.Y-Size.Y, CF.Z-Size.Z);

		Vector3.new(CF.X-Size.X, CF.Y+Size.Y, CF.Z-Size.Z);
		Vector3.new(CF.X+Size.X, CF.Y+Size.Y, CF.Z-Size.Z);

		Vector3.new(CF.X-Size.X, CF.Y-Size.Y, CF.Z+Size.Z);
		Vector3.new(CF.X+Size.X, CF.Y-Size.Y, CF.Z+Size.Z);
	}
end

--Player data
local ESPObjects = {}

local function Track(Player)
	-- too lazy to add a proper check, discontinued anyway so
	if not (Player.ClassName == "Player" or Player.ClassName == "Folder") then return end

	for i,v in next, ESPObjects do
		if not v.Active then
			v.Active = true
			ESPObjects[Player] = v
			break
		end
	end
	if not ESPObjects[Player] then
		ESPObjects[Player] = {
			ChamsOutline = library:Create("Folder", {Parent = library.base}),
			Chams = library:Create("Folder", {Parent = library.base}),
			ChamsStep = 0,
			BoxOutline = library:Create("Square", {Thickness = 1}),
			BoxInline = library:Create("Square", {Thickness = 1}),
			Box = library:Create("Square", {Thickness = 1}),
			LookAt = library:Create("Line", {Thickness = 1}),
			NameText = library:Create("Text", {Size = 15, Font = 3, Center = true, Outline = true}),
			DistanceText = library:Create("Text", {Size = 15, Font = 3, Center = true, Outline = true}),
			BarOutline = library:Create("Square", {Filled = true}),
			Bar = library:Create("Square", {Filled = true}),
			HealthText = library:Create("Text", {Color = Color3.new(1, 1, 1), Size = 14, Font = 3, Center = true, Outline = true}),
			DirectionLine = library:Create("Line", {Thickness = 1}),
			DirectionDot = library:Create("Square", {Size = Vector2.new(7, 7), Filled = true}),
			--RadarHeight = library:Create("TextLabel", {BackgroundTransparency = 1, Text = "T", TextColor3 = Color3.new(), Font = Enum.Font.SciFi, TextSize = 13}),
			RadarBlip = library:Create("Circle", {Radius = 4, Filled = true}),
			OOVArrow = library:Create"Triangle",
			Active = true,

			Invis = function()
				ESPObjects[Player].Visible = false
				ESPObjects[Player].BoxOutline.Visible = false
				ESPObjects[Player].BoxInline.Visible = false
				ESPObjects[Player].Box.Visible = false
				ESPObjects[Player].BarOutline.Visible = false
				ESPObjects[Player].Bar.Visible = false
				ESPObjects[Player].HealthText.Visible = false
				ESPObjects[Player].LookAt.Visible = false
				ESPObjects[Player].NameText.Visible = false
				ESPObjects[Player].DistanceText.Visible = false
				ESPObjects[Player].DirectionLine.Visible = false
				ESPObjects[Player].DirectionDot.Visible = false
			end,

			InvisChams = function()
				ESPObjects[Player].ChamsVisible = false
				for _, Cham in next, ESPObjects[Player].Chams:GetChildren() do
					Cham.Transparency = 1
				end
			end,

			InvisChamsOutline = function()
				ESPObjects[Player].ChamsOutlineVisible = false
				for _, Cham in next, ESPObjects[Player].ChamsOutline:GetChildren() do
					Cham.Transparency = 1
				end
			end,

			InvisRadar = function()
				ESPObjects[Player].RadarVisible = false
				ESPObjects[Player].RadarBlip.Visible = false
			end
		}
	end

	local Character
	local MaxHealth
	Players[Player] = setmetatable({Priority = false, Whitelist = false, LastPosition = V3Empty}, {__index = function(self, index)
		if index == "Character" then
			if Player.ClassName == "Model" then
				Character = Player
			else
				if GameTitle == "Phantom Forces" then
					if Player == LocalPlayer then
						Character = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character
					else
						if NameRequest[Player] and NameRequest[Player].torso then
							Character = NameRequest[Player].torso.Parent
						end
					end
				else
					Character = Player.Character or workspace:FindFirstChild(Player.Name)
				end
			end

			if Character then 
				if Player ~= Client and not library.flags["Aimbot Ignore Spawn Protection"] then
					if GameTitle ~= "Phantom Forces" then
						if Character:FindFirstChild("ForceField") then
							return
						end
					end
				end
				return Character
			end
		else
			if not Character then return (index == "Health" or index == "MaxHealth" and 0) end
			if index == "Health" then
				local Health
				if GameTitle == "Phantom Forces" then
					Health, MaxHealth = HealthRequest:getplayerhealth(Player), 100
				else
					local Humanoid = Character:FindFirstChildOfClass("Humanoid")
					if Humanoid then
						Health, MaxHealth = Humanoid.Health, Humanoid.MaxHealth
					end
				end
				return Health and (Health > 0 and Health) or 0
			elseif index == "MaxHealth" then
				return MaxHealth or 0
			elseif index == "Enemy" then
				if LocalPlayer.Team then
					return LocalPlayer.Team ~= Player.Team
				else
					return true
				end
			end
		end

	end})
end

local function AddTracker(Tracking)
	for _,Player in next, Tracking:GetChildren() do
		Track(Player)
	end

	library:AddConnection(Tracking.ChildAdded, function(Player)
		wait(1)
		if Tracking == PlayerService and library then
			library.options["Player List"]:AddValue(Player.Name)
		end
		Track(Player)
	end)

	library:AddConnection(Tracking.ChildRemoved, function(Player)
		if Players[Player] then
			if table.find(library.options["Player List"].values, Player.Name) then
				if library.hasInit then
					library.options["Player List"]:RemoveValue(Player.Name)
				end
			end
			Players[Player] = nil
			if ESPObjects[Player] then
				ESPObjects[Player].Active = false
				ESPObjects[Player].OOVArrow.Visible = false
				ESPObjects[Player].Invis()
				ESPObjects[Player].InvisChams()
				ESPObjects[Player].InvisChamsOutline()
				ESPObjects[Player].InvisRadar()
			end
		end
	end)
end

library:AddConnection(workspace.ChildAdded, function(Obj)
	if Obj.ClassName == "Camera" then
		Camera = Obj
		WTSP = Obj.WorldToScreenPoint
		WTVP = Obj.WorldToViewportPoint
	end
end)

local Draw = library:Create("Circle", {NumSides = 64, Thickness = 1})

local CrosshairTop = library:Create("Square", {Filled = true})
local CrosshairLeft = library:Create("Square", {Filled = true})
local CrosshairRight = library:Create("Square", {Filled = true})
local CrosshairBottom = library:Create("Square", {Filled = true})

--Aimbot Module
local AimbotRayParams = RaycastParams.new()
AimbotRayParams.FilterType = Enum.RaycastFilterType.Whitelist
AimbotRayParams.IgnoreWater = true

local AimbotHitboxes = {}

library.Aimbot = {
	Target = nil,
	Player = nil,
	Distance = nil,
	Position = nil,
	Position3d = nil,
	LastPosition = V3Empty,
	PositionOffset = nil,
	PositionOffset2d = nil,
	Part = nil,
	OnScreen = false,
	LastVisible = false,
	Step = 0,
	OldStep = 0,
	AutoShootStep = 0
}

library.Aimbot.Reset = function()
	library.Aimbot.Target = nil
	library.Aimbot.Player = nil
	library.Aimbot.Distance = 9e9
	library.Aimbot.Position = nil
	library.Aimbot.Position3d = nil
	library.Aimbot.LastPosition = V3Empty
	library.Aimbot.PositionOffset = nil
	library.Aimbot.PositionOffset2d = nil
	library.Aimbot.Part = nil
	library.Aimbot.OnScreen = false
	library.Aimbot.LastVisible = false
	library.Aimbot.Step = 0
	library.Aimbot.SwitchStep = 0
	library.Aimbot.AutoShootStep = 0
end

library.Aimbot.Check = function(Player, Steady, Step)
	if not Players[Player] then return end
	local Character, ClientChar = Players[Player].Character, Players[Client].Character
	if Players[Player].Health > 0.1 and Character and ClientChar then
		local MX, MY = Mouse.X, Mouse.Y
		if library.flags["Mouse Offset"] then
			MX = MX + library.flags["MXO Amount"]
			MY = MY + library.flags["MYO Amount"]
		end

		local Target
		local OldDist = 9e9
		if library.flags["Aimbot Randomize Hitbox"] then
			if library.Aimbot.Part then
				Target = GetHitboxFromChar(Character, library.Aimbot.Part)
			else
				if not Target then
					local PartName = AimbotHitboxes[math.random(1, #AimbotHitboxes)]
					Target = GetHitboxFromChar(Character, PartName)
					library.Aimbot.Part = PartName
				end
			end
		else
			for i,v in next, library.flags["Aimbot Hitboxes"] do
				if not v then continue end

				local Part = GetHitboxFromChar(Character, i)
				if not Part then continue end

				local ScreenPos = WTSP(Camera, Part.Position)
				local Dist = (Vector2.new(MX, MY) - Vector2.new(ScreenPos.X, ScreenPos.Y)).Magnitude

				if Dist > OldDist then continue end

				OldDist = Dist
				Target = Part			
			end
		end
		if not Target then return end

		local Position, OnScreen = WTSP(Camera, Target.Position)
		if library.flags["Aimbot Mode"] ~= "Silent" then
			if not OnScreen then
				return
			end
		end

		local DistanceFromCharacter = (Target.Position - Camera.CFrame.p).Magnitude
		if DistanceFromCharacter > library.flags["Aimbot Max Distance"] then return end

		local DistanceFromMouse = (Vector2.new(MX, MY) - Vector2.new(Position.X, Position.Y)).Magnitude
		if library.flags["Use FOV"] then
			local FoVSize = library.flags["FOV Size"]
			if DistanceFromMouse > FoVSize + (library.flags["Dynamic FOV"] and ((120 - Camera.FieldOfView) * 4) or FoVSize) then
				return
			end
		end

		local Hit
		if library.flags["Aimbot Vis Check"] or library.flags["Auto Shoot"] or library.flags["Aimbot Prioritize"] then
			Hit = RayCheck(ClientChar, Target.Position, library.flags["Aimbot Max Distance"])
			Hit = Hit and Hit.Instance and FFA(Hit.Instance, Character.Name) == Character
			if Hit then
				if library.flags["Auto Shoot"] then
					library.Aimbot.AutoShootStep = library.Aimbot.AutoShootStep + Step
					if library.Aimbot.AutoShootStep > library.flags["Auto Shoot Interval"] * 0.001 then
						library.Aimbot.AutoShootStep = 0
						if library.flags["Aimbot Mode"] == "Silent" then
							mouse1click()
						else
							AimbotRayParams.FilterDescendantsInstances = {Character}
							local Pos = Camera.CFrame.p
							if workspace:Raycast(Pos, (Camera:ScreenPointToRay(MX, MY, 10000).Origin - Pos).Unit * library.flags["Aimbot Max Distance"], AimbotRayParams) then
								mouse1click()
							end
						end
					end
				end
			else
				if library.flags["Aimbot Vis Check"] then
					return
				end
				if library.flags[GameTitle .. " Wallbang"] and library.flags["Auto Shoot"] then
					library.Aimbot.AutoShootStep = library.Aimbot.AutoShootStep + Step
					if library.Aimbot.AutoShootStep > library.flags["Auto Shoot Interval"] * 0.001 then
						library.Aimbot.AutoShootStep = 0
						mouse1click()
					end
				end
			end
		end

		library.Aimbot.PositionOffset = library.Aimbot.PositionOffset or V3Empty
		library.Aimbot.PositionOffset2d = library.Aimbot.PositionOffset2d or V3Empty
		if library.flags["Velocity Prediction"] then
			local Diff = (Target.Position - library.Aimbot.LastPosition)
			if Diff.Magnitude > (library.flags["Aimbot Mode"] == "Legit" and 0.05 or 0.01) then
				library.Aimbot.PositionOffset = Diff.Unit * library.flags["Velocity Prediction Multiplier"]
				library.Aimbot.PositionOffset2d = WTSP(Camera, Target.Position + library.Aimbot.PositionOffset) - Position
			else
				library.Aimbot.PositionOffset = V3Empty
				library.Aimbot.PositionOffset2d = V3Empty
			end
		end

		if Players[Player].Priority then
			library.Aimbot.Target = Target
			library.Aimbot.Player = Player
			library.Aimbot.Position3d = Target.Position + library.Aimbot.PositionOffset
			library.Aimbot.Position = Position + library.Aimbot.PositionOffset2d
			library.Aimbot.OnScreen = OnScreen
			return true
		end

		if not Steady then
			if library.flags["Aimbot Priority"] == "Mouse" then
				if DistanceFromMouse <= library.Aimbot.Distance then
					library.Aimbot.Distance = DistanceFromMouse
				else
					return
				end
			else
				if DistanceFromCharacter <= library.Aimbot.Distance then
					library.Aimbot.Distance = DistanceFromCharacter
				else
					return
				end
			end
		end

		if library.flags["Aimbot Prioritize"] then
			if not Hit then
				if library.Aimbot.LastVisible then
					return
				end
			end
		end

		library.Aimbot.Target = Target
		library.Aimbot.Player = Player
		library.Aimbot.Position3d = Target.Position + library.Aimbot.PositionOffset
		library.Aimbot.Position = Position + library.Aimbot.PositionOffset2d
		library.Aimbot.OnScreen = OnScreen
		return true
	end
end

library.Aimbot.Run = function(Step)
	if library.Aimbot.Check(library.Aimbot.Player, true, Step) then
		if library.flags["Aimbot Mode"] == "Legit" then
			local AimAtX, AimAtY = library.Aimbot.Position.X, library.Aimbot.Position.Y
			local MX, MY = Mouse.X, Mouse.Y

			if library.flags["Mouse Offset"] then
				MX = MX + library.flags["MXO Amount"]
				MY = MY + library.flags["MYO Amount"]
			end

			AimAtX, AimAtY = AimAtX - MX, AimAtY - MY

			--local MinDist = 10
			--local mouseSens = UserSettings():GetService"UserGameSettings".MouseSensitivity
			local Smoothness = library.flags["Aimbot Smoothness"]
			if library.flags["Aimbot Snap"] then
				if math.abs(AimAtX) >= Smoothness or math.abs(AimAtY) >= Smoothness then
					AimAtX = AimAtX / Smoothness
					AimAtY = AimAtY / Smoothness
				end
			else
				if Smoothness > 1 then
					AimAtX = AimAtX / Smoothness
					AimAtY = AimAtY / Smoothness
				end
			end

			mousemoverel(AimAtX, AimAtY)
		end

		library.Aimbot.LastPosition = library.Aimbot.Target.Position
		if library.flags["Aim Lock"] then
			return
		end
	else
		library.Aimbot.Reset()
	end
	library.Aimbot.SwitchStep = library.Aimbot.SwitchStep + Step
	if library.Aimbot.Player then
		if library.Aimbot.SwitchStep < library.flags["Aimbot Switch Delay"] * 0.001 then return end
	end
	library.Aimbot.SwitchStep = 0
	library.Aimbot.Distance = 9e9
	for Player, Data in next, Players do
		if Player == LocalPlayer or Data.Whitelist then continue end
		if (library.flags["Aimbot At Teammates"] or Data.Enemy) then
			if library.Aimbot.Check(Player, false, 0) and Data.Priority then
				break
			end
		end
	end
end

local AimbotTab = library:AddTab"Aimbot"
local AimbotColumn = AimbotTab:AddColumn()
local AimbotColumn1 = AimbotTab:AddColumn()

local AimbotMain = AimbotColumn:AddSection"Main"
local AimbotTargeting = AimbotColumn:AddSection"Targeting"
local AimbotMisc = AimbotColumn1:AddSection"Misc"
local TriggerbotMain = AimbotColumn1:AddSection"Triggerbot"

AimbotMain:AddToggle({text = "Enabled", flag = "Aimbot", callback = function(State)
	Draw.Visible = State and library.flags["Use FOV"] and library.flags["Draw Circle"]
	if library.flags["Aimbot Always On"] then
		library.options["Aimbot Always On"]:SetState(true)
	end
end}):AddList({text = "Mode", flag = "Aimbot Mode", values = {"Legit", "Rage"}, callback = function(Value)
	library.options["Aimbot Smoothness"].main.Visible = Value == "Legit"
	library.options["Aimbot Snap"].main.Visible = Value == "Legit"
	library.options["Mouse Offset"].main.Visible = Value == "Legit"
	library.options["MXO Amount"].main.Visible = Value == "Legit" and library.flags["Mouse Offset"]
	library.options["MYO Amount"].main.Visible = Value == "Legit" and library.flags["Mouse Offset"]
end}):AddBind({flag = "Aimbot Key", mode = "hold", callback = function(Ended, Step)
	if library.flags["Aimbot"] and not library.flags["Aimbot Always On"] then
		if library.open or Ended then
			library.Aimbot.Reset()
		else
			library.Aimbot.Step = library.Aimbot.Step + Step
			if library.Aimbot.Step > 0.016 then
				library.Aimbot.Step = 0
				library.Aimbot.Run(Step)
			end
		end
	end
end})
AimbotMain:AddToggle({text = "Always On", flag = "Aimbot Always On", callback = function(State)
	if not State then return end

	library:AddConnection(runService.RenderStepped, "Aimbot", function(Step)
		if library.open then library.Aimbot.Reset() return end
		if library.flags["Aimbot"] and library.flags["Aimbot Always On"] then
			library.Aimbot.Step = library.Aimbot.Step + Step
			if library.Aimbot.Step > 0.016 then
				library.Aimbot.Step = 0
				library.Aimbot.Run(Step)
			end
		else
			library.connections["Aimbot"]:Disconnect()
			library.Aimbot.Reset()
		end
	end)
end})
AimbotMain:AddSlider({text = "Smoothness", flag = "Aimbot Smoothness", min = 1, max = 40})
AimbotMain:AddToggle({text = "Velocity Prediction", state = false, callback = function(State)
	library.options["Velocity Prediction Multiplier"].main.Visible = State
end})
AimbotMain:AddSlider({text = "Multiplier", textpos = 2, flag = "Velocity Prediction Multiplier", min = 1, max = 5, float = 0.1})
--AimbotMain:AddSlider({text = "Prediction Interval", min = 1, max = 1000})
AimbotMain:AddToggle({text = "Snap Near Target", flag = "Aimbot Snap"})--:AddSlider({text = "Snap Range" flag = "Aimbot Snap Range", min = 5, max = 50})
--AimbotMain:AddToggle({text = "Curve", flag = "Aimbot Curve"}):AddSlider({text = "Size", flag = "Aimbot Curve Size", min = 1, max = 50})
AimbotMain:AddToggle({text = "Lock Target", flag = "Aim Lock"})
AimbotMain:AddToggle({text = "Auto Shoot", callback = function(State)
	library.options["Auto Shoot Interval"].main.Visible = State
	if State then
		library.options["Triggerbot"]:SetState()
	end
end})
AimbotMain:AddSlider({text = "Interval", textpos = 2, flag = "Auto Shoot Interval", min = 16, max = 1000, suffix = "ms"})
--AimbotMain:AddToggle({text = "Randomization"})
--AimbotMain:AddSlider({text = "Amount", flag = "Randomize Amount", min = 40, max = 100})
AimbotMain:AddSlider({text = "Target Switch Delay", flag = "Aimbot Switch Delay", min = 16, max = 500, suffix = "ms"})
AimbotMain:AddToggle({text = "Ignore Spawn Protection", flag = "Aimbot Ignore Spawn Protection"})

AimbotTargeting:AddToggle({text = "Visible Only", flag = "Aimbot Vis Check", callback = function(State)
	if State then
		--library.options["Aimbot Prioritize"]:SetState()
	end
end})
--AimbotTargeting:AddToggle({text = "Prioritize Visible", flag = "Aimbot Prioritize", callback = function(State)
--	if State then
--		library.options["Aimbot Vis Check"]:SetState()
--	end
--end})
AimbotTargeting:AddToggle({text = "At Teammates", flag = "Aimbot At Teammates"})
AimbotTargeting:AddList({text = "Priority", flag = "Aimbot Priority", values = {"Mouse", "Distance"}})
AimbotTargeting:AddList({text = "Hitboxes", flag = "Aimbot Hitboxes", max = 6, multiselect = true, values = UseBodyParts, callback = function(Values)
	for i,v in next, Values do
		if v then
			if table.find(AimbotHitboxes, i) then continue end
			table.insert(AimbotHitboxes, i)
		else
			local pos = table.find(AimbotHitboxes, i)
			if not pos then continue end
			table.remove(AimbotHitboxes, pos)
		end
	end
end})
AimbotTargeting:AddToggle({text = "Randomize Hitbox", flag = "Aimbot Randomize Hitbox"})

AimbotTargeting:AddSlider({text = "Max Distance", flag = "Aimbot Max Distance", value = 10000, min = 0, max = 10000})

AimbotMisc:AddToggle({text = "Mouse Offset", callback = function(State)
	if library.flags["Aimbot Mode"] == "Legit" then
		library.options["MXO Amount"].main.Visible = State
		library.options["MYO Amount"].main.Visible = State
	end
end})
AimbotMisc:AddSlider({text = "X", textpos = 2, flag = "MXO Amount", min = -100, max = 100, value = 0})
AimbotMisc:AddSlider({text = "Y", textpos = 2, flag = "MYO Amount", min = -100, max = 100, value = 0})
AimbotMisc:AddToggle({text = "Highlight Target"}):AddColor({flag = "Aimbot Highlight Color", color = Color3.fromRGB(240, 20, 255)})
AimbotMisc:AddToggle({text = "Use FOV", callback = function(State) Draw.Visible = State and library.flags["Aimbot"] and library.flags["Draw Circle"] end}):AddSlider({text = "Size", flag = "FOV Size", min = 10, max = 300, callback = function(Value) if not library.flags["Dynamic FOV"] then Draw.Radius = Value * 2 end end})
AimbotMisc:AddToggle({text = "Dynamic", flag = "Dynamic FOV", callback = function(State)
	if State then
		library:AddConnection(runService.RenderStepped, "Dynamic FOV", function()
			if library and library.flags["Dynamic FOV"] then
				Draw.Radius = library.flags["FOV Size"] + ((120 - Camera.FieldOfView) * 4)
			else
				library.connections["Dynamic FOV"]:Disconnect()
				Draw.Radius = library.flags["FOV Size"] * 2
			end
		end)
	end
end})
AimbotMisc:AddToggle({text = "Draw Circle", callback = function(State) Draw.Visible = State and library.flags["Aimbot"] and library.flags["Use FOV"] end}):AddColor({flag = "FOV Circle Color", Color3.fromRGB(240, 20, 255), trans = 1, callback = function(Color) Draw.Color = Color end, calltrans = function(Value) Draw.Transparency = Value end})
AimbotMisc:AddToggle({text = "Fill", flag = "FOV Fill", callback = function(State) Draw.Filled = State end})


--Esp module

local VisualsTab = library:AddTab"Visuals"
local VisualsColumn = VisualsTab:AddColumn()
local VisualsColumn1 = VisualsTab:AddColumn()

local HealthBarAddon = Vector2.new(3)
local PlayerEspSection = VisualsColumn:AddSection"ESP"
local OldStep = 0
PlayerEspSection:AddToggle({text = "Enabled", flag = "Esp Enabled", callback = function(State)
	if not State then
		--RadarWindow.Visible = false
		if library.connections["Player ESP"] then
			library.connections["Player ESP"]:Disconnect()
			for _, v in next, ESPObjects do
				v.OOVArrow.Visible = false
				v.Invis()
				v.InvisChams()
				v.InvisChamsOutline()
			end
		end

		return
	end

	--RadarWindow.Visible = library.flags["Radar Enabled"]
	library:AddConnection(runService.RenderStepped, "Player ESP", function(Step)
		OldStep = OldStep + Step
		if OldStep < 0.016 then return end
		OldStep = 0

		for Player, Data in next, Players do
			if Player == Client then continue end
			local Objects = ESPObjects[Player]
			local Character = Data.Character

			local Show
			local Team = Data.Enemy
			if Data.Whitelist then
				Show = library.flags["Esp Show Whitelisted"]
			else
				Show = Data.Priority or library.flags["Esp Enabled For"][Team and "Enemies" or "Teammates"]
			end

			if Show and Character then
				local Health = Data.Health

				if Health > 0.1 then
					Team = Team and "Enemy" or "Team"

					local Pos, Size = GBB(Character)
					local RootPart = FFC(Character, "HumanoidRootPart")
					if RootPart and (Pos.Position - RootPart.Position).Magnitude > 5 then
						Pos = RootPart.CFrame
					end

					local Distance = (Camera.CFrame.p - Pos.Position).Magnitude
					if Distance < library.flags["Esp Max Distance"] then

						local ScreenPosition, OnScreen = WTVP(Camera, Pos.Position)

						local ClientChar = Players[Client].Character
						local Ignores = {Camera, ClientChar}
						if GameTitle == "Bad Business" then
							Ignores[3] = FFC(workspace, "Arms")
							--Ignores[4] = ClientChar and FFC(workspace, ClientChar.Backpack.Equipped.Value.Name)
							Ignores[5] = workspace.NonProjectileGeometry
							Ignores[6] = workspace.Effects
							Ignores[7] = workspace.Spawns
							Ignores[8] = workspace.Ragdolls
							Ignores[9] = workspace.Gameplay
							Ignores[10] = workspace.Throwables
						elseif GameTitle == "Phantom Forces" then
							Ignores[3] = workspace.Ignore
						end
						local Hit = RayCheck(ClientChar, Pos.Position, Distance)
						Hit = Hit and Hit.Instance and FFA(Hit.Instance, Character.Name)
						Hit = Hit and Hit == Character
						local Occluded = Hit and " " or " Occluded "

						local Visible = true
						if library.flags[Team .. " Visible Only"] then
							Visible = Hit ~= nil
						end

						local Color = (library.flags["Highlight Target"] and library.Aimbot.Player == Player and library.flags["Aimbot Highlight Color"])
						Color = Color or (Data.Priority and library.flags["Player Priority Color"] or Data.Whitelist and library.flags["Player Whitelist Color"])
						Color = Color or (GameTitle == "KAT" and (workspace.Gamemode.Value == "Murder" and ((FFC(Player.Backpack, "Knife") or FFC(Character, "Knife")) and library.flags[GameTitle .. " Murderer Color"] or (FFC(Player.Backpack, "Revolver") or FFC(Character, "Revolver")) or library.flags[GameTitle .. " Sheriff Color"])) or GameTitle == "MURDER" and ((Player.Status.Role.Value == "Murderer" and library.flags[GameTitle .. " Murderer Color"]) or (Player.Status.HasRevolver.Value and library.flags[GameTitle .. " Detective Color"])) or GameTitle == "Arsenal" and Player.NRPBS.EquippedTool.Value:find("Golden") and library.flags[GameTitle .. " Golden Weapon Color"])

						--
						if library.flags["Radar Enabled"] and Distance < RadarWindow.Radius then
							Objects.RadarBlip.Visible = true

							local RelativePos = Camera.CFrame:Inverse() * Pos.Position
							local Middle = Camera.ViewportSize / 2
							local Degrees = math.deg(math.atan2(-RelativePos.Y, RelativePos.X)) * math.pi / 180
							local EndPos = Middle + (Vector2.new(math.cos(Degrees), math.sin(Degrees)) * Distance)

							Objects.RadarBlip.Position = EndPos
							Objects.RadarBlip.Color = Color or Color3.new(1, 1, 1)

							if not Objects.Visible then
								continue
							end
						else
							Objects.RadarBlip.Visible = false
						end
						--]]

						if Visible then
							local Transparency = (library.Aimbot.Player == Player or Data.Priority) and 1 or 1 - (Distance / library.flags["Esp Max Distance"])

							if OnScreen then
								Objects.Visible = true
								Objects.OOVArrow.Visible = false

								--local xMin, yMin = 9e9, 9e9
								--local xMax, yMax = 0, 0

								local BoxColor = Color or library.flags[Team .. Occluded .. "Box Color"]
								local TextColor = Color or library.flags[Team .. Occluded .. "Info Color"]
								local LookColor = Color or library.flags[Team .. Occluded .. "Look Color"]
								local ChamsColor = Color or library.flags[Team .. Occluded .. "Chams Color"]
								local ChamsOutlineColor = Color or library.flags[Team .. Occluded .. "Chams Outline Color"]
								local DirectionColor = Color or library.flags[Team .. Occluded .. "Direction Color"]

								--Chams
								if library.flags[Team .. " Chams Enabled"] and Distance < 600 then
									Objects.ChamsVisible = true
									Objects.Chams.Parent = library.base
									Objects.ChamsStep = Objects.ChamsStep + Step
									if Objects.ChamsStep > 0.2 then
										Objects.ChamsStep = 0
										for _, PartName in next, UseBodyParts do
											local Part = FFC((GameTitle == "Bad Business" and Character.Body or Character), PartName, true)
											if Part then
												local Cham = FFC(Objects.Chams, PartName) or (function()
													return library:Create("BoxHandleAdornment", {
														Name = PartName,
														AlwaysOnTop = true,
														ZIndex = 2,
														Parent = Objects.Chams
													})
												end)()

												Cham.Size = Part.Size
												Cham.Adornee = Part
												Cham.Transparency = library.flags[Team .. " Chams Transparency"]
												Cham.Color3 = ChamsColor

												if library.flags[Team .. " Chams Outline"] then
													Objects.ChamsOutlineVisible = true
													Objects.ChamsOutline.Parent = library.base
													Cham = FFC(Objects.ChamsOutline, PartName) or (function()
														return library:Create("BoxHandleAdornment", {
															Name = PartName,
															AlwaysOnTop = true,
															ZIndex = 1,
															Parent = Objects.ChamsOutline
														})
													end)()

													Cham.Size = Part.Size * 1.2
													Cham.Adornee = Part
													Cham.Transparency = library.flags[Team .. " Chams Transparency"]
													Cham.Color3 = ChamsOutlineColor
												else
													if Objects.ChamsOutlineVisible then
														Objects.InvisChamsOutline()
													end
												end
											else
												local Cham = FFC(Objects.Chams, PartName)
												if Cham then
													Cham.Visible = false
												end
												Cham = FFC(Objects.ChamsOutline, PartName)
												if Cham then
													Cham.Visible = true
												end
											end
										end
									end
								else
									if Objects.ChamsVisible then
										Objects.InvisChams()
										Objects.InvisChamsOutline()
									end
								end

								--ESP
								local Height = (Camera.CFrame - Camera.CFrame.p) * Vector3.new(0, (math.clamp(Size.Y, 1, 10) + 0.5) / 2, 0)
								Height = math.abs(WTSP(Camera, Pos.Position + Height).Y - WTSP(Camera, Pos.Position - Height).Y)
								--local ViewportSize = Camera.ViewportSize
								--local Size = ((ViewportSize.X + ViewportSize.Y) / Distance) * (1 - (Camera.FieldOfView / 200))
								Size = library.round(Vector2.new(Height / 2, Height))
								local Position = library.round(Vector2.new(ScreenPosition.X, ScreenPosition.Y) - (Size / 2))

								if library.flags[Team .. " Box Enabled"] then
									Objects.Box.Visible = true
									Objects.Box.Color = BoxColor
									Objects.Box.Size = Size
									Objects.Box.Position = Position
									Objects.Box.Transparency = Transparency

									Objects.BoxOutline.Visible = true
									Objects.BoxOutline.Size = Size + V222
									Objects.BoxOutline.Position = Position - V211
									Objects.BoxOutline.Transparency = Transparency

									Objects.BoxInline.Visible = true
									Objects.BoxInline.Size = Size - V222
									Objects.BoxInline.Position = Position + V211
									Objects.BoxInline.Transparency = Transparency
								else
									Objects.Box.Visible = false
									Objects.BoxOutline.Visible = false
									Objects.BoxInline.Visible = false
								end

								if library.flags[Team .. " Health Enabled"] then
									local MaxHealth = Data.MaxHealth
									local HealthPerc = Health / MaxHealth
									local Position = Position - HealthBarAddon
									local Size = Vector2.new(1, Size.Y)

									Objects.BarOutline.Visible = true
									Objects.BarOutline.Position = Position - V211
									Objects.BarOutline.Size = Size + V222
									Objects.BarOutline.Transparency = Transparency

									Objects.Bar.Visible = true
									Objects.Bar.Color = Color3.new(1 - HealthPerc, HealthPerc, 0.2)
									Objects.Bar.Position = Position + Vector2.new(0, Size.Y)
									Objects.Bar.Size = Vector2.new(1, -Size.Y * HealthPerc)
									Objects.Bar.Transparency = Transparency

									Objects.HealthText.Visible = HealthPerc < 0.99
									Objects.HealthText.Position = Objects.Bar.Position + Objects.Bar.Size - Vector2.new(0, 7)
									Objects.HealthText.Text = tostring(library.round(Health)) or ""
									Objects.HealthText.Transparency = Transparency
								else
									Objects.BarOutline.Visible = false
									Objects.Bar.Visible = false
									Objects.HealthText.Visible = false
								end

								if library.flags[Team .. " Info"] then
									Objects.NameText.Visible = true
									Objects.NameText.Text = GameTitle == "Blackhawk Rescue Mission" and (Player.ClassName == "Model" and (Player.Name:find("Infantry") and "Infantry" or "Civilian")) or Player.Name
									Objects.NameText.Position = Position + Vector2.new(Size.X / 2, -Objects.NameText.TextBounds.Y - 1)
									Objects.NameText.Color = TextColor
									Objects.NameText.Transparency = Transparency

									Objects.DistanceText.Visible = true
									Objects.DistanceText.Text = "[" .. library.round(Distance) .. "m]"
									Objects.DistanceText.Position = Position + Vector2.new(Size.X / 2, Size.Y + 2)
									Objects.DistanceText.Color = TextColor
									Objects.DistanceText.Transparency = Transparency
								else
									Objects.NameText.Visible = false
									Objects.DistanceText.Visible = false
								end

								if library.flags[Team .. " Look Enabled"] then
									HeadPosition = GetHitboxFromChar(Character, "Head")
									if HeadPosition then
										Objects.LookAt.Visible = true
										HeadPosition1 = WTVP(Camera, HeadPosition.Position)
										local To = WTVP(Camera, HeadPosition.Position + (HeadPosition.CFrame.LookVector * 8))

										Objects.LookAt.From = Vector2.new(HeadPosition1.X, HeadPosition1.Y)
										Objects.LookAt.To = Vector2.new(To.X, To.Y)
										Objects.LookAt.Color = LookColor
										Objects.LookAt.Transparency = Transparency
									else
										Objects.LookAt.Visible = false
									end
								else
									Objects.LookAt.Visible = false
								end

								if library.flags[Team .. " Direction Enabled"] then
									Objects.DirectionLine.Visible = true

									Position = Position + (Size / 2)
									local PositionOffset2d = V2Empty
									local Diff = (Pos.Position - Data.LastPosition)
									if Diff.Magnitude > 0.01 then
										PositionOffset2d = library.round(Vector2.new(WTSP(Camera, Pos.Position + (Diff.Unit * 4)).X, Position.Y) - Position)
									end

									Objects.DirectionLine.From = Position
									Objects.DirectionLine.To = Position + PositionOffset2d
									Objects.DirectionLine.Color = DirectionColor
									Objects.DirectionLine.Transparency = Transparency

									if Distance < 600 then
										Objects.DirectionDot.Visible = true
										Objects.DirectionDot.Position = Objects.DirectionLine.To - V233
										Objects.DirectionDot.Color = DirectionColor
										Objects.DirectionDot.Transparency = Transparency
									else
										Objects.DirectionDot.Visible = false
									end
								else
									Objects.DirectionLine.Visible = false
									Objects.DirectionDot.Visible = false
								end

								Data.LastPosition = Pos.Position
								continue
							end
							if library.flags[Team .. " OOV Arrows"] then
								Objects.OOVArrow.Visible = true
								Objects.OOVArrow.Color = Color or library.flags[Team .. Occluded .. "OOV Arrows Color"]

								local RelativePos = Camera.CFrame:Inverse() * Pos.Position
								local Middle = Camera.ViewportSize / 2
								local Degrees = math.deg(math.atan2(-RelativePos.Y, RelativePos.X)) * math.pi / 180
								local EndPos = Middle + (Vector2.new(math.cos(Degrees), math.sin(Degrees)) * library.flags[Team .. " Out Of View Scale"])

								Objects.OOVArrow.PointB = EndPos + (-(Middle - EndPos).Unit * 15)
								Objects.OOVArrow.PointA = EndPos
								Objects.OOVArrow.PointC = EndPos
								Objects.OOVArrow.Transparency = Transparency

								if not Objects.Visible then
									continue
								end
							end
						end
					end
				end
			end

			Objects.OOVArrow.Visible = false
			if Objects.Visible then
				Objects.Invis()
				Objects.InvisChams()
				Objects.InvisChamsOutline()
				Objects.InvisRadar()
			end
		end
	end)
end}):AddList({flag = "Esp Enabled For", values = {"Enemies", "Teammates"}, multiselect = true}):AddBind({callback = function()
	library.options["Esp Enabled"]:SetState(not library.flags["Esp Enabled"])
end})
PlayerEspSection:AddSlider({text = "Max Distance", textpos = 2, flag = "Esp Max Distance", value = 10000, min = 0, max = 10000})
PlayerEspSection:AddToggle({text = "Show Whitelisted Players", flag = "Esp Show Whitelisted"})

--PlayerEspSection:AddDivider"Radar"
--PlayerEspSection:AddToggle({text = "Enabled", flag = "Radar Enabled", callback = function(State)
--	RadarWindow.Visible = State and library.flags["Esp Enabled"]
--end})
local VisualsWorld = VisualsColumn:AddSection"Lighting"
VisualsWorld:AddToggle({text = "Clock Time"}):AddSlider({flag = "Clock Time Amount", min = 0, max = 24, float = 0.1, value = LightingSpoof.ClockTime})
VisualsWorld:AddToggle({text = "Brightness"}):AddSlider({flag = "Brightness Amount", min = 0, max = 100, float = 0.1, value = LightingSpoof.Brightness})
VisualsWorld:AddToggle({text = "Ambient", flag = "Ambient Lighting"}):AddColor({flag = "Outdoor Ambient", color = LightingSpoof.OutdoorAmbient}):AddColor({flag = "Indoor Ambient", color = LightingSpoof.Ambient})
VisualsWorld:AddToggle({text = "Color Shift"}):AddColor({flag = "Color Shift Top", color = LightingSpoof.ColorShift_Top})

local VisualsMiscSection = VisualsColumn:AddSection"Misc"

VisualsMiscSection:AddToggle({text = "FOV Changer", callback = function(State)
	library.options["Dynamic Custom FOV"].main.Visible = State
end}):AddSlider({flag = "FOV Amount", min = 0, max = 120})
VisualsMiscSection:AddToggle({text = "Dynamic", flag = "Dynamic Custom FOV"})
VisualsMiscSection:AddToggle({text = "Zoom", flag = "FOV Zoom Enabled"}):AddSlider({flag = "FOV Zoom Amount", min = 5, max = 50}):AddBind({flag = "FOV Zoom Key", mode = "hold"})

VisualsMiscSection:AddDivider"Crosshair"
VisualsMiscSection:AddToggle({text = "Enabled", flag = "Crosshair Enabled", callback = function(State)
	library.options["Crosshair T-Shape"].main.Visible = State
	library.options["Crosshair Size"].main.Visible = State
	library.options["Crosshair Gap"].main.Visible = State
	library.options["Crosshair Thickness"].main.Visible = State
	CrosshairTop.Visible = State and not library.flags["Crosshair T-Shape"]
	CrosshairLeft.Visible = State
	CrosshairRight.Visible = State
	CrosshairBottom.Visible = State
end}):AddColor({callback = function(Color)
	CrosshairTop.Color = Color
	CrosshairLeft.Color = Color
	CrosshairRight.Color = Color
	CrosshairBottom.Color = Color
end, trans = 1, calltrans = function(Transparency)
	CrosshairTop.Transparency = Transparency
	CrosshairLeft.Transparency = Transparency
	CrosshairRight.Transparency = Transparency
	CrosshairBottom.Transparency = Transparency
end})
VisualsMiscSection:AddToggle({text = "T-Shape", flag = "Crosshair T-Shape", callback = function(State)
	CrosshairTop.Visible = library.flags["Crosshair Enabled"] and not State
end})
VisualsMiscSection:AddSlider({text = "Size", textpos = 2, flag = "Crosshair Size", min = 1, max = 500, callback = function(Value)
	local Thickness = library.flags["Crosshair Thickness"]
	CrosshairTop.Size = Vector2.new(Thickness, -Value)
	CrosshairLeft.Size = Vector2.new(-Value, Thickness)
	CrosshairRight.Size = Vector2.new(Value, Thickness)
	CrosshairBottom.Size = Vector2.new(Thickness, Value)
end})
VisualsMiscSection:AddSlider({text = "Gap", textpos = 2, flag = "Crosshair Gap", min = 0, max = 20, float = 0.5})
VisualsMiscSection:AddSlider({text = "Thickness", textpos = 2, flag = "Crosshair Thickness", min = 1, max = 20, float = 0.5, callback = function(Value)
	local Size = library.flags["Crosshair Size"]
	CrosshairTop.Size = Vector2.new(Value, -Size)
	CrosshairLeft.Size = Vector2.new(-Size, Value)
	CrosshairRight.Size = Vector2.new(Size, Value)
	CrosshairBottom.Size = Vector2.new(Value, Size)
end})

local PlayerEspEnemySection = VisualsColumn1:AddSection"Enemies"
PlayerEspEnemySection:AddToggle({text = "Visible Only", flag = "Enemy Visible Only"})

PlayerEspEnemySection:AddToggle({text = "Box", flag = "Enemy Box Enabled"}):AddColor({flag = "Enemy Occluded Box Color", color = Color3.fromRGB(245, 120, 65)}):AddColor({flag = "Enemy Box Color", color = Color3.fromRGB(240, 40, 50)})

PlayerEspEnemySection:AddToggle({text = "Info", flag = "Enemy Info"}):AddColor({flag = "Enemy Occluded Info Color", color = Color3.fromRGB(255, 140, 30)}):AddColor({flag = "Enemy Info Color", color = Color3.fromRGB(240, 30, 40)})

PlayerEspEnemySection:AddToggle({text = "Health", flag = "Enemy Health Enabled"})

PlayerEspEnemySection:AddToggle({text = "Out Of View", flag = "Enemy OOV Arrows", callback = function(State)
	library.options["Enemy Out Of View Scale"].main.Visible = State
end}):AddColor({flag = "Enemy Occluded OOV Arrows Color", color = Color3.fromRGB(255, 140, 30)}):AddColor({flag = "Enemy OOV Arrows Color", color = Color3.fromRGB(240, 30, 40)})
PlayerEspEnemySection:AddSlider({text = "Scale", textpos = 2, flag = "Enemy Out Of View Scale", min = 100, max = 500})

PlayerEspEnemySection:AddToggle({text = "Look Direction", flag = "Enemy Look Enabled"}):AddColor({flag = "Enemy Occluded Look Color", color = Color3.fromRGB(240, 120, 80)}):AddColor({flag = "Enemy Look Color", color = Color3.fromRGB(240, 60, 20)})

--PlayerEspEnemySection:AddToggle({text = "Velocity", flag = "Enemy Direction Enabled"}):AddColor({flag = "Enemy Occluded Direction Color", color = Color3.fromRGB(240, 120, 80)}):AddColor({flag = "Enemy Direction Color", color = Color3.fromRGB(240, 60, 20)})

PlayerEspEnemySection:AddToggle({text = "Chams", flag = "Enemy Chams Enabled"}):AddSlider({text = "Transparency", flag = "Enemy Chams Transparency", min = 0, max = 1, float = 0.1}):AddColor({flag = "Enemy Occluded Chams Color", color = Color3.fromRGB(245, 120, 65)}):AddColor({flag = "Enemy Chams Color", color = Color3.fromRGB(240, 40, 50)})
PlayerEspEnemySection:AddToggle({text = "Outline", flag = "Enemy Chams Outline"}):AddColor({flag = "Enemy Occluded Chams Outline Color", color = Color3.fromRGB(245, 120, 65)}):AddColor({flag = "Enemy Chams Outline Color", color = Color3.fromRGB(240, 40, 50)})

local PlayerEspTeamSection = VisualsColumn1:AddSection"Teammates"
PlayerEspTeamSection:AddToggle({text = "Visible Only", flag = "Team Visible Only"})

PlayerEspTeamSection:AddToggle({text = "Box", flag = "Team Box Enabled"}):AddColor({flag = "Team Occluded Box Color", color = Color3.fromRGB(20, 50, 255)}):AddColor({flag = "Team Box Color", color = Color3.fromRGB(40, 255, 180)})

PlayerEspTeamSection:AddToggle({text = "Info", flag = "Team Info"}):AddColor({flag = "Team Occluded Info Color", color = Color3.fromRGB(20, 120, 255)}):AddColor({flag = "Team Info Color", color = Color3.fromRGB(40, 240, 130)})

PlayerEspTeamSection:AddToggle({text = "Health", flag = "Team Health Enabled"})

PlayerEspTeamSection:AddToggle({text = "Out Of View", flag = "Team OOV Arrows", callback = function(State)
	library.options["Team Out Of View Scale"].main.Visible = State
end}):AddColor({flag = "Team Occluded OOV Arrows Color", color = Color3.fromRGB(20, 120, 255)}):AddColor({flag = "Team OOV Arrows Color", color = Color3.fromRGB(40, 240, 130)})
PlayerEspTeamSection:AddSlider({text = "Scale", textpos = 2, flag = "Team Out Of View Scale", min = 100, max = 500})

PlayerEspTeamSection:AddToggle({text = "Look Direction", flag = "Team Look Enabled"}):AddColor({flag = "Team Occluded Look Color", color = Color3.fromRGB(40, 80, 230)}):AddColor({flag = "Team Look Color", color = Color3.fromRGB(40, 250, 100)})

--PlayerEspTeamSection:AddToggle({text = "Velocity", flag = "Team Direction Enabled"}):AddColor({flag = "Team Occluded Direction Color", color = Color3.fromRGB(240, 120, 80)}):AddColor({flag = "Team Direction Color", color = Color3.fromRGB(240, 60, 20)})

PlayerEspTeamSection:AddToggle({text = "Chams", flag = "Team Chams Enabled"}):AddSlider({text = "Transparency", flag = "Team Chams Transparency", min = 0, max = 1, float = 0.1}):AddColor({flag = "Team Occluded Chams Color", color = Color3.fromRGB(20, 50, 255)}):AddColor({flag = "Team Chams Color", color = Color3.fromRGB(40, 255, 180)})
PlayerEspTeamSection:AddToggle({text = "Outline", flag = "Team Chams Outline"}):AddColor({flag = "Team Occluded Chams Outline Color", color = Color3.fromRGB(80, 100, 255)}):AddColor({flag = "Team Chams Outline Color", color = Color3.fromRGB(80, 255, 200)})





local __namecall
__namecall = hookmetamethod(game, "__namecall", function(...)
    -- // Vars
    local args = {...}
    local self = args[1]
    local method = getnamecallmethod()

    -- // Check if it is the remote
    if (self == CheckSpeed and method == "FireServer") then
        if SpeedHack then   
            return Library.flags["Speed Hack Speed"],Library.flags["Speed Hack Speed"]
        elseif CFly then
            return Library.flags["Fly Speed"],Library.flags["Fly Speed"]
        end
    end

    -- // Return default
    return __namecall(...)
end)

CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
SPEED2 = 1
function sFLY()
    repeat wait() until LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    local hrp = LocalPlayer.Character.HumanoidRootPart
   
	local SPEED = 0
    local function fly2()
        
		local BV = Instance.new('BodyVelocity')
		BV.Name = "RollVelocity"
        BV.P = math.huge
		BV.Parent = hrp
		BV.Velocity = Vector3.new(0,0,0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		
		task.spawn(function()
			repeat wait()
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = Library.flags["Fly Speed"]
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
			until not CFly
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BV:Destroy()
		end)
    end
    if UIS:IsKeyDown("W") then CONTROL.F = (SPEED2)
    elseif UIS:IsKeyDown("S") then CONTROL.B = - (SPEED2)
    elseif UIS:IsKeyDown("A") then CONTROL.L = - (SPEED2)
    elseif UIS:IsKeyDown("D") then CONTROL.R = (SPEED2) end
    flyKeyDown = mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (SPEED2)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (SPEED2)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (SPEED2)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (SPEED2)
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		end
	end)
    fly2()
end

function Unfly()
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end


function CancelAttack()
    local args = {
        [1] = "Down",
        [2] = false
    }
    LocalPlayer.Character.CharacterHandler.M2:FireServer(unpack(args))
    
    local args = {
        [1] = "Up"
    }

    LocalPlayer.Character.CharacterHandler.M2:FireServer(unpack(args))
end

function Parry()
    local args = {
        [1] = "Down"
    }
    LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    
    for i = 1, 10 do
        task.wait()
        local args = {
            [1] = "Hold"
        }
        LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    end    
    
    local args = {
        [1] = "Up"
    }
    LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
end

function Block(attack)
    
    local args = {
        [1] = "Down"
    }
    LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    
    local st = os.clock()
    
    while os.clock() - st < .3 do
        local args = {
            [1] = "Hold"
        }
        LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
        task.wait()
    end
    task.wait()
    local args = {
        [1] = "Up"
    }
    LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    
end

function swing()
    local args = {
        [1] = "Down",
        [2] = false
    }
    LocalPlayer.Character.CharacterHandler.M1:FireServer(unpack(args))
end


function Roll()
    keytap(0x51) -- change to characterhandler.q?
end

function DefensiveReaction(attack, FeintRoll)
    if attack[3] == "Parry" then
        if game.ReplicatedStorage.CharacterData[LocalPlayer.Name].StatusFolder:FindFirstChild("ParryCD") ~= nil then
            if attack[1] == "Critical" or attack[1] == "StrongLeft" then task.wait(.1) Roll() else Block(attack) end
        else
            Parry()
        end
    elseif attack[3] == "Roll" then
        Roll()
    end
end

function ConnectListeners(character)
    print("Connecting to", character.Name)
    humanoid = character.Humanoid
    animator = humanoid.Animator
    
    animator.AnimationPlayed:Connect(function(animtrack)
        --
        if AutoParry == false then return end
        if not AutoParrylist[animtrack.Animation.AnimationId] then return end -- check on why parry anim slips past
        
        local range = 25
        if AutoParrylist[animtrack.Animation.AnimationId][4] == "Ranged" then range = 30 elseif AutoParrylist[animtrack.Animation.AnimationId][4] == "Far" then range = 60 elseif AutoParrylist[animtrack.Animation.AnimationId][4] == "MONKE" then range = 200 end 
        if (LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude > range then return end
        
        if (character:FindFirstChild("HumanoidRootPart") ~= nil and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil) and OpFacing then
            local opToChar = (LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Unit
            local charLook = character.HumanoidRootPart.CFrame.LookVector
    
            local dotProduct = opToChar:Dot(charLook)
            if dotProduct < 0 then return end
        end
        if (character:FindFirstChild("HumanoidRootPart") ~= nil and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil) and FacingOp then
            local charToOp = (character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Unit
            local opLook = LocalPlayer.character.HumanoidRootPart.CFrame.LookVector
    
            local dotProduct = charToOp:Dot(opLook)
            if dotProduct < 0 then return end
        end
        
        local function potentialfeint(child)
            if child.Name == "FeintCD" then
                OpponentFeinted = true
                if FeintRoll then 
                    task.wait(.1)
                    Roll()
                end
            end
        end
        connection = game.ReplicatedStorage.CharacterData[(game.Players:GetPlayerFromCharacter(character)).Name].Cooldowns.ChildAdded:Connect(potentialfeint)
        
        print(table.find(AutoParryWhitelist, tostring(character)))
        if table.find(AutoParryWhitelist, tostring(character)) then
            return
        end
        
        
        
        --
        if game.ReplicatedStorage.CharacterData[character.Name].StatusFolder:FindFirstChild("Hitting") ~= nil then
            CancelAttack()
        end
        --[[
        if AutoParrylist[animtrack.Animation.AnimationId][2] - (0.001*game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() + 0.005) > 0.3 and game.ReplicatedStorage.CharacterData[game.Players.LocalPlayer.Name].StatusFolder:FindFirstChild("ParryCD") ~= nil then
            DefensiveReaction()
        end]]
        task.wait(AutoParrylist[animtrack.Animation.AnimationId][2] - (0.001*game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() + 0.005)) -- multiply by animtrack.speed?

        if not OpponentFeinted then DefensiveReaction(AutoParrylist[animtrack.Animation.AnimationId]) end
        connection:Disconnect()
        OpponentFeinted = false
    end)
end

-- // Initiate Script

--- LIBRARY
local Tab = Library:AddTab("fakewoken v3", 1)

local Column1 = Tab:AddColumn()


--- MOBILITY
local MobilitySection = Column1:AddSection("Mobility")


local RunToggle = MobilitySection:AddToggle({
    text = "Auto Run",
    state = false,
    position = 1,
    tip = "Automatically run when pressing W",
    callback = function(boolV)
        getgenv().AutoRun = boolV
    end
})



local CFlyToggle = MobilitySection:AddToggle({
    text = "Fly",
    state = false,
    position = 2,
    tip = "What do you mean hacks? It's the new legendary bell",
    callback = function(boolV)
        getgenv().CFly = boolV
        if boolV then
            sFLY()
        else
            Unfly() 
        end
    end
})
CFlyToggle:AddBind({
    text = "Fly toggle key",
    key = nil,
    callback = function()
       Library.options["Fly"]:SetState(not Library.options["Fly"].state) 
    end})
CFlyToggle:AddSlider({
    text = "Fly Speed",
    flag = "Fly Speed",
    min = 1,
    max = 50,
})


local SpeedHaxToggle = MobilitySection:AddToggle({
    text = "Speed hacks",
    state = false,
    position = 1,
    tip = "POV: Uncapped agility ; Don't abuse, easy to get clipped/banned, recommended max speed of 40",
    callback = function(boolV)
        getgenv().SpeedHack = boolV
        if not boolV then
            LocalPlayer.Character.Humanoid.WalkSpeed = 15
        end
    end
})
SpeedHaxToggle:AddBind({
    text = "Speed hacks toggle key",
    key = nil,
    callback = function()
       Library.options["Speed hacks"]:SetState(not Library.options["Speed hacks"].state) 
    end})
SpeedHaxToggle:AddSlider({
    text = "Speed Hack Speed",
    flag = "Speed Hack Speed",
    min = 1,
    max = 50,
})


local InfJumpToggle = MobilitySection:AddToggle({
    text = "Toggle inf-jump",
    state = false,
    position = 2,
    tip = "Just say you're lagging",
    callback = function(boolV)
        getgenv().InfiniteJump = boolV
    end})
InfJumpToggle:AddBind({
    text = "Infinite jump toggle key",
    key = nil,
    callback = function()
       Library.options["Toggle inf-jump"]:SetState(not Library.options["Toggle inf-jump"].state) 
    end})



--- MISC
local MiscSection = Column1:AddSection("Misc")

local NoClipToggle = MiscSection:AddToggle({
    text = "Toggle noclip",
    state = false,
    position = 1,
    tip = "Just say you're lagging",
    callback = function(boolV)
        getgenv().NoClipGlobal = boolV
    end})
NoClipToggle:AddBind({
    text = "Noclip toggle key",
    key = nil,
    callback = function()
       Library.options["Toggle noclip"]:SetState(not Library.options["Toggle noclip"].state) 
    end})
    
local AntiDrownToggle = MiscSection:AddToggle({
    text = "Anti-Drown",
    state = false,
    position = 2,
    tip = "Just say you're lagging ; Doesn't work when ragdolled", -- think about having a bodyvelocity keep the player above
    callback = function(boolV)
        if boolV then 
            local Deck = Instance.new("Part")
            Deck.Position = workspace.Baseplate.Position + Vector3.new(0,4,0)
            Deck.Size = Vector3.new(2400, 5, 2400)
            Deck.Transparency = 0.50
            Deck.Anchored = true
            Deck.Name = "Deck"
            Deck.Parent = workspace
        else
            if workspace:FindFirstChild("Deck") then
                workspace:FindFirstChild("Deck"):Destroy()
            end
        end
    end})
    
local AnimsToggle = MiscSection:AddToggle({
    text = "No Animations",
    state = false,
    position = 1,
    tip = "Make your opponent cry with a single line of code",
    callback = function(boolV)
        getgenv().NoAnimation = boolV
    end})
AnimsToggle:AddBind({
    text = "No Animation Toggle Key",
    key = nil,
    callback = function()
       Library.options["No Animations"]:SetState(not Library.options["No Animations"].state) 
    end})
    
local RejoinButton = MiscSection:AddButton({
    text = "Rejoin",
    nomouse = true,
    tip = "Rejoin when not in danger to max heal yourself",
    callback = function(boolV)
        if #(game.Players:GetPlayers()) <= 1 then
		    LocalPlayer:Kick("\nRejoining...")
		    task.wait()
		    game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
	    else
		    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
	    end
    end})


-- AUTOPARRY

local CombatColumn = Tab:AddColumn()
local AutoParrySection = CombatColumn:AddSection("Auto-Parry")

local AutoParryToggle = AutoParrySection:AddToggle({
    text = "Toggle Auto-Parry", 
    state = false,
    position = "1",
    tip = "Try not to interfere with keys used by the auto-parry (dodge, cancel)",
    callback = function(boolV)
        getgenv().AutoParry = boolV
    end})

AutoParryToggle:AddBind({
    text = "Bind Auto-Parry toggle key",
    key = nil,
    callback = function()
        Library.options["Toggle Auto-Parry"]:SetState(not Library.options["Toggle Auto-Parry"].state)
    end})
    
local RollonFeintToggle = AutoParrySection:AddToggle({
    text = "Roll on feint", 
    state = false,
    position = "2",
    tip = "Rolls on the opponent's feint",
    callback = function(boolV)
        getgenv().FeintRoll = boolV
    end})
RollonFeintToggle:AddBind({
    text = "Bind roll on feint toggle key",
    key = nil,
    callback = function()
        Library.options["Roll on feint"]:SetState(not Library.options["Roll on feint"].state)
    end})

local OppFacingUser = AutoParrySection:AddToggle({
    text = "Toggle Opp-Vis", 
    state = false,
    position = "3",
    tip = "Parry only when opponent is facing you",
    callback = function(boolV) 
        getgenv().OpFacing = boolV
    end})
OppFacingUser:AddBind({
    text = "Bind Opp-Vis toggle key",
    key = nil,
    callback = function()
        Library.options["Toggle Opp-Vis"]:SetState(not Library.options["Toggle Opp-Vis"].state)
    end})  

local UserFacingOpp = AutoParrySection:AddToggle({
    text = "Toggle User-Vis", 
    state = false,
    position = "4",
    tip = "Parry only when you're facing the opponent",
    callback = function(boolV) 
        getgenv().FacingOp = boolV
    end})
UserFacingOpp:AddBind({
    text = "Bind Opp-Vis toggle key",
    key = nil,
    callback = function()
        Library.options["Toggle User-Vis"]:SetState(not Library.options["Toggle User-Vis"].state)
    end})

local APWhiteListList = AutoParrySection:AddList({
    text = "Auto Parry Whitelist",
    flag = "AP Whitelist",
    max = 10,
    values = {},
    multiselect = true,
    callback = function(Value)
        for i,v in pairs(Value) do
            if v then
                if table.find(AutoParryWhitelist, i) then continue end
                table.insert(getgenv().AutoParryWhitelist, i)
            else
                local pos = table.find(AutoParryWhitelist, i)
                if not pos then continue end
                table.remove(getgenv().AutoParryWhitelist, pos)
            end
        end
    end
    })

local CombatSection = CombatColumn:AddSection("Combat Options")


local SwingAfterParryToggle = CombatSection:AddToggle({
    text = "Swing after Parry", 
    state = false,
    position = "5",
    tip = "Swing after parrying",
    callback = function(boolV) 
        getgenv().SwingAfterParry = boolV
    end})

local FastSwing = CombatSection:AddToggle({
    text = "Faster Swing", 
    state = false,
    position = "5",
    tip = "Swing at a slightly faster speed",
    callback = function(boolV) 
        getgenv().SpeedSwing = boolV
    end})
-- add a slider :troll:
    
local AutoPerfectCastToggle = CombatSection:AddToggle({
    text = "Auto Perfect Cast", 
    state = false,
    position = "5",
    tip = "Automatically perfect cast your strong left; allows you to right click to cancel your mantra",
    callback = function(boolV) 
        getgenv().AutoPerfectCast = boolV
    end})




Library:Init()

Tab:Init()

--AutoParrySection:Init()

Column1:Init()

CombatColumn:Init()


--Initialize the library, so everything will get created
--Flags can be useful for a lot of stuff, get creative with them :)
--You can also get the value/state/key from each option if they're defined







-- // Connected Functions

--- Main

if LocalPlayer.Character == nil then
    Library:SendNotification(10, "Library will load when character has loaded")
    repeat 
        wait() 
    until 
        LocalPlayer.Character
end


modlist = {}

for _, plr in pairs(Players) do
    if plr == LocalPlayer then continue end
    plr.CharacterAdded:Connect(function()
        repeat wait() until plr.Character:FindFirstChild("Humanoid")
        print("Renew connection:")
        ConnectListeners(plr.Character)
        ------------------------------------------------------------------
        if plr.Character:FindFirstChild("Shirt") == nil then return end
        f, _ = string.find(plr.Character.Shirt.ShirtTemplate, "9681905497")
        if f == nil then return end
        if table.find(modlist, plr.Name) == nil then return end
        Library:SendNotification(10, ("Moderator Detected:".. plr.Name)) 
        table.insert(modlist, #modlist + 1, plr.Name)
        ------------------------------------------------------------------
    end)
    
    local character = plr.Character or plr.CharacterAdded:Wait()
    task.spawn(function()
        repeat wait() until character:FindFirstChild("Humanoid") ~= nil
        ConnectListeners(character)
        ------------------------------------------------------------------
        if plr.Character:FindFirstChild("Shirt") == nil then return end
        f, _ = string.find(plr.Character.Shirt.ShirtTemplate, "9681905497")
        if f == nil then return end
        if table.find(modlist, plr.Name) then return end
        Library:SendNotification(10, ("Moderator Detected:".. plr.Name)) 
        table.insert(modlist, #modlist + 1, plr.Name)
        ------------------------------------------------------------------
    end)
end

game:GetService("Players").PlayerAdded:Connect(function(plr)
    Library.options["AP Whitelist"]:AddValue(tostring(plr))
    plr.CharacterAdded:Connect(function()
        repeat wait() until plr.Character:FindFirstChild("Humanoid")
        ConnectListeners(plr.Character)
    end)
end)
------------------------------------------------------------------
for i,v in pairs(workspace.DebrisParts:GetChildren()) do
    if v.Name == "Corpse" then
        if v:FindFirstChild("Shirt") == nil then continue end
        f, _ = string.find(v.Shirt.ShirtTemplate, "9681905497")
        if f == nil then continue end
        Library:SendNotification(10, ("Moderator Detected: (CURRENTLY DEAD)"))
    end
end
------------------------------------------------------------------



--
local animation2 = Instance.new("Animation")
animation2.AnimationId = "rbxassetid://9892586559"

--[[

        local animationTrack2 = humanoid.Animator:LoadAnimation(animation2)
		animationTrack2:Play()
]]
RunService.Heartbeat:Connect(function(deltaTime)
    local character = LocalPlayer.Character
    local humanoid = character:FindFirstChild("Humanoid")
    if SpeedHack then
        LocalPlayer.Character.Humanoid.WalkSpeed = Library.flags["Speed Hack Speed"]
    end
    if NoAnimation then
        for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
    	    track:Stop()
        end
    end
    if SpeedSwing then
        for _, track in ipairs(humanoid.Animator:GetPlayingAnimationTracks()) do
            if AutoParrylist[track.Animation.AnimationId] == nil then continue end
    	    if AutoParrylist[track.Animation.AnimationId][5] == "Swing" then
    	        track:AdjustSpeed(5)
    	    end
        end
    end
    -- mixup swingspeed option lmfao
end)

local mouse = LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(Key)
    if InfiniteJump == true and Key == " " then
	    LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState(3)
    end
end)

RunService.Stepped:Connect(function()
	if NoClipGlobal == true and LocalPlayer.Character ~= nil then
		for _, child in pairs(LocalPlayer.Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
	end
end)


UIS.InputBegan:connect(function(key)
    if key.KeyCode == Enum.KeyCode.W and AutoRun then
        local args = {
            [1] = "RunStart"
        }
        LocalPlayer.Character.Run.RemoteEvent:FireServer(unpack(args))
    end
end)


game.Workspace.DebrisParts.ChildAdded:connect(function(part)
    if part.Name == "Arrow" then 
        local t = tick()
        repeat 
            RunService.Heartbeat:Wait() 
            if tick() - t > 5 then return end
        until 
            (LocalPlayer.Character.HumanoidRootPart.Position - part.Position).Magnitude < 10
        Parry()
    end
    if part.Name == "Bolt" then 
        local t = tick()
        repeat 
            RunService.Heartbeat:Wait() 
            if tick() - t > 5 then return end
        until 
            (LocalPlayer.Character.HumanoidRootPart.Position - part.Position).Magnitude < 10
        Parry()
    end
end)

LocalPlayer.Character.ChildAdded:Connect(function(ch)
    if ch.Name == "Parry" and SwingAfterParry then
        task.wait()
        swing()
    elseif ch.Name == "Strong Left" and AutoPerfectCast then
        task.wait()
        swing()
    end
end)


LocalPlayer.CharacterAdded:Connect(function(character)
    character.ChildAdded:Connect(function(ch)
        if ch.Name == "Parry" and SwingAfterParry then
            task.wait()
            swing()
        elseif ch.Name == "Strong Left" and AutoPerfectCast then
            task.wait()
            swing()
        end
    end)
end)

game:GetService("Players").PlayerRemoving:Connect(function(PlayerRemoving)
    library.options["AP Whitelist"]:RemoveValue(PlayerRemoving.Name)
    if PlayerRemoving == LocalPlayer then
	    Library:SaveConfig(Library.flags["Config List"])
    end
end)


for _,v in pairs(game.Players:GetChildren()) do
    library.options["AP Whitelist"]:AddValue(v.Name)
end

Library:LoadConfig(Library:GetConfigs()[2])
library.options["Config List"]:SetValue(Library:GetConfigs()[2])