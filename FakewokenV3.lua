local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/UI-Libraries/master/scripts/uwuware-2.x.lua", true))()

-- think about waiting then PARRYING
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

getgenv().AutoParrylist = {
    
    -- FIST MOVESET
        --BARE FISTS (FISTS)
    ["rbxassetid://9890788066"] = {"Fist1", .35, "Parry", "Close"}, -- last one is windup
    ["rbxassetid://9890790186"] = {"Fist2", .35, "Parry", "Close"},
    ["rbxassetid://9890792365"] = {"Fist3", .35, "Parry", "Close"},
    ["rbxassetid://9890796934"] = {"Fist4", .35, "Parry", "Close"},
    ["rbxassetid://9890800691"] = {"Critical", .5, "Parry", "Ranged"},
    ["rbxassetid://9891303051"] = {"Run", .3, "Parry", "Ranged"},
    ["rbxassetid://10558610693"] = {"Aerial", .3, "Parry", "Far"},
    
    -- LIGHT MOVESET
        -- STILETTO (DAGGER)
    ["rbxassetid://10300203796"] = {"Stiletto1", 0.08, "Parry", "Close"},
    ["rbxassetid://10300357869"] = {"Stilleto2", 0.08, "Parry", "Close"},
    ["rbxassetid://10310816773"] = {"Critical", 0.45, "Parry", "Ranged"},
    ["rbxassetid://10307611102"] = {"StilettoRun", 0.06, "Parry", "Ranged"},
    ["rbxassetid://10571560499"] = {"Aerial", 0.03, "Parry", "Ranged"},
        -- RAPIER (RAPIER)
    ["rbxassetid://10225217835"] = {"Rapier1", 0.4, "Parry", "Close"},
    ["rbxassetid://10225390984"] = {"Rapier2", 0.4, "Parry", "Close"},
    ["rbxassetid://10234795108"] = {"Critical", 0.5, "Parry", "Ranged"},
        -- FLINTLOCK (PISTOL)
    ["rbxassetid://10206784771"] = {"Shoot1", 0.15, "Parry", "Ranged"},
    ["rbxassetid://10206804975"] = {"Shoot2", 0.15, "Parry", "Ranged"},
    ["rbxassetid://10206765261"] = {"RunShoot", 0.1, "Parry", "Ranged"},
    ["rbxassetid://8787495611"] = {"Critical", 0.1, "Parry", "Ranged"},
    
    
    -- MEDIUM MOVESET
        -- SWORD (SWORD)
    ["rbxassetid://8698443433"] = {"Sword1", 0.25, "Parry", "Close"},
    ["rbxassetid://8699014368"] = {"Sword2", 0.25, "Parry", "Close"},
    ["rbxassetid://8787495611"] = {"Critical", 0.5, "Parry", "Ranged"},
    ["rbxassetid://8779280417"] = {"SwordRun", 0.2, "Parry", "Ranged"},
    ["rbxassetid://9112351440"] = {"Aerial", 0.2, "Parry", "Far"},
            -- SWORD (TWO-HANDED)
    ["rbxassetid://9215215492"] = {"Sword1", 0.2, "Parry", "Close"},
    ["rbxassetid://9255163830"] = {"Sword2", 0.2, "Parry", "Close"},
        -- SPEAR (TWO-HANDED)
    ["rbxassetid://11363516302"] = {"SPEAR1", 0.2, "Parry", "Close"},
    ["rbxassetid://11363591881"] = {"SPEAR2", 0.2, "Parry", "Close"},
    ["rbxassetid://11404365708"] = {"SPEARRUN", 0.2, "Parry", "Ranged"},
    ["rbxassetid://11425673362"] = {"Critical", 0.4, "Parry", "Ranged"},
    ["rbxassetid://11425773935"] = {"Critical2", 0, "Parry", "Ranged"},
            -- SPEAR (ONE-HANDED)
    ["rbxassetid://11404159898"] = {"SPEAR1", 0.2, "Parry", "Close"},
    ["rbxassetid://11404162476"] = {"SPEAR2", 0.2, "Parry", "Close"},
        -- KATANA (KATANA)
    ["rbxassetid://9892586559"] = {"KatanaSpecial", 0.4, "Parry", "Ranged"},
    
    -- HEAVY MOVESET
        -- HEAVY AXE (BATTLE AXE)
    ["rbxassetid://10013909049"] = {"Heavy1", 0.3, "Parry", "Close"},
    ["rbxassetid://10013911426"] = {"Heavy2", 0.3, "Parry", "Close"},
    ["rbxassetid://10013915154"] = {"Heavy3", 0.3, "Parry", "Close"},
    ["rbxassetid://10022838306"] = {"Critical", 0.7, "Parry", "Ranged"},
    ["rbxassetid://10013919534"] = {"HeavyRun", 0.3, "Parry", "Ranged"},
    
        -- ZWEIHANDER (GREATSWORD)
    ["rbxassetid://10787560419"] = {"Great1", 0.35, "Parry", "Close"},
    ["rbxassetid://10873957240"] = {"Great2", 0.35, "Parry", "Close"},
    ["rbxassetid://10876826705"] = {"Critical", 0.7, "Parry", "Close"},
    ["rbxassetid://10771933209"] = {"GreatRun", 0.5, "Parry", "Ranged"},
    
    --- MANTRAS
        -- ATTUNEMENT-LESS
    ["rbxassetid://9912709174"] = {"StrongLeft", 0.4, "Parry", "Ranged"},
    
    
    --- MOBS
        -- MUDSKIPPER
    ["rbxassetid://10109623939"] = {"Combo1", .2, "Parry", "Close"},
    ["rbxassetid://10109628136"] = {"Combo2", .2, "Parry", "Close"},
        -- ENFORCER
    ["rbxassetid://8916943692"] = {"Swing1", 0.4, "Parry", "Close"},
    ["rbxassetid://8917108290"] = {"Swing2", 0.4, "Parry", "Close"},
        -- SQUIDWARD
    ["rbxassetid://10085445723"] = {"Combo1", .2, "Parry", "Close"},
    ["rbxassetid://10085688428"] = {"Combo2", .2, "Parry", "Close"},
    ["rbxassetid://10085695929"] = {"Combo3", .2, "Parry", "Close"},
    ["rbxassetid://10096299376"] = {"Jetstream", .2, "Roll", "Ranged"}, --????????
    ["rbxassetid://10098630808"] = {"FlipKick", .2, "Parry", "Close"},
        -- OWL
    ["rbxassetid://9984057511"] = {"LeftSwing", .2, "Parry", "Ranged"},
    ["rbxassetid://9983925053"] = {"RightSwing", .2, "Parry", "Ranged"},
    ["rbxassetid://9995957168"] = {"Rush", .4, "Roll", "Ranged"},
    ["rbxassetid://9995234248"] = {"Swoop", .4, "Roll", "Ranged"},
        --MONKE
    ["rbxassetid://9145238578"] = {"Stomp", 0.2, "Parry", "Far"},
    ["rbxassetid://9145941681"] = {"Kick", 0, "Roll", "Far"},
    ["rbxassetid://9147807267"] = {"Grab", 0.2, "Parry", "Far"},
    ["rbxassetid://9137450354"] = {"TripleStomp", 0.6, "Parry", "Far"},
    ["rbxassetid://9157621952"] = {"Throw", 0.6, "Roll", "Far"},
        --SHARKO
    ["rbxassetid://8680523972"] = {"Swing1", 0.5, "Parry", "Far"},
    ["rbxassetid://8686839894"] = {"SwingCombo", 0.5, "Parry", "Far"},
    ["rbxassetid://8688521045"] = {"Kick", 0.5, "Roll", "Far"},
    ["rbxassetid://8687295215"] = {"Spray", 0.4, "Parry", "Far"},
    
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
local UIS = game:GetService("UserInputService")
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
----
function Parry()
    print("PARRYING")
    local args = {
        [1] = "Down"
    }
    game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    
    for i = 1, 10 do
        task.wait()
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

function Block(attack)
    
    print("BLOCKING")
    local args = {
        [1] = "Down"
    }
    game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    
    local st = os.clock()
    
    while os.clock() - st < .3 do
        task.wait()
        print("1")
        local args = {
            [1] = "Hold"
        }
        game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    end
    print("2")
    task.wait()
    local args = {
        [1] = "Up"
    }
    game:GetService("Players").LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    
end

function swing()
    local args = {
        [1] = "Down",
        [2] = false
    }
    game:GetService("Players").LocalPlayer.Character.CharacterHandler.M1:FireServer(unpack(args))
end


function Roll()
    keypress(0x51) -- change to characterhandler.q?
    task.wait()
    keyrelease(0x51)
    print("ROLLING")
end

function DefensiveReaction(attack, FeintRoll)
    if attack[3] == "Parry" then
        if game.ReplicatedStorage.CharacterData[game.Players.LocalPlayer.Name].StatusFolder:FindFirstChild("ParryCD") ~= nil then
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
        if AutoParrylist[animtrack.Animation.AnimationId][4] == "Ranged" then range = 30 elseif AutoParrylist[animtrack.Animation.AnimationId][4] == "Far" then range = 60 elseif AutoParrylist[animtrack.Animation.AnimationId][4] == "MONKE" then range = 150 end 
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
                print("FEINTED")
                OpponentFeinted = true
                if FeintRoll then 
                    task.wait(.1)
                    Roll()
                end
            end
        end
        connection = game.ReplicatedStorage.CharacterData[(game.Players:GetPlayerFromCharacter(character)).Name].Cooldowns.ChildAdded:Connect(potentialfeint)
        
        --
        print(animtrack.Animation.AnimationId)
        if game.ReplicatedStorage.CharacterData[character.Name].StatusFolder:FindFirstChild("Hitting") ~= nil then
            CancelAttack()
        end
        
        print(AutoParrylist[animtrack.Animation.AnimationId][2] - (0.001*game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() + 0.005))
        task.wait(AutoParrylist[animtrack.Animation.AnimationId][2] - (0.001*game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() + 0.005))

        if not OpponentFeinted then DefensiveReaction(AutoParrylist[animtrack.Animation.AnimationId]) end
        connection:Disconnect()
        OpponentFeinted = false
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
            print("a2")
        else
            Unfly() 
        end
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
    tip = "Just say you're lagging",
    callback = function(boolV)
        getgenv().InfiniteJump = boolV
    end})
