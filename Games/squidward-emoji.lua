loadstring(game:HttpGet("https://raw.githubusercontent.com/Triggerd3/trigger-lego-scripts/main/edited-hub.lua", true))()

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
    ["rbxassetid://9145941681"] = {"Kick", 0.7, "Roll", "MONKE", "Swing"},
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



-- // Local Variables
local PlayerService = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UIS = game:GetService("UserInputService")

local Players = PlayerService:GetChildren()
local LocalPlayer = PlayerService.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera
local CheckSpeed = ReplicatedStorage.Events.CheckSpeed

local OpponentFeinted = false

-- // Functions
local function mouse1click(delay) spawn(function() mouse1press() wait(delay or 0.1) mouse1release() end) end
local function mouse2click(delay) spawn(function() keypress(0x02) wait(delay or 0.1) keprelease(0x02) end) end
local function keytap(key, delay) spawn(function() keypress(key) wait(delay or 0.1) keyrelease(key) end) end


local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
local SPEED2 = 1
local function sFLY()
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
    flyKeyDown = Mouse.KeyDown:Connect(function(KEY)
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
	flyKeyUp = Mouse.KeyUp:Connect(function(KEY)
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

local function Unfly()
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end


local function CancelAttack()
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

local function Parry()
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

local function Block(attack)
    local args = {
        [1] = "Down"
    }
    LocalPlayer.Character.CharacterHandler.F:FireServer(unpack(args))
    
    local st = os.clock()
    while os.clock() - st < .6 do ----------------------- STOP WHEN BLOCKED???
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

local function swing()
    local args = {
        [1] = "Down",
        [2] = false
    }
    LocalPlayer.Character.CharacterHandler.M1:FireServer(unpack(args))
end


local function Roll()
    keytap(0x51) -- change to characterhandler.q?
end

local function DefensiveReaction(attack, enemy)
    if attack[3] == "Parry" then
        if game.ReplicatedStorage.CharacterData[LocalPlayer.Name].StatusFolder:FindFirstChild("ParryCD") ~= nil then
            if attack[1] == "Critical" or attack[1] == "StrongLeft" then task.wait(.1) Roll() else Block(attack) end
        elseif game.ReplicatedStorage.CharacterData[LocalPlayer.Name].Configurations.Posture.Value + enemy:FindFirstChild("PostureDamage", true).Value > game.ReplicatedStorage.CharacterData[LocalPlayer.Name].Configurations.Posture:GetAttribute("Max") then
            task.wait(.1)
            Roll()
        else
            Parry()
        end
    elseif attack[3] == "Roll" then
        Roll()
    end
end

local function ConnectListeners(character)
    print("Connecting to", character.Name)
    humanoid = character.Humanoid
    animator = humanoid.Animator
    
    animator.AnimationPlayed:Connect(function(animtrack)
        if AutoParry == false then return end
        if not AutoParrylist[animtrack.Animation.AnimationId] then return end
        
        task.wait(AutoParrylist[animtrack.Animation.AnimationId][2] - (0.001*game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() + 0.005)) -- multiply by animtrack.speed?

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
        
        if game.ReplicatedStorage.CharacterData[character.Name].StatusFolder:FindFirstChild("Hitting") ~= nil then
            CancelAttack()
        end
        -------------------------------------------------- SPECIALS --------------------------------------------------
        if animtrack.Animation.AnimationId == "rbxassetid://8686839894" then -- double sharkop swing
            Parry()
            wait(0.2)
            Parry()
            return
        elseif animtrack.Animation.AnimationId == "rbxassetid://9137450354" then -- monke treiple
            Parry()
            wait(0.2)
            Parry()
            wait(0.2)
            Parry()
        end
        if animtrack.Animation.AnimationId == "rbxassetid://8917904390" then -- enfocer spin
            local ti = tick()
            repeat 
                Parry()
                task.wait()
            until 
                tick() - ti > 5
        end
        -------------------------------------------------- SPECIALS --------------------------------------------------

        if not OpponentFeinted then DefensiveReaction(AutoParrylist[animtrack.Animation.AnimationId], character) end
        connection:Disconnect()
        OpponentFeinted = false
    end)
end





-- // Initiate Script

--- LIBRARY
local Tab = library:AddTab("Fakewoken 3", 1)
local Column1 = Tab:AddColumn()

--- MOBILITY
local MobilitySection = Column1:AddSection("Mobility")

MobilitySection:AddToggle({
    text = "Auto Run",
    state = false,
    position = 1,
    tip = "Automatically run when pressing W",
    callback = function(boolV)
        getgenv().AutoRun = boolV
    end
})
MobilitySection:AddToggle({
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
}):AddBind({
    text = "Fly toggle key",
    key = nil,
    callback = function()
       library.options["Fly"]:SetState(not library.options["Fly"].state) 
    end
}):AddSlider({
    text = "Fly Speed",
    flag = "Fly Speed",
    min = 1,
    max = 50,})

MobilitySection:AddToggle({
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
}):AddBind({
    text = "Speed hacks toggle key",
    key = nil,
    callback = function()
        library.options["Speed hacks"]:SetState(not library.options["Speed hacks"].state) 
    end
}):AddSlider({
    text = "Speed Hack Speed",
    flag = "Speed Hack Speed",
    min = 1,
    max = 50,
})

MobilitySection:AddToggle({
    text = "Toggle inf-jump",
    state = false,
    position = 2,
    tip = "Just say you're lagging",
    callback = function(boolV)
        getgenv().InfiniteJump = boolV
    end
}):AddBind({
    text = "Infinite jump toggle key",
    key = nil,
    callback = function()
       library.options["Toggle inf-jump"]:SetState(not library.options["Toggle inf-jump"].state) 
    end
})

--- MISC
local MiscSection = Column1:AddSection("Misc")

MiscSection:AddToggle({
    text = "Toggle noclip",
    state = false,
    position = 1,
    tip = "Just say you're lagging",
    callback = function(boolV)
        getgenv().NoClipGlobal = boolV
    end
}):AddBind({
    text = "Noclip toggle key",
    key = nil,
    callback = function()
       library.options["Toggle noclip"]:SetState(not library.options["Toggle noclip"].state) 
    end
})
    
MiscSection:AddToggle({
    text = "Anti-Drown",
    state = false,
    position = 2,
    tip = "Just say you're lagging ; Doesn't work when ragdolled", -- think about having a bodyvelocity keep the player above
    callback = function(boolV)
        if boolV then 
            local Deck = Instance.new("Part")
            Deck.Position = workspace.Baseplate.Position + Vector3.new(0,3,0)
            Deck.Size = Vector3.new(2400, 3, 2400)
            Deck.Transparency = 0.50
            Deck.Anchored = true
            Deck.Name = "Deck"
            Deck.Parent = workspace
        else
            if workspace:FindFirstChild("Deck") then
                workspace:FindFirstChild("Deck"):Destroy()
            end
        end
    end
})

MiscSection:AddToggle({
    text = "No Animations",
    state = false,
    position = 1,
    tip = "Make your opponent cry with a single line of code",
    callback = function(boolV)
        getgenv().NoAnimation = boolV
    end
}):AddBind({
    text = "No Animation Toggle Key",
    key = nil,
    callback = function()
       library.options["No Animations"]:SetState(not library.options["No Animations"].state) 
    end})
    
MiscSection:AddButton({
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
    end
})


-- AUTOPARRY

local CombatColumn = Tab:AddColumn()
local AutoParrySection = CombatColumn:AddSection("Auto-Parry")

AutoParrySection:AddToggle({
    text = "Toggle Auto-Parry", 
    state = false,
    position = "1",
    tip = "Try not to interfere with keys used by the auto-parry (dodge, cancel)",
    callback = function(boolV)
        getgenv().AutoParry = boolV
    end
}):AddBind({
    text = "Bind Auto-Parry toggle key",
    key = nil,
    callback = function()
        library.options["Toggle Auto-Parry"]:SetState(not library.options["Toggle Auto-Parry"].state)
    end
})
    
AutoParrySection:AddToggle({
    text = "Roll on feint", 
    state = false,
    position = "2",
    tip = "Rolls on the opponent's feint",
    callback = function(boolV)
        getgenv().FeintRoll = boolV
    end
}):AddBind({
    text = "Bind roll on feint toggle key",
    key = nil,
    callback = function()
        library.options["Roll on feint"]:SetState(not library.options["Roll on feint"].state)
    end})

AutoParrySection:AddToggle({
    text = "Toggle Opp-Vis", 
    state = false,
    position = "3",
    tip = "Parry only when opponent is facing you",
    callback = function(boolV) 
        getgenv().OpFacing = boolV
    end
}):AddBind({
    text = "Bind Opp-Vis toggle key",
    key = nil,
    callback = function()
        library.options["Toggle Opp-Vis"]:SetState(not library.options["Toggle Opp-Vis"].state)
    end})  

AutoParrySection:AddToggle({
    text = "Toggle User-Vis", 
    state = false,
    position = "4",
    tip = "Parry only when you're facing the opponent",
    callback = function(boolV) 
        getgenv().FacingOp = boolV
    end
}):AddBind({
    text = "Bind Opp-Vis toggle key",
    key = nil,
    callback = function()
        library.options["Toggle User-Vis"]:SetState(not library.options["Toggle User-Vis"].state)
    end})

AutoParrySection:AddList({
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

CombatSection:AddToggle({
    text = "Swing after Parry", 
    state = false,
    position = "5",
    tip = "Swing after parrying",
    callback = function(boolV) 
        getgenv().SwingAfterParry = boolV
    end
})

CombatSection:AddToggle({
    text = "Faster Swing", 
    state = false,
    position = "5",
    tip = "Swing at a slightly faster speed",
    callback = function(boolV) 
        getgenv().SpeedSwing = boolV
    end
})
-- add a slider :troll:
    
CombatSection:AddToggle({
    text = "Auto Perfect Cast", 
    state = false,
    position = "5",
    tip = "Automatically perfect cast your strong left; allows you to right click to cancel your mantra",
    callback = function(boolV) 
        getgenv().AutoPerfectCast = boolV
    end
})

Tab:Init()

Column1:Init()

CombatColumn:Init()

-- // Connected Functions

--- Main
for _, v in next, library.options["Ap Whitelist"] do
    library.options["Ap Whitelist"]:RemoveValue(v)
end

if LocalPlayer.Character == nil then
    library:SendNotification(10, "library will load when character has loaded")
    repeat 
        wait() 
    until 
        LocalPlayer.Character
end


local __namecall
__namecall = hookmetamethod(game, "__namecall", function(...)
    -- // Vars
    local args = {...}
    local self = args[1]
    local method = getnamecallmethod()

    -- // Check if it is the remote
    if (self == CheckSpeed and method == "FireServer") then
        if SpeedHack then   
            return library.flags["Speed Hack Speed"],library.flags["Speed Hack Speed"]
        elseif CFly then
            return library.flags["Fly Speed"],library.flags["Fly Speed"]
        end
    end

    -- // Return default
    return __namecall(...)
end)



local modlist = {}

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
        library:SendNotification(10, ("Moderator Detected:".. plr.Name)) 
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
        library:SendNotification(10, ("Moderator Detected:".. plr.Name)) 
        table.insert(modlist, #modlist + 1, plr.Name)
        ------------------------------------------------------------------
    end)
end

game:GetService("Players").PlayerAdded:Connect(function(plr)
    library.options["AP Whitelist"]:AddValue(plr.Name)
    plr.CharacterAdded:Connect(function()
        repeat wait() until plr.Character:FindFirstChild("Humanoid")
        ConnectListeners(plr.Character)
    end)
    task.spawn(function()
        repeat wait() until plr.Character ~= nil
        if plr.Character:FindFirstChild("Shirt") == nil then return end
        f, _ = string.find(plr.Character.Shirt.ShirtTemplate, "9681905497")
        if f == nil then return end
        if table.find(modlist, plr.Name) == nil then return end
        library:SendNotification(10, ("Moderator Detected:".. plr.Name)) 
        table.insert(modlist, #modlist + 1, plr.Name)
    end)
end)
------------------------------------------------------------------
for i,v in pairs(workspace.DebrisParts:GetChildren()) do
    if v.Name == "Corpse" then
        if v:FindFirstChild("Shirt") == nil then continue end
        f, _ = string.find(v.Shirt.ShirtTemplate, "9681905497")
        if f == nil then continue end
        library:SendNotification(10, ("Moderator Detected: (CURRENTLY DEAD)"))
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
        LocalPlayer.Character.Humanoid.WalkSpeed = library.flags["Speed Hack Speed"]
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

Mouse.KeyDown:Connect(function(Key)
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
    if part.Name == "Part" then 
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
        
	    library:SaveConfig(library.flags["Config List"])
    end
end)



for _,v in pairs(game.Players:GetChildren()) do
    library.options["AP Whitelist"]:AddValue(v.Name)
end

library:LoadConfig(library:GetConfigs()[2])
library.options["Config List"]:SetValue(library:GetConfigs()[2])
