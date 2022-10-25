local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/UI-Libraries/master/scripts/uwuware-2.x.lua", true))()


-- // Global Variables

getgenv().AutoParry = false
getgenv().OpFacing = false
getgenv().FeintRoll = true
getgenv().SpeedHack = false
getgenv().CFly = false
getgenv().InfiniteJump = false
getgenv().NoClipGlobal = false

getgenv().AutoParrylist = {
    
    -- FIST MOVESET
        --BARE FISTS (FISTS)
    ["rbxassetid://9890788066"] = {"Fist1", .2, "Parry", "Close"},
    ["rbxassetid://9890790186"] = {"Fist2", .2, "Parry", "Close"},
    ["rbxassetid://9890792365"] = {"Fist3", .2, "Parry", "Close"},
    ["rbxassetid://9890796934"] = {"Fist4", .2, "Parry", "Close"},
    ["rbxassetid://9890800691"] = {"Critical", .5, "Parry", "Ranged"},
    ["rbxassetid://9891303051"] = {"RunPunch", .2, "Parry", "Ranged"},
    ["rbxassetid://10558610693"] = {"Aerial", .1, "Parry", "Ranged"},
    
    -- LIGHT MOVESET
        -- STILETTO (DAGGER)
    ["rbxassetid://10300203796"] = {"Stiletto1", 0.1, "Parry", "Close"},
    ["rbxassetid://10300357869"] = {"Stilleto2", 0.1, "Parry", "Close"},
    ["rbxassetid://10310816773"] = {"Critical", 0.2, "Parry", "Ranged"},
    ["rbxassetid://10307611102"] = {"StilettoRun", 0.1, "Parry", "Ranged"},
    ["rbxassetid://10571560499"] = {"Aerial", 0.1, "Parry", "Ranged"},
        -- RAPIER (RAPIER)
    ["rbxassetid://10225217835"] = {"Rapier1", 0.2, "Parry", "Close"},
    ["rbxassetid://10225390984"] = {"Rapier2", 0.2, "Parry", "Close"},
    ["rbxassetid://10234795108"] = {"Critical", 0.4, "Parry", "Ranged"},
    ["rbxassetid://8779280417"] = {"RapierRun", 0.2, "Parry", "Ranged"},
    ["rbxassetid://9112351440"] = {"Aerial", 0.2, "Parry", "Ranged"},
        -- FLINTLOCK (PISTOL)
    ["rbxassetid://10206784771"] = {"Shoot1", 0.1, "Parry", "Ranged"},
    ["rbxassetid://10206804975"] = {"Shoot2", 0.1, "Parry", "Ranged"},
    ["rbxassetid://10206765261"] = {"RunShoot", 0.1, "Parry", "Ranged"},
    ["rbxassetid://8787495611"] = {"Critical", 0.1, "Parry", "Ranged"},
    ["rbxassetid://9112351440"] = {"Aerial", 0.1, "Parry", "Ranged"},
    
    -- MEDIUM MOVESET
        -- SWORD (SWORD)
    ["rbxassetid://8698443433"] = {"Sword1", 0.2, "Parry", "Close"},
    ["rbxassetid://8699014368"] = {"Sword2", 0.2, "Parry", "Close"},
    ["rbxassetid://8787495611"] = {"Critical", 0.5, "Parry", "Ranged"},
    ["rbxassetid://8779280417"] = {"SwordRun", 0.2, "Parry", "Ranged"},
    ["rbxassetid://9112351440"] = {"Aerial", 0.2, "Parry", "Ranged"},
            -- SWORD (TWO-HANDED)
    ["rbxassetid://9215215492"] = {"Sword1", 0.2, "Parry", "Close"},
    ["rbxassetid://9255163830"] = {"Sword2", 0.2, "Parry", "Close"},
        -- KATANA (KATANA)
    ["rbxassetid://9892586559"] = {"KatanaSpecial", 0.3, "Parry", "Ranged"},
    
    -- HEAVY MOVESET
        -- HEAVY AXE (BATTLE AXE)
    ["rbxassetid://10013909049"] = {"Heavy1", 0.2, "Parry", "Close"},
    ["rbxassetid://10013911426"] = {"Heavy2", 0.2, "Parry", "Close"},
    ["rbxassetid://10013915154"] = {"Heavy3", 0.2, "Parry", "Close"},
    ["rbxassetid://10022838306"] = {"Critical", 0.5, "Parry", "Close"},
    ["rbxassetid://10013919534"] = {"HeavyRun", 0.3, "Parry", "Ranged"},
    ["rbxassetid://9112351440"] = {"Aerial", 0.3, "Parry", "Ranged"},
    
        -- ZWEIHANDER (GREATSWORD)
    ["rbxassetid://10787560419"] = {"Great1", 0.4, "Parry", "Close"},
    ["rbxassetid://10873957240"] = {"Great2", 0.4, "Parry", "Close"},
    ["rbxassetid://10876826705"] = {"Critical", 0.7, "Parry", "Close"},
    ["rbxassetid://10771933209"] = {"GreatRun", 0.5, "Parry", "Ranged"},
    
    --- MANTRAS
        -- ATTUNEMENT-LESS
    ["rbxassetid://9912709174"] = {"StrongLeft", 0.2, "Parry", "Ranged"},
    
    
    --- MOBS
        -- MUDSKIPPER
    ["rbxassetid://9255274417"] = {"Mud1", .2, "Parry", "Close"},
    ["rbxassetid://10109623939"] = {"Combo1", .2, "Parry", "Close"},
    ["rbxassetid://10109628136"] = {"Combo2", .2, "Parry", "Close"},
        -- SQUIDWARD
    ["rbxassetid://10085445723"] = {"Combo1", .2, "Parry", "Close"},
    ["rbxassetid://10085688428"] = {"Combo2", .2, "Parry", "Close"},
    ["rbxassetid://10085695929"] = {"Combo3", .2, "Parry", "Close"},
    ["rbxassetid://10096299376"] = {"Jetstream", .2, "Roll", "Ranged"}, --????????
    ["rbxassetid://10098630808"] = {"FlipKick", .2, "Parry", "Close"},
        -- OWL
    ["rbxassetid://9984057511"] = {"LeftSwing", .2, "Parry", "Close"},
    ["rbxassetid://9983925053"] = {"RightSwing", .2, "Parry", "Close"},
    ["rbxassetid://9995957168"] = {"Rush", .4, "Roll", "Close"},
    ["rbxassetid://9995234248"] = {"Swoop", .4, "Roll", "Close"},
        --MONKE
    ["rbxassetid://9145238578"] = {"Stomp", 0.6, "Parry", "Close"},
    ["rbxassetid://9145941681"] = {"Kick", 0.6, "Roll", "Close"},
    ["rbxassetid://9147807267"] = {"Grab", 0.6, "Parry", "Close"},
    ["rbxassetid://9137450354"] = {"TripleStomp", 0.6, "Parry", "Close"},
    ["rbxassetid://9157621952"] = {"Throw", 0.6, "Roll", "Close"},
        --SHARKO
    ["rbxassetid://8680523972"] = {"Swing1", 0.6, "Parry", "Close"},
    ["rbxassetid://8686839894"] = {"SwingCombo", 0.6, "Parry", "Close"},
    ["rbxassetid://8688521045"] = {"Kick", 0.6, "Roll", "Close"},
    ["rbxassetid://8687295215"] = {"Spray", 0.4, "Parry", "Close"},
    
    -- RESONANCES
        --ESCAPIST
    ["rbxassetid://10968567648"] = {"Exit", 0, "Roll", "Close"},
        --RUINATION
    ["rbxassetid://10974528182"] = {"Swing1", 0.4, "Roll", "Close"},
    ["rbxassetid://10974684486"] = {"Swing2", 0.4, "Roll", "Close"},
    ["rbxassetid://11286554002"] = {"Swing3", 0.4, "Roll", "Close"},
    ["rbxassetid://10976188963"] = {"Slam", 0.4, "Roll", "Close"},
}