InfJumpToggle:AddBind({
    text = "Infinite jump toggle key",
    key = nil,
    callback = function()
       library.options["Toggle inf-jump"]:SetState(not library.options["Toggle inf-jump"].state) 
    end})


-- AUTOPARRY

local AutoParrySection = Column1:AddSection("Auto-Parry")

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
        library.options["Toggle Opp-Vis"]:SetState(not library.options["Toggle Opp-Vis"].state)
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
        library.options["Toggle User-Vis"]:SetState(not library.options["Toggle User-Vis"].state)
    end})   


-- add combat section
local SwingAfterParryToggle = AutoParrySection:AddToggle({
    text = "Swing after Parry", 
    state = false,
    position = "5",
    tip = "Swing after parrying",
    callback = function(boolV) 
        getgenv().SwingAfterParry = boolV
    end})
    
local AutoPerfectCastToggle = AutoParrySection:AddToggle({
    text = "Auto Perfect Cast", 
    state = false,
    position = "5",
    tip = "Automatically perfect cast your strong left; allows you to right click to cancel your mantra",
    callback = function(boolV) 
        getgenv().AutoPerfectCast = boolV
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
       library.options["Toggle noclip"]:SetState(not library.option["Toggle noclip"].state) 
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
					SPEED = library.flags["Fly Speed"]
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

--- W.I.P

UIS.InputBegan:connect(function(key)
    if key.KeyCode == Enum.KeyCode.W and AutoRun then
        local args = {
            [1] = "RunStart"
        }
        game:GetService("Players").LocalPlayer.Character.Run.RemoteEvent:FireServer(unpack(args))
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
    elseif part.Name == "Bolt" then 
        local t = tick()
        repeat 
            RunService.Heartbeat:Wait() 
            if tick() - t > 5 then return end
        until 
            (LocalPlayer.Character.HumanoidRootPart.Position - part.Position).Magnitude < 10
        Parry()
    end
end)


game:GetService("Players").LocalPlayer.Character.ChildAdded:connect(function(ch)
    -- swing directly after parry
    if ch.Name == "Parry" and SwingAfterParry then
        task.wait()
        swing()
    elseif ch.Name == "Strong Left" and AutoPerfectCast then
        task.wait()
        swing()
    end
end)