-- // Local Variables
local RunService = game:GetService("RunService")
local PlayerService = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CheckSpeed = ReplicatedStorage.Events.CheckSpeed
local Players = PlayerService:GetChildren()
local LocalPlayer = PlayerService.LocalPlayer

local OpponentFeinted = false

-- // Functions

function noAnimations()
    game.RunService.RenderStepped:connect(function()
        local players = game:GetService("Players")
        local player = players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")

        for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
    	    track:Stop()
        end
    end)
end

function CancelAttack()
    local args = {
        [1] = "Down",
        [2] = false
    }
    game:GetService("Players").LocalPlayer.Character.CharacterHandler.M2:FireServer(unpack(args))
    
    local args = {
        [1] = "Up"
    }

    game:GetService("Players").LocalPlayer.Character.CharacterHandler.M2:FireServer(unpack(args))
end

function Parry(tim)
    print("PARRYING")
    local t = tick()
    while tick() - t < tim do
        RunService.Heartbeat:Wait()
        if OpponentFeinted then
            Roll(tim - .1)
            return
        end    
    end
    local args = {
        [1] = "Down"
    }
    game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    
    for i = 1, 10 do
        wait()
        local args = {
            [1] = "Hold"
        }
        game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    end    
    
    local args = {
        [1] = "Up"
    }
    game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
end

function Roll(tim)
    task.wait(tim)
--    while not iswindowactive() do wait() end
    keypress(0x51)
    wait()
    keyrelease(0x51)
    OpponentFeinted = false
    print("ROLLING")
end

function DefensiveReaction(attack, FeintRoll)
--    if FeintRoll then
--        Roll(.2)
    if attack[3] == "Parry" then
        Parry(attack[2])
    elseif attack[3] == "Roll" then
        Roll(attack[2])
    end
end

function ConnectListeners(character)
    print("Connecting to", character.Name)
    humanoid = character.Humanoid
    animator = humanoid.Animator
    
    animator.AnimationPlayed:Connect(function(animtrack)
        if AutoParry == false then return end
        if not AutoParrylist[animtrack.Animation.AnimationId] then return end
            
        local range = 20
        if AutoParrylist[animtrack.Animation.AnimationId][4] == "Ranged" then range = 30 elseif AutoParrylist[animtrack.Animation.AnimationId][4] == "Far" then range = 60 end 
        if (LocalPlayer.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Magnitude > range then return end
        
        local function potentialfeint(child)
            if child.Name == "FeintCD" then
                OpponentFeinted = true
            end
        end
        connection = game.ReplicatedStorage.CharacterData[(game.Players:GetPlayerFromCharacter(character)).Name].Cooldowns.ChildAdded:Connect(potentialfeint)
        
        if character:FindFirstChild("Head") ~= nil and LocalPlayer.Character:FindFirstChild("Head") ~= nil and OpFacing then
            local opToChar = (LocalPlayer.Character.HumanoidRootPart.Position - character.Head.HumanoidRootPart).Unit
            local opLook = character.HumanoidRootPart.CFrame.LookVector
    
            local dotProduct = opToChar:Dot(opLook)
            print(dotProduct)
            if dotProduct < 0 then return end
        end

        print(animtrack.Animation.AnimationId)
        if game.ReplicatedStorage.CharacterData[character.Name].StatusFolder:FindFirstChild("Hitting") ~= nil then
            CancelAttack()
        end
        print("Reacting", character.Name)
        DefensiveReaction(AutoParrylist[animtrack.Animation.AnimationId])
        connection:Disconnect()
    end)
end

-- // Initiate Script

for _, plr in pairs(Players) do
    if plr == LocalPlayer then continue end
    plr.CharacterAdded:Connect(function()
        repeat wait() until plr.Character:FindFirstChild("Humanoid")
        print("Renew connection:")
        ConnectListeners(plr.Character)
    end)
    
    local character = plr.Character or plr.CharacterAdded:Wait()
    if character:FindFirstChild("Humanoid") == nil then continue end
    ConnectListeners(character)
end


game:GetService("Players").PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(function()
        repeat wait() until plr.Character:FindFirstChild("Humanoid")
        ConnectListeners(plr.Character)
    end)
end)


--- LIBRARY
local Tab = Library:AddTab("fakewoken v3", 1)

local Column1 = Tab:AddColumn()

local AutoParrySection = Column1:AddSection("Auto-Parry")

--AutoParrySection:AddLabel("Label sample")

--AutoParrySection:AddDivider("Divider Sample")

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
        library.options["Toggle Auto-Parry"]:SetState(not library.options["Toggle Auto-Parry"].state)
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
        library.options["Roll on feint"]:SetState(not library.options["Roll on feint"].state)
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
        library.options["Toggle Opponent Visibility"]:SetState(not library.options["Toggle Opponent Visibility"].state)
    end})   




--- MOBILITY
local MobilitySection = Column1:AddSection("Mobility")

local CFlyToggle = MobilitySection:AddToggle({
    text = "Fly",
    state = false,
    position = 1,
    tip = "What do you mean hacks? It's the new legendary bell",
    callback = function(boolV)
        getgenv().CFly = boolV
	    local Head = LocalPlayer.Character:WaitForChild("Head")
	    Head.Anchored = boolV
    end
})
CFlyToggle:AddBind({
    text = "Fly toggle key",
    key = nil,
    callback = function()
       library.options["Fly"]:SetState(not library.options["Fly"].state) 
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
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 15
        end
    end
})
SpeedHaxToggle:AddBind({
    text = "Speed hacks toggle key",
    key = nil,
    callback = function()
       library.options["Speed hacks"]:SetState(not library.options["Speed hacks"].state) 
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
    tip = "Just say your lagging",
    callback = function(boolV)
        getgenv().InfiniteJump = boolV
    end})
InfJumpToggle:AddBind({
    text = "Infinite jump toggle key",
    key = nil,
    callback = function()
       library.options["Toggle inf-jump"]:SetState(not library.options["Toggle inf-jump"].state) 
    end})


--- MISC
local MiscSection = Column1:AddSection("Misc")

local NoClipToggle = MiscSection:AddToggle({
    text = "Toggle noclip",
    state = false,
    position = 1,
    tip = "Just say your lagging",
    callback = function(boolV)
        getgenv().NoClipGlobal = boolV
    end})
NoClipToggle:AddBind({
    text = "Noclip toggle key",
    key = nil,
    callback = function()
       library.options["Toggle noclip"]:SetState(not library.option["Toggle noclip"].state) 
    end})


--[[
local button1 = AutoParrySection:AddButton()

button1:AddBind()

button1:AddColor()

AutoParrySection:AddBind()

local slider1 = AutoParrySection:AddSlider()

slider1:AddBind()

slider1:AddColor()

local list1 = AutoParrySection:AddList()

slider1:AddBind()

--slider1:AddValue("a")

slider1:AddColor()

AutoParrySection:AddBox()

AutoParrySection:SetTitle("Auto-Parry")
]]



Library:Init()

Tab:Init()

AutoParrySection:Init()

Column1:Init()


--Initialize the library, so everything will get created
--Flags can be useful for a lot of stuff, get creative with them :)
--You can also get the value/state/key from each option if they're defined







-- // Connected Functions
    -- Credit to infinite yield for some of these functions
local mouse = LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(Key)
    if InfiniteJump == true and Key == " " then
	    game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState(3)
    end
end)


local function NoclipLoop()
	if NoClipGlobal == true and LocalPlayer.Character ~= nil then
		for _, child in pairs(LocalPlayer.Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
	end
end
Noclipping = RunService.Stepped:Connect(NoclipLoop)

-- // Hook
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

RunService.Heartbeat:Connect(function(deltaTime)
    if SpeedHack then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Library.flags["Speed Hack Speed"]
    end
    if CFly then
        --Full credit to peyton#9148
        local moveDirection = LocalPlayer.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (Library.flags["Fly Speed"] * deltaTime)
		local headCFrame = LocalPlayer.Character.Head.CFrame
		local cameraCFrame = workspace.CurrentCamera.CFrame
		local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
		cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
		local cameraPosition = cameraCFrame.Position
		local headPosition = headCFrame.Position

		local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
		LocalPlayer.Character.Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
    end
end)