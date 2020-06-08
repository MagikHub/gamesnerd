spawn(function()
    while wait(0.1) do
        game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
        game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
        game:GetService("RunService").Stepped:wait()
    end
end)
function tweenTP(cframe)
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
local timetaken = 0

if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cframe.p).Magnitude/360 < 4 then
    timetaken = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cframe.p).Magnitude/360
    print(timetaken)
else
    timetaken = 4
end
    wait(0.1)
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - cframe.p).Magnitude < 200 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
    else
     game.Players.LocalPlayer.Character.Humanoid.Sit = true
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
       local tweenService = game:GetService("TweenService")
       local tweeningInformation = TweenInfo.new(
   
    timetaken, -- Length
    Enum.EasingStyle.Linear, -- Easing style of the TweenInfo
    Enum.EasingDirection.Out, -- Easing direction of the TweenInfo
    0, -- Number of times the tween will repeat   
    false, -- Should the tween repeat?
    0 -- Delay between each tween  
    )
    local partProperties = {
        CFrame = cframe
    }
            local Tween = tweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,tweeningInformation,partProperties)
            Tween:Play()
            
            end
            
            
end

function jumpTP(cframe)
    for i = 1,45 do
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")  
        game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame +game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *  Vector3.new(2.5,0,2.5)
        game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,7.5,0)
        wait(0.01)
    end

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  cframe

end
function Notif(name)
local Notification = Instance.new("ScreenGui")
local thing = Instance.new("Frame")
local Ender = Instance.new("Frame")
local Title = Instance.new("TextLabel")

--Properties:

Notification.Name = "Notification"
Notification.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Notification.ResetOnSpawn = false

thing.Name = "thing"
thing.Parent = Notification
thing.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
thing.BorderSizePixel = 0
thing.Position = UDim2.new(1, 0, 0.25, 0)
thing.Size = UDim2.new(0, 0, 0, 60)
thing.ClipsDescendants = true
thing.AnchorPoint = Vector2.new(1, 0)

Ender.Name = "Ender"
Ender.Parent = thing
Ender.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Ender.BorderSizePixel = 0
Ender.Position = UDim2.new(-0.00432436168, 0, 0, 0)
Ender.Size = UDim2.new(0, 15, 0, 60)

Title.Name = "Title"
Title.Parent = thing
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0717568919, 0, 0.166666672, 0)
Title.Size = UDim2.new(0, 0, 0, 40)
Title.Font = Enum.Font.GothamBlack
Title.Text = name
Title.TextColor3 = Color3.fromRGB(216, 216, 216)
Title.TextSize = 16.000
Title.TextScaled = true
	thing:TweenSize(UDim2.new(0, 215, 0, 60),"Out","Sine",0.5) Title:TweenSize(UDim2.new(0,185,0,40),"Out","Sine",0.5)
	wait(3)
	thing:TweenSize(UDim2.new(0, 0, 0, 60),"In","Sine",0.5) Title:TweenSize(UDim2.new(0,0,0,40),"In","Sine",0.5)
    wait(1)
    Notification:Destroy()
end
function flingTP(cf)
    local plrc = game:service'Players'.LocalPlayer.Character
    local b = Instance.new("BodyGyro",plrc.HumanoidRootPart)
    local q = math.huge
    b.MaxTorque = Vector3.new(8500,8500,8500)
    b.P = 10000
    b.D = 2e2
    plrc.Humanoid.PlatformStand = true
    plrc.Humanoid:ChangeState(3)
    b.CFrame = CFrame.new(b.Parent.Position, Vector3.new(q,q,q))
    wait(0.125)
    plrc.HumanoidRootPart.CFrame = cf + Vector3.new(0,8,0) 
    b.CFrame = CFrame.new(b.Parent.Position, Vector3.new(q,q,q))
    wait(0.125)
    b:Destroy()
    plrc.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
    plrc.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0)
    plrc.HumanoidRootPart.CFrame = cf
    plrc.Humanoid.PlatformStand = false
    plrc.Humanoid:ChangeState(8)
    wait(0.2)
end
function lerpTP(cframe)
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p - cframe.p).Magnitude < 200 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
        else
            local plrc = game:service'Players'.LocalPlayer.Character
            local currentG = workspace.Gravity
            local original = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            local root = plrc.HumanoidRootPart
            cf = cframe
            wait(0.3)
            workspace.Gravity=0
            for i=0,1,1/((original.p-cf.p).magnitude / (14.44)) do
                if abort then break end
                root.CFrame = original:lerp(cf,i)
                root.Velocity=Vector3.new()
                game:service'RunService'.RenderStepped:wait()
                wait(0.02)
            end
            workspace.Gravity=currentG
            for i=1,5 do
                if abort then break end
                root.CFrame = cf
                wait(0.02)
            end
        wait(0.1)
    end
end
function RainbowTP(cframe)
    local XP = cframe.X
    local YP = cframe.Y
    local ZP = cframe.Z 
    -- Config How Many Blocks It Will Tp You Untill The Final Destination:
    local XTpEvery = 12
    local YTpEvery = 12
    local ZTpEvery = 12
    --Time to Tp Every:
    local Timer = 0.001
    local pos = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
    if pos.Position.X < XP then
    for x = pos.Position.X,XP,XTpEvery do
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,pos.Position.Y,pos.Position.Z))
    local part = Instance.new("Part", workspace)
    part.Anchored = true
    part.Size = Vector3.new(10,0.1,10)
    part.Material = "Glass"
    part.BrickColor = BrickColor.Random()
    part.Transparency = 0.7
    part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
    wait(Timer)
    part.Destroy(part)
    end
    else
    for x = pos.Position.X,XP,-XTpEvery do
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,pos.Position.Y,pos.Position.Z))
    local part = Instance.new("Part", workspace)
    part.Anchored = true
    part.Size = Vector3.new(10,0.1,10)
    part.Material = "Glass"
    part.BrickColor = BrickColor.Random()
    part.Transparency = 0.7
    part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
    wait(Timer)
    part.Destroy(part)
    end
    end
    if pos.Position.Z < ZP then
    for z = pos.Position.Z,ZP,ZTpEvery do
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X,pos.Position.Y,z))
    local part = Instance.new("Part", workspace)
    part.Anchored = true
    part.Size = Vector3.new(10,0.1,10)
    part.Material = "Glass"
    part.BrickColor = BrickColor.Random()
    part.Transparency = 0.7
    part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
    wait(Timer)
    part.Destroy(part)
    end
    else
    for z = pos.Position.Z,ZP,-ZTpEvery do
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X,pos.Position.Y,z))
    local part = Instance.new("Part", workspace)
    part.Anchored = true
    part.Size = Vector3.new(10,0.1,10)
    part.Material = "Glass"
    part.BrickColor = BrickColor.Random()
    part.Transparency = 0.7
    part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
    wait(Timer)
    part.Destroy(part)
    end
    end
    if pos.Position.Y < YP then
    for High = pos.Position.Y,YP,YTpEvery do
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X ,High ,pos.Position.Z))
    local part = Instance.new("Part", workspace)
    part.Anchored = true
    part.Size = Vector3.new(10,0.1,10)
    part.Material = "Glass"
    part.BrickColor = BrickColor.Random()
    part.Transparency = 0.7
    part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
    wait(Timer)
    part.Destroy(part)
    end
    else
    for High = pos.Position.Y,YP,-YTpEvery do
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X ,High ,pos.Position.Z))
    local part = Instance.new("Part", workspace)
    part.Anchored = true
    part.Size = Vector3.new(10,0.1,10)
    part.Material = "Glass"
    part.BrickColor = BrickColor.Random()
    part.Transparency = 0.7
    part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
    wait(Timer)
    part.Destroy(part)
    end
    end
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(XP + 5,YP,ZP + 5)
end

local delay = false
function spinTP(location)
    if delay == false then
        local bambam = Instance.new("BodyAngularVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
    	bambam.Name = tostring(math.huge)
	bambam.AngularVelocity = Vector3.new(0,211111,0)
	bambam.MaxTorque = Vector3.new(0,211111,0)
	bambam.P = math.huge
	local function PauseFling()
	    bambam.AngularVelocity = Vector3.new(0,0,0)
		bambam.MaxTorque = Vector3.new(0,0,0)
	end
    for i = 1,45 do
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid'.HipHeight = -6
       wait(0.01)
        game:GetService"Players".LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame =         game:GetService"Players".LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(math.random(-5,5),math.random(2.5,17.5),math.random(-5,5))
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid'.HipHeight = 0
    end
    PauseFling()
    bambam:Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location + Vector3.new(0,2000,0)
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
    delay = true
    wait(2.5)
    delay = false
else
    Notif("please wait between teleports with  spinTP...")
    wait(2.5)
    delay = false
end
end
local tpmethod = "" 
function Drag(It)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(It)
end

function UsingTP(cframe)
    if tpmethod ~= nil and tpmethod ~= "" then
    getfenv()[tpmethod](cframe)
else
    Notif("Set A TP Method In Settings")
    end
end
function woodtp(part,cframe)
    local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    flingTP(part.CFrame) -- or whatever
    
    part.Parent.PrimaryPart = part
    if (part.CFrame.p - cframe.p).magnitude < 350 then
        wait(.2)
        for i=1,2 do
        part.CFrame = cframe 
        game:service'ReplicatedStorage'.Interaction.ClientIsDragging:FireServer(part.Parent)
        game:service'ReplicatedStorage'.Interaction.ClientIsDragging:FireServer(part.Parent)
        UsingTP(cframe - Vector3.new(10.5,5,10.5))
        end
    else
        local plrc = game:service'Players'.LocalPlayer.Character
        local currentG = workspace.Gravity
        local root = plrc.HumanoidRootPart
        cf = cframe
      UsingTP(part.CFrame)
        wait(0.3)
        local original = old - Vector3.new(-10.5,math.max(0,60-root.CFrame.y),-10.5) 
        workspace.Gravity=0
        for i=0,1,1/((original.p-cf.p).magnitude / (14.44)) do
            if abort then break end
            root.CFrame = original:lerp(cf,i)
            part.CFrame = root.CFrame+ Vector3.new(10.5,5,10.5)
            game:service'ReplicatedStorage'.Interaction.ClientIsDragging:FireServer(part.Parent)
            root.Velocity=Vector3.new()
            game:service'RunService'.RenderStepped:wait()
            wait(0.02)
        end
        workspace.Gravity=currentG
        for i=1,5 do
            if abort then break end
            root.CFrame = cf
            wait(0.02)
        end
        wait(0.1)
    end
     UsingTP(cframe)  
    wait(0.2)
end     
function dupeaxes()
    local pos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
local plr = game.Players.LocalPlayer
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v.ClassName == "Part" then
            v:Destroy()
        end
    end
    for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if b.Name ~= "BlueprintTool" and b.Name == "Tool" then
            game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(b, "Drop tool", pos)
        end
    end
    plr.CharacterAdded:Wait()
    plr.Character:WaitForChild'HumanoidRootPart'
    wait(0.05)
    plr.Character.HumanoidRootPart.CFrame = pos
    plr.Backpack:WaitForChild("Tool")
    plr.Character.HumanoidRootPart.CFrame = pos
end
     

local Library  = loadstring(game:HttpGet('https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/Magik%20Hax%20Library'))()
local Main = Library.Category("-Main Cheats-","Main cheats used",Color3.fromRGB(0,204,204))
Main:Section("- Player Cheats -")
local jesusparts = Instance.new("Folder",workspace)
Main:Toggle("Walk On Water",function(State)
    _G.WOW = State

    if _G.WOW == true then
        for _,v in pairs(game.Workspace.Water:GetChildren()) do
            local pos = v.Position
            local size = v.Size
            local part = Instance.new("Part",jesusparts)
            part.Position = pos
            part.Size = size
            part.Anchored = true
            part.Transparency = 1
        end
         print("Success! Water has collision.")
    else
        for _,v in pairs(jesusparts:GetChildren()) do
            v:Destroy()
        end
         print("Success! Water no longer has collision.")
    end
end)


Main:Button("Rejoin Server",function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    
    ts:Teleport(game.PlaceId, p)
end)
Main:Button("Hard Drag",function()
    local player = game.Players.LocalPlayer
	local Character = player.Character or player.CharacterAdded:wait()
	local Humanoid = Character:WaitForChild("Humanoid")
	local walkSpeed = Humanoid.WalkSpeed
	game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.Dragger.Disabled = true
	_G.dragRangeMin = 5
	fivefour = coroutine.wrap(function()
	EKey = false
	QKey = false
	player:GetMouse().KeyDown:connect(function(key)
		if string.lower(key) == "e" then
			EKey = true
		elseif string.lower(key) == "q" then
			QKey = true
		end
	end)
	player:GetMouse().KeyUp:connect(function(key)
		if string.lower(key) == "e" then
			EKey = false
		elseif string.lower(key) == "q" then
			QKey = false
		end
	end)
	while wait(0.1) do
		if EKey then
			F = FVal
			FVal = FVal + 1000
			ChangeForce(F+1000)
			print(F)
		end
		if QKey then
			F = FVal
			FVal = FVal - 1000
			ChangeForce(F-1000)
			print(F)
		end
	end
	
	end)
	fivefour()
	local dragPart = Instance.new("Part",game.Players.LocalPlayer.PlayerGui)--game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.Dragger.Dragger
	dragPart.Size = Vector3.new(0.2,0.2,0.2)
	dragPart.BrickColor = BrickColor.new("Really red")
	player.CharacterAdded:connect(function()
		Character = player.Character
		Humanoid = Character:WaitForChild("Humanoid")
		Humanoid.Died:connect(function()
			dragPart.Parent = nil
		end)
	end)
	
	wait(1)
	local dragRangeMax = 500
	local dragRangeMin = _G.dragRangeMin
	
	local camera = workspace.CurrentCamera
	local mouse = player:GetMouse()
	
	local button1Down = false
	local dragRange = dragRangeMax
	FVal = 80000
	local bodyPosition = Instance.new("BodyPosition", dragPart)
	bodyPosition.maxForce = Vector3.new(1, 1, 1) * FVal
	bodyPosition.D = 1000
	bodyPosition.P = 4000
	function ChangeForce(F)
	if F > 0 then
	F = bodyPosition.maxForce.X+F
	bodyPosition.maxForce = Vector3.new(1, 1, 1) * F
	else
	F = bodyPosition.maxForce.X-F
	bodyPosition.maxForce = Vector3.new(1, 1, 1) * F
	end
	end
	
	local bodyGyro = Instance.new("BodyGyro", dragPart) 
	bodyGyro.maxTorque = Vector3.new(1, 1, 1) * 200 --4000 -- * 0.000012
	bodyGyro.P = 1200
	bodyGyro.D = 140 --15
	
	--bodyPosition.P = bodyPosition.P * 1/19
	--bodyPosition.D = bodyPosition.D  * 1/19
	--bodyGyro.P = bodyGyro.P * 1/19
	--bodyGyro.D = bodyGyro.D  * 1/19
	
	local rotateCFrame = CFrame.new()
	
	local weld = Instance.new("Weld", dragPart)
	
	--local interactPermission = require(game.ReplicatedStorage.Interaction.InteractionPermission)
	local clientIsDragging = game.ReplicatedStorage.Interaction.ClientIsDragging
	
	local carryAnimationTrack
	
	
	--------------------------------[[ Drag Main ]]------------------------------------
	
	local draggingPart = false
	
	function click()
		button1Down = true
	
		local targetObject = game.Players.LocalPlayer:GetMouse().Target
		if not canDrag(targetObject) then
			return
		end
		
		local mouseHit = game.Players.LocalPlayer:GetMouse().Hit.p
		if (mouseHit - Character.Head.Position).magnitude > dragRangeMax then
			return
		end
		
		initializeDrag(targetObject, mouseHit)
		rotateCFrame = CFrame.new()
		
		carryAnimationTrack:Play(0.1, 1, 1)
		
		local dragIsFailing = 0 
		local dragTime = 0
		
		
		while button1Down and canDrag(targetObject) do
			local desiredPos = Character.Head.Position + (game.Players.LocalPlayer:GetMouse().Hit.p - Character.Head.Position).unit * dragRange
			
			local dragRay = Ray.new(Character.Head.Position, desiredPos - Character.Head.Position)
			local part, pos = workspace:FindPartOnRayWithIgnoreList(dragRay, {Character, dragPart, targetObject.Parent})
			
			if part then
				desiredPos = pos
			end
			
			if (camera.CoordinateFrame.p - Character.Head.Position).magnitude > 2 then
				desiredPos = desiredPos + Vector3.new(0, 1.8, 0)
			end
			
			moveDrag(desiredPos)
			bodyGyro.cframe = CFrame.new(dragPart.Position, camera.CoordinateFrame.p) * rotateCFrame
			
			local targParent = findHighestParent(targetObject) or targetObject		
			
			local attemptingToSurf  = false
			for _, check in pairs({{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0.7, -2.8, 0)).p, Vector3.new(0, -2, 0))}, 
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0.35, -2.8, 0)).p, Vector3.new(0, -2, 0))}, 
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0, -2.8, 0)).p, Vector3.new(0, -2, 0))},
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0.35, -2.8, 0)).p, Vector3.new(0, -2, 0))}, 
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(-0.7, -2.8, 0)).p, Vector3.new(0, -2, 0))}, 
								
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0.35, -2.8, 0.6)).p, Vector3.new(0, -2, 0))}, 
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0, -2.8, 0.6)).p, Vector3.new(0, -2, 0))},
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0.35, -2.8, 0.6)).p, Vector3.new(0, -2, 0))}, 
								
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0.35, -2.8, -0.6)).p, Vector3.new(0, -2, 0))}, 
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0, -2.8, -0.6)).p, Vector3.new(0, -2, 0))},
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0.35, -2.8, -0.6)).p, Vector3.new(0, -2, 0))}, 
								
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0.5, -0.8, 0)).p, Character.HumanoidRootPart.CFrame.lookVector), State = Enum.HumanoidStateType.Climbing},
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(-0.5, -0.8, 0)).p, Character.HumanoidRootPart.CFrame.lookVector), State = Enum.HumanoidStateType.Climbing},
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(0.5, -1.3, 0)).p, Character.HumanoidRootPart.CFrame.lookVector), State = Enum.HumanoidStateType.Climbing},
								{Ray = Ray.new((Character.HumanoidRootPart.CFrame * CFrame.new(-0.5, -1.3, 0)).p, Character.HumanoidRootPart.CFrame.lookVector), State = Enum.HumanoidStateType.Climbing}
										
						}) do
			
				local ray = check.Ray
				local part, _ = workspace:FindPartOnRayWithIgnoreList(ray, {Character})
				local op = part
				part = part and findHighestParent(part)
				
				if part and (not check.State or Humanoid:GetState() == check.State) then
					if part == targParent then
						attemptingToSurf = true
					else
						for _, connectedPart in pairs(op:GetConnectedParts(true)) do
	
							if connectedPart == targetObject--[[targParent]] then
								attemptingToSurf = true
								break
							end
						end
					end
	
					if attemptingToSurf then
						break
					end
				end
			end
			
			
			
			
			
			local falling = Humanoid:GetState() == Enum.HumanoidStateType.Freefall or Humanoid:GetState() == Enum.HumanoidStateType.FallingDown--not part1 and not part2
			
			
			if attemptingToSurf then
				dragIsFailing = 0
			elseif falling then
				dragIsFailing = 0
			elseif (dragPart.Position - desiredPos).magnitude > 5 then
				dragIsFailing = 0
			else
				dragIsFailing = 0
			end
			if dragIsFailing > 16 then
				break
			end
			
			
			if dragTime % 10 == 0 and targParent.Parent:FindFirstChild("BedInfo") and targParent.Parent:FindFirstChild("Main") then
				game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.Parent.Scripts.VehicleControl.SetVehicleOwnership:Fire(targParent.Parent.Main)
			end
			
			clientIsDragging:FireServer(targParent.Parent)
			
			wait()
			dragTime = 0
		end
		
		carryAnimationTrack:Stop()
		
		endDrag()
	end
	
	
	function findHighestParent(child)
		if not child or not child.Parent or child.Parent == workspace then
			return nil
		end
		
		local ret = child.Parent:FindFirstChild("Owner") and child
		return findHighestParent(child.Parent) or ret
	end
	
	
	
	function clickEnded()
		button1Down = false
	end
	
	function holdDistanceChanged()
		dragRange = dragRangeMax--[[_G.dragRangeMin + (1 - dist) * (dragRangeMax - _G.dragRangeMin)]]
	end
	
	
	function canDrag(targetObject)
		
		
		if not (targetObject and not targetObject.Anchored and targetObject.Parent and Humanoid.Health > 0) then -- General conditions
			return false
		end
		
		if targetObject.Name == "LeafPart" then
			return false
		end
		
		local originTargetObject = targetObject
		targetObject = findHighestParent(targetObject) or targetObject
		
		bodyGyro.Parent = dragPart
		
		
		--[[if not (targetObject.Parent:FindFirstChild("Owner") or targetObject.Parent.Parent:FindFirstChild("Owner")) then
			return otherDraggable(targetObject, originTargetObject)
		end]]
	
		if targetObject.Parent:FindFirstChild("Owner") or targetObject.Parent.Parent:FindFirstChild("Owner") then
			return true
		end
		
		if targetObject.Parent:FindFirstChild("TreeClass") then -- Wood class
			return true
		end
		if targetObject.Parent:FindFirstChild("BoxItemName") then -- Shop items
			return true
		end
		if targetObject.Parent:FindFirstChild("PurchasedBoxItemName") then -- Purchased box items
			return true
		end
		if targetObject.Parent:FindFirstChild("Handle") then -- Tool items
			return true
		end
		
		return otherDraggable(targetObject, originTargetObject)
	end
	
	function otherDraggable(targetObject, originTargetObject)
		local draggable = targetObject and targetObject.Parent and targetObject.Parent:FindFirstChild("DraggableItem") or originTargetObject and originTargetObject.Parent and originTargetObject.Parent:FindFirstChild("DraggableItem")
		if draggable then -- Other stuff
			if draggable:FindFirstChild("NoRotate") then
				bodyGyro.Parent  = nil
			end
			return true
		end
	end
	
	function initializeDrag(targetObject,mouseHit)
		draggingPart = true
		mouse.TargetFilter = targetObject and findHighestParent(targetObject) and findHighestParent(targetObject).Parent or targetObject
	
		dragPart.CFrame = CFrame.new(mouseHit, camera.CoordinateFrame.p)
	
		weld.Part0 = dragPart
		weld.Part1 = targetObject
		weld.C0 =  CFrame.new(mouseHit,camera.CoordinateFrame.p):inverse() * targetObject.CFrame
		weld.Parent = dragPart
		
		dragPart.Parent = workspace
	end
	
	function endDrag()
		mouse.TargetFilter = nil
		dragPart.Parent = nil
		draggingPart = false
	end
	
	--------------------------------[[ Do Prompt ]]------------------------------------
	
	
	local dragGuiState = ""
	function interactLoop()
		while true do
			wait()
			
			local newState = ""
			
			local mouseHit = game.Players.LocalPlayer:GetMouse().Hit.p
			local targetObject = game.Players.LocalPlayer:GetMouse().Target
			
			
			if draggingPart then
				newState = "Dragging"
			elseif canDrag(targetObject) and not button1Down and (mouseHit - Character.Head.Position).magnitude < dragRangeMax then
				newState = "Mouseover"
			end
			
			if true then-- not (newState == dragGuiState) then
				dragGuiState = newState
				setPlatformControls()
				
				if dragGuiState == "" then
					game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanDrag.Visible = false
					game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanRotate.Visible = false
				elseif dragGuiState ==  "Mouseover" then
					game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanDrag.Visible = true
					game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanRotate.Visible = false
				elseif dragGuiState ==  "Dragging" then
					game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanDrag.Visible = false
					game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanRotate.Visible = not (bodyGyro.Parent == nil) and (not player:FindFirstChild("IsChatting") or player.IsChatting.Value < 1)
				end
			end
			
		end
	end
	
	
	--------------------------------[[ Drag Moving ]]------------------------------------
	
	
	function moveDrag(pos)
		bodyPosition.position = pos
	end
	local rotateSpeedReduce = 0.036
	
	local lastRotateTick
	function crotate(amount, speed)
	
		if not draggingPart then
			if not player:FindFirstChild("IsChatting") or player.IsChatting.Value < 2 then
				Humanoid.WalkSpeed = walkSpeed
			end
			return
		end
		
		if Humanoid.WalkSpeed > 1 then
			walkSpeed = Humanoid.WalkSpeed
			Humanoid.WalkSpeed = 0
		end
		
		lastRotateTick = tick()
		local thisRotateTick = lastRotateTick
		
		while draggingPart and amount.magnitude > 0 and lastRotateTick == thisRotateTick do
			rotateCFrame = CFrame.Angles(0, -amount.X * rotateSpeedReduce, 0) * CFrame.Angles(amount.Y * rotateSpeedReduce, 0, 0) * rotateCFrame
			wait()
		end
		
		if amount.magnitude == 0 then
			if not player:FindFirstChild("IsChatting") or  player.IsChatting.Value < 2 then
				Humanoid.WalkSpeed = walkSpeed
			end
		end
	end
	
	--------------------------------[[ User Input ]]------------------------------------
	
	wait(1)
	
	carryAnimationTrack = Humanoid:LoadAnimation(game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.Dragger:WaitForChild("CarryItem"))
	
	--input = require(game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.Parent:WaitForChild("Scripts"):WaitForChild("UserInput"))
	
	game.Players.LocalPlayer:GetMouse().Button1Down:connect(function()
		click()
		holdDistanceChanged()
	end)
	game.Players.LocalPlayer:GetMouse().Button1Up:connect(function()
		clickEnded()
	end)
	--input.ClickBegan(click, holdDistanceChanged)
	--input.ClickEnded(clickEnded)
	
	--input.Rotate(crotate)
	
	
	function setPlatformControls()
			game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanDrag.PlatformButton.Image = game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanDrag.PlatformButton.PC.Value
			game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanDrag.PlatformButton.KeyLabel.Text = "CLICK"
			game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanRotate.PlatformButton.Image = game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanRotate.PlatformButton.PC.Value
			game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.CanRotate.PlatformButton.KeyLabel.Text = "SHIFT + WASD"
	end
	
	
	interactLoop()
end)
Main:Section("- Main Property Cheats -")
Main:Toggle("Auto Blacklist",function(State)
    _G.AB = State
end)
spawn(function()
    while wait() do
        if _G.AB == true then
            Mouse = game.Players.LocalPlayer:GetMouse()
            Client = game.ReplicatedStorage.Interaction.ClientSetListPlayer
            players = game.Players
            for i, v in pairs(players:GetPlayers()) do
                if v.Name ~= players.LocalPlayer.Name then
                    if _G.AB == true then
                    Client:InvokeServer(players.LocalPlayer.BlacklistFolder, v, true)
                    end
                end
            end
            players.PlayerAdded:connect(function(plr)
                if _G.AB == true then
                Client:InvokeServer(players.LocalPlayer.BlacklistFolder, plr, true)
                end
            end)
        end
    end
end)
Main:Toggle("Blacklist Bypass",function(State)
    _G.BB = State
    while wait(4) do
    if _G.BB == true then
        local plr = game.Players.LocalPlayer
    local cframe

    for i,v in next, workspace:GetDescendants() do
        if v:IsA("SpawnLocation") then
            v.Touched:Connect(function(h)
            if h.Parent == plr.Character and cframe then
                plr.Character:SetPrimaryPartCFrame(cframe)
                    end
                end)
            end
        end
            
            game:GetService("RunService"):BindToRenderStep("NO HACKS",Enum.RenderPriority.Last.Value,function()
                if game.Players.LocalPlayer.Character.PrimaryPart then
                    cframe = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
                end
            end)
            
                for i,v in next, debug.getregistry() do
                    if type(v)=='function' and debug.getupvalues(v).lastUpdate then
                        debug.setupvalue(v,"lastUpdate",math.huge)
                        break
                    end
                end
            
                for i,v in next, workspace.Effects:GetChildren() do
                    if v:IsA("BasePart") and v.Name == "BlacklistWall" then
                        if _G.BB == true then
                            v:Destroy()
                        end
                    end
            end
        end
    end
end)

Main:Button("Get All Blueprints",function()
    for i,v in pairs(game.ReplicatedStorage.Purchasables.Structures.BlueprintStructures:GetChildren()) do
        local clone = v:Clone()
        clone.Parent = game.Players.LocalPlayer.PlayerBlueprints.Blueprints
        end
end)
Main:Button("Max Land",function()
    for i, v in pairs(game:GetService("Workspace").Properties:GetChildren()) do
        if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            base = v
            square = v.OriginSquare
            end
        end
    function makebase(pos)
        local Event = game:GetService("ReplicatedStorage").PropertyPurchasing.ClientExpandedProperty
        Event:FireServer(base, pos)
        end
    spos = square.Position
    makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z))
    makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z))
    makebase(CFrame.new(spos.X, spos.Y, spos.Z + 40))
    makebase(CFrame.new(spos.X, spos.Y, spos.Z - 40))
    makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 40))
    makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 40))
    makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 40))
    makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 40))
    makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z))
    makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z))
    makebase(CFrame.new(spos.X, spos.Y, spos.Z + 80))
    makebase(CFrame.new(spos.X, spos.Y, spos.Z - 80))
    --Corners--
    makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 80))
    makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 80))
    makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 80))
    makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 80))
    --Corners--
    makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z + 80))
    makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z + 80))
    makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z + 40))
    makebase(CFrame.new(spos.X + 80, spos.Y, spos.Z - 40))
    makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z + 40))
    makebase(CFrame.new(spos.X - 80, spos.Y, spos.Z - 40))
    makebase(CFrame.new(spos.X + 40, spos.Y, spos.Z - 80))
    makebase(CFrame.new(spos.X - 40, spos.Y, spos.Z - 80))
end)
Main:Button("Free Land",function()
    for a,b in pairs(workspace.Properties:GetChildren()) do
    if b:FindFirstChild("Owner") and b:FindFirstChild("OriginSquare") and b.Owner.Value == nil then
        game.ReplicatedStorage.PropertyPurchasing.ClientPurchasedProperty:FireServer(b, b.OriginSquare.OriginCFrame.Value.p + Vector3.new(0,3,0))
 wait(0.5)
        Instance.new('RemoteEvent', game:service'ReplicatedStorage'.Interaction).Name = "Ban"
    for i,v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players.LocalPlayer then
            UsingTP(v.OriginSquare.CFrame + Vector3.new(0,10,0))

        end
    end
 
  --     game.Players.LocalPlayer.Character:MoveTo(b.OriginSquare.Position)
        break
    end
end
end)
local Wood = Library.Category("-Wood Cheats-","Wood Scripts",Color3.fromRGB(0,204,204))
Wood:Button("Sell logs",function()
    for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
            if Log.Owner.Value == game.Players.LocalPlayer then
                for i,v in pairs(Log:GetChildren()) do
                    if v.Name=="WoodSection" then
                        spawn(function()
                                wait()
                                
                                woodtp(v,CFrame.new(315, -0.296, 85.791))
  						        UsingTP(CFrame.new(315, -0.296, 85.791))
                        end)
                    end
                end
            end
        end
    end
end)
Wood:Button("Sell Planks",function()
    for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
        if Plank.Name == "Plank" and Plank:findFirstChild("Owner") then
            if Plank.Owner.Value == game.Players.LocalPlayer then
                for i,v in pairs(Plank:GetChildren()) do
                    if v.Name=="WoodSection" then
                        spawn(function()
                            woodtp(v,CFrame.new(315, -0.296, 85.791))
                            UsingTP(CFrame.new(315, -0.296, 85.791))
                        end)
                    end
                end

            end
        end
    end
end)
Wood:Button("TP Logs to Player",function()
     for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
            if Log.Owner.Value == game.Players.LocalPlayer then
                for i,v in pairs(Log:GetChildren()) do
                    if v.Name=="WoodSection" then
                        spawn(function()
                            local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                woodtp(v,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,15,0))
                        wait(0.1)
                        UsingTP(old)
                        end)
                    end
                end
            end
        end
    end
end)
Wood:Button("TP Planks to Player",function()
local save = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    for _, Plank in pairs(workspace.PlayerModels:GetChildren()) do
        if Plank.Name=="Plank" and Plank:findFirstChild("Owner") then
            if Plank.Owner.Value == game.Players.LocalPlayer then
                for i,v in pairs(Plank:GetChildren()) do
                    if v.Name=="WoodSection" then
                        woodtp(v,save)
                        wait(0.1)
                    end
                end
            end
        end
    end
    UsingTP(save)
end)
Wood:Button("Wood to Sawmill",function()
    SawmillC = false
Mouse = game.Players.LocalPlayer:GetMouse()
_G.MAIN= Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
local Instruction = Instance.new("TextLabel",_G.MAIN)
Instruction.Position = UDim2.new(0,200,0,400)
Instruction.Size = UDim2.new(0,250,0,50)
Instruction.TextWrapped = true
Instruction.TextScaled = true
Instruction.Text = "'Q' to select a tree, Press P to select a sawmill!(Credits to austin k) Select Tree first also works with any item as long as you select the sawmill after selecting the item."
Instruction.Active = true
Instruction.Draggable = true
Instruction.ZIndex = 2
local Exit = Instance.new("TextButton",Instruction)
Exit.Position=UDim2.new(1,0,0,0)
Exit.Size = UDim2.new(0,30,0,30)
Exit.Text = "Exit"
Exit.MouseButton1Click:connect(function()
_G.MAIN:Destroy()
end)
Mouse.KeyDown:connect(function(key)
if key:lower() == "q" then
Treee = Mouse.Target
end
end)
Mouse.KeyDown:connect(function(key)
if key:lower() == "p" then
if Mouse.Target.Parent:FindFirstChild("BlockageAlert") then
Sawmill = Mouse.Target.Parent 
else 
Sawmill=Mouse.Target.Parent.Parent
end
if Sawmill:FindFirstChild("BlockageAlert") and Sawmill:FindFirstChild("Owner") then
SawmillC = true
else
SawmillC = false
print"Something went wrong while setting the sawmill!"
end
if Treee ~= nil then
Mod(Treee)
else
print("Select tree with 'Q'!")
end
end
end)

function Mod(SelectedPart)
if SawmillC ~= true then 
print'Set the sawmill with "P"!'
return
end
if SelectedPart.Parent:FindFirstChild("TreeClass") and SelectedPart.Parent:FindFirstChild("Owner") then
print("Tree: "..SelectedPart.Parent.TreeClass.Value)
local Tree = SelectedPart.Parent
Tree.PrimaryPart = SelectedPart
game.ReplicatedStorage.Interaction.Verify:FireServer('Item owned by player',Tree)
Tree:SetPrimaryPartCFrame(Sawmill.Particles.CFrame)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Tree)
end
end
end)
Wood:Button("Mod Wood",function()
    for _, Log in pairs(workspace.LogModels:GetChildren()) do
	        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
	            if Log.Owner.Value == game.Players.LocalPlayer then
	                for i,v in pairs(Log:GetChildren()) do
	                    if v.Name=="WoodSection" then
	                        spawn(function()
	                            for i=1,10 do
	                                wait()
	                                v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
	                            end
	                        end)
	                    end
	                end
	                spawn(function()
	                    for i=1,20 do
	                        wait()
	                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log.WoodSection)
				game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Log.WoodSection)
	                    end
	                end)
	            end
	        end
	    end
	wait(2.0)
	    for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
	        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
	            if Log.Owner.Value == game.Players.LocalPlayer then
	                Log:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
	                for i=1,20 do
	                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log.WoodSection)
	                    game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(Log.WoodSection)
	                end
	            end
	        end
	    end
	
	SawmillC = false
	Mouse = game.Players.LocalPlayer:GetMouse()
	
	Mouse.KeyDown:connect(function(key)
	if key:lower() == "p" then
	Treee = Mouse.Target
	end
	end)
	Mouse.KeyDown:connect(function(key)
	if key:lower() == "m" then
	if Mouse.Target.Parent:FindFirstChild("BlockageAlert") then
	Sawmill = Mouse.Target.Parent 
	else 
	Sawmill=Mouse.Target.Parent.Parent
	end
	if Sawmill:FindFirstChild("BlockageAlert") and Sawmill:FindFirstChild("Owner") then
	SawmillC = true
	else
	SawmillC = false
	print"Something went wrong while setting the sawmill!"
	end
	if Treee ~= nil then
	Mod(Treee)
	else
	print("Select tree with 'p!")
	end
	end
	end)
	
	function Mod(SelectedPart)
	if SawmillC ~= true then 
	print'Set the sawmill with "m"!'
	return
	end
	if SelectedPart.Parent:FindFirstChild("TreeClass") and SelectedPart.Parent:FindFirstChild("Owner") then
	print("Tree: "..SelectedPart.Parent.TreeClass.Value)
	Tree = SelectedPart.Parent
	Tree.PrimaryPart = SelectedPart
	game.ReplicatedStorage.Interaction.Verify:FireServer('Item owned by player',Tree)
	Tree:SetPrimaryPartCFrame(Sawmill.Particles.CFrame)
	game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Tree)
	end
	end
end)

local function GetAxe() 
    if game.Players.LocalPlayer.Character:FindFirstChild("Tool") then 
        return game.Players.LocalPlayer.Character.Tool --returns the axe when found
    else 
        return false --returns false when not equiped
    end
end
local function GetDamage(Axe, TreeClass)
    if Axe.ToolTip == "Basic Hatchet" then return 0.2
    elseif Axe.ToolTip == "Plain Axe" then return 0.55
    elseif Axe.ToolTip == "Steel Axe" then return 0.93
    elseif Axe.ToolTip == "Hardened Axe" then return 1.45
    elseif Axe.ToolTip == "Silver Axe" then return 1.6
    elseif Axe.ToolTip == "Rukiryaxe" then return 1.68
    elseif Axe.ToolTip == "Beta Axe of Bosses" then return 1.45
    elseif Axe.ToolTip == "Alpha Axe of Testing" then return 1.5
    elseif Axe.ToolTip == "Fire Axe" then 
        if TreeClass ~= "Volcano" then return 0.6 else return 6.35 end
    elseif Axe.ToolTip == "End Times Axe" then 
        if TreeClass ~= "LoneCave" then return 1.58 else return 10000000 end
    elseif Axe.ToolTip == "Candy Cane Axe" then return 0
	elseif Axe.ToolTip == "Johiro" then return 1.8
    elseif Axe.ToolTip == "Beesaxe" then return 1.4
    elseif Axe.ToolTip == "CHICKEN AXE" then return 0.9
    elseif Axe.ToolTip == "Amber Axe" then return 3.39
    elseif Axe.ToolTip == "The Many Axe" then return 10.2
    elseif Axe.ToolTip == "Gingerbread Axe" then 
        if TreeClass == "Walnut" then return 8.5 
    elseif TreeClass == "Koa" then return 11 else return 1.2 end
    elseif Axe.ToolTip == "Bird Axe" then 
        if TreeClass ~= "Volcano" and TreeClass ~= "CaveCrawler" then return 0.5 else return 0.4 end
    end
end
_G.TreeList = {} 
for a,b in pairs(workspace:GetChildren()) do
    if b.name == "TreeRegion" then 
        b.ChildAdded:Connect(function(NewTree)--Creates functions that Adds new trees to the list
            table.insert(_G.TreeList, NewTree)
        end)
        for c,d in pairs(b:GetChildren()) do-- Adds the trees when first time starting the script 
            if d.Name == "Model" then
                table.insert(_G.TreeList, d)
            end
        end
    end
end
local function CutTree(Tree) 
    if GetAxe() ~= false then --checks if you have a axe equiped
        Damage = GetDamage(GetAxe(), Tree.TreeClass.Value) --gets the Damage
        local CutArguments = {
            sectionId = 1,
            faceVector = Vector3.new(0,0,-1),
            height = 0.5,
            hitPoints = Damage,
            cooldown = 0,
            cuttingClass = "Axe",
            tool = GetAxe()
        }
        for i=1, 50 do
            game.ReplicatedStorage.Interaction.RemoteProxy:FireServer(Tree.CutEvent, CutArguments)
        end
    end
end
Wood:Slider("Tree Aura Range",10,200,true,function(x)
    _G.Range = x
end)
_G.Range = 30
Wood:Toggle("Tree Aura",function(State)
    _G.TAura = State
    while wait(.5) do 
        if _G.TAura == true then 
            if GetAxe() ~= false then 
                for a,b in pairs(_G.TreeList) do
                    if not b:FindFirstChild("RootCut") and b:FindFirstChild("CutEvent") then 
                        distance = (game.Players.LocalPlayer.Character.Head.Position - b.WoodSection.Position).magnitude 
                        if distance < _G.Range then 
                            CutTree(b) 
                        end
                    else 
                        table.remove(_G.TreeList, a)
                    end
                end
            end
        end
    end
end)
local Player = Library.Category("-Player Cheats-","Player cheats used",Color3.fromRGB(0,204,204))
Player:Section("- Player Cheats -")
_G.Walk = 16
Player:Slider("WalkSpeed",16,200,true,function(x)
    _G.Walk = x
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid ~= nil then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.Walk
    end end)
end)
_G.Jump = 50
Player:Slider("JumpPower",50,300,true,function(x)
    _G.Jump = x
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
         if game.Players.LocalPlayer.Character.Humanoid ~= nil then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = _G.Jump
   end end)
end)
_G.Grav = 196.2
Player:Slider("Gravity",32,196.2,true,function(x)
    _G.Grav = x
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        workspace.Gravity = _G.Grav
    end)
end)
Player:Button("Reset Gravity",function()
   _G.Grav = 196.2
end)
Player:Toggle("Noclip",function(State)
    _G.Noclip = State
end)
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Noclip == true then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        else
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(18)
        end
    end)
end)
Player:Toggle("Ctrl Click TP",function(State)
    _G.CCTP = State
    
    if _G.CCTP == true then
        local Plr = game:GetService("Players").LocalPlayer
        local Mouse = Plr:GetMouse()
        
        Mouse.Button1Down:connect(function()
            if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
            if _G.CCTP == true then
                if not Mouse.Target then return end
                UsingTP(CFrame.new(Mouse.Hit.p.X,Mouse.Hit.p.Y,Mouse.Hit.p.Z))
            end
        end)
    end
end)
Player:Toggle("Infinite Jump",function(State)
    _G.InfJump = State

    game:GetService("UserInputService").JumpRequest:connect(function()
        if _G.InfJump then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            wait()
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")

        end
    end)
end)

Player:Slider("Car Speed",1,100,true,function(x)
    _G.CarSpeed = x
end)
_G.CarSpeed = 4.5
spawn(function()
    while wait() do
        for cu,cU in pairs(game.Workspace.PlayerModels:GetChildren())do 
            if cU:findFirstChild("DriveSeat") and cU:findFirstChild("Configuration") ~= nil then 
                cU:WaitForChild("Configuration").MaxSpeed.Value= _G.CarSpeed/3
            end 
        end
    end
end)
Player:Box("Teleport to Player","Name",function(Name)
    _G.TPTO = Name
    if _G.TPTO ~= nil and _G.TPTO ~= "" then
            for i,v in pairs(game.Players:GetChildren()) do
                if v ~= game.Players.LocalPlayer then
                    if string.sub(string.lower(v.Name), 1, string.len(_G.TPTO)) == string.lower(_G.TPTO) then
                        UsingTP(workspace[v.Name].HumanoidRootPart.CFrame)
                    end
                end
             end
        end
end)
_G.Lowered = false
Player:Toggle("Lower Bridge (free)",function(State)
    _G.Lowered = State
    
end)
Player:Toggle("Delete Boulders",function(State)
    _G.DB = State
    
    if _G.DB == true then
    for i,v in pairs(workspace.Region_Snow.PartSpawner:GetChildren()) do
        if v.Name == "Boulder" then
            v.Transparency = 1
            v.CanCollide = false
        end 
    end
    else
    for i,v in pairs(workspace.Region_Snow.PartSpawner:GetChildren()) do
        if v.Name == "Boulder" then
            v.Transparency = 0
            v.CanCollide = true
        end 
    end
    end
end)
spawn(function()
    while wait() do
         if _G.Lowered == true then
             local bridge = workspace.Bridge
             bridge.VerticalLiftBridge.Lift.PrimaryPart = bridge.VerticalLiftBridge.Lift.Base
             if bridge.VerticalLiftBridge.Lift.PrimaryPart.CFrame ~= CFrame.new(113.599945, 6.50052643, -883.000061, -1, 0, 0, 0, 1, 0, 0, 0, -1) then
                 bridge.VerticalLiftBridge.Lift.PrimaryPart.CFrame = CFrame.new(113.599945, 6.50052643, -883.000061, -1, 0, 0, 0, 1, 0, 0, 0, -1)
             end
        else 
            local bridge = workspace.Bridge
             bridge.VerticalLiftBridge.Lift.PrimaryPart = bridge.VerticalLiftBridge.Lift.Base
             if bridge.VerticalLiftBridge.Lift.PrimaryPart.CFrame ~= CFrame.new(113.599945, 32.5005264, -883.000061, -1, 0, 0, 0, 1, 0, 0, 0, -1) then
                 bridge.VerticalLiftBridge.Lift.PrimaryPart.CFrame = CFrame.new(113.599945, 32.5005264, -883.000061, -1, 0, 0, 0, 1, 0, 0, 0, -1)
             end
         end
        
    end
end)
local Teleports = Library.Category("-Teleports-","Teleport In the game",Color3.fromRGB(0,204,204))
local WayPoints = {
	["Wood R Us"] = CFrame.new(265, 5, 57),
	["SpawnPoint"] = CFrame.new(155, 5, 74),
	["Land Store"] = CFrame.new(258, 5, -99),
	["Link's Logic"] = CFrame.new(4607, 9, -798),
	["Cave"] = CFrame.new(3581, -177, 430),
	["Volcano"] = CFrame.new(-1585, 625, 1140),
	["Swamp"] = CFrame.new(-1209, 138, -801),
	["Palm Island"] = CFrame.new(2549, 5, -42),
	["Fancy Furnishings"] = CFrame.new(491, 13, -1720),
	["Boxed Cars"] = CFrame.new(509, 5.2, -1463),
	["Fine Arts Shop"] = CFrame.new(5207, -156, 719),
	["Bob's Shack"] = CFrame.new(260, 10, -2542),
	["Dock"] = CFrame.new(1114, 3.2, -197),
	["Bridge"] = CFrame.new(113, 15, -977),
	["End Times"] = CFrame.new(113, -204, -951),
	["Shrine Of Sight"] = CFrame.new(-1600, 205, 919),
	["The Den"] = CFrame.new(323, 49, 1930),
	["Volcano Win"] = CFrame.new(-1675, 358, 1476),
	["Ski Lodge"] = CFrame.new(1244, 66, 2306),
	["Strange Man"] = CFrame.new(1061, 20, 1131),
	["Frost Tree"] = CFrame.new(1448.3, 413, 3185.2),
	["SnowGlow Tree"] = CFrame.new(-1105.9, -6, -894)
        }
    
Teleports:Section("- Main Teleports -")
Teleports:Button("Spawn",function()
    UsingTP(CFrame.new(155, 5, 74))
end)
Teleports:Button("Base",function()
    for i,v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players.LocalPlayer then
            UsingTP(v.OriginSquare.CFrame + Vector3.new(0,5,0))
        end
    end
end)
Teleports:Button("Wood R Us",function()
    UsingTP(CFrame.new(265, 5, 57))
end)
Teleports:Button("Land Store",function()
    UsingTP(CFrame.new(258, 5, -99))
end)
Teleports:Button("Fancy Furnishings",function()
    UsingTP(CFrame.new(491, 13, -1720))
end)
Teleports:Button("Boxed Cars",function()
    UsingTP(CFrame.new(509, 5.2, -1463))
end)
Teleports:Button("Link's Logic",function()
    UsingTP(CFrame.new(4607, 9, -798))
end)
Teleports:Button("Dock",function()
    UsingTP(CFrame.new(1114, 3.2, -197))
end)
Teleports:Button("Bridge",function()
    UsingTP(CFrame.new(113, 15, -977))
end)
Teleports:Button("Fine Arts",function()
    UsingTP(CFrame.new(5207, -156, 719))
end)
Teleports:Button("Bob's Shack",function()
    UsingTP(CFrame.new(260, 10, -2542))
end)
Teleports:Button("Ski Lodge",function()
    UsingTP(CFrame.new(1244, 66, 2306))
end)
Teleports:Button("Den",function()
    UsingTP(CFrame.new(323, 49, 1930))
end)
Teleports:Button("Strange Man",function()
    UsingTP(CFrame.new(1061, 20, 1131))
end)
Teleports:Button("Shrine Of Sight",function()
    UsingTP(CFrame.new(-1600, 205, 919))
end)
Teleports:Section("- Wood  Teleports -")
Teleports:Button("Swamp Wood",function()
    UsingTP(CFrame.new(-1209, 138, -801))
end)
Teleports:Button("Ice Wood",function()
    UsingTP(CFrame.new(1448.3, 413, 3185.2))
end)
Teleports:Button("Lava Wood",function()
    UsingTP(CFrame.new(-1585, 625, 1140))
end)
Teleports:Button("Gold Wood",function()
    UsingTP(CFrame.new(-1209, 138, -801))
end)
Teleports:Button("Blue Wood",function()
    UsingTP(CFrame.new(3581, -177, 430))
end)
Teleports:Button("Palm Wood",function()
    UsingTP(CFrame.new(2549, 5, -42))
end)
Teleports:Button("Yellow Wood",function()
    UsingTP(CFrame.new(-1105.9, -6, -894))
end)
Teleports:Button("Phantom Wood",function()
    UsingTP(CFrame.new(113, -204, -951))
end)
Teleports:Button("Spook Wood",function()
    local function notif(t1, text)
	    local gui = game:GetService("Players").LocalPlayer.PlayerGui.OnboardingGUI.Onboarding
	    gui.Main.Heading.Text = t1
	    gui.Main.Heading.DropShadow.Text = t1
	    gui.Main.BodyText.Text = text
	    gui.Visible = true
	end
	local tree = false
	notif("Finder", "Searching for Spook Tree")
	wait(0.5)
	notif("Finder", "Searching for Spook Tree")
	wait(0.5)
	notif("Finder", "Searching for Spook Tree")
	for i, v in ipairs(game.Workspace:GetChildren()) do
	    if v.Name == "TreeRegion" then
	        for j, k in ipairs(v:GetChildren()) do
	            if k:FindFirstChild("TreeClass") ~= nil and k.TreeClass.Value == "Spooky" then
					UsingTP(k.WoodSection.CFrame)
	               notif("Finder", "Found Spook tree!")
					tree = true
					break
				else
				notif("Finder", "No Spook trees found.")
	            end
	        end
	    end
	end
	if tree == false then
	wait(0.5)
	notif("Finder", "No Spook trees found.")
	wait(0.5)
	notif("Finder", "No Spook trees found.")
	wait(0.5)
	notif("Finder", "No Spook trees found.")
	wait(0.5)
	notif("Finder", "No Spook trees found.")
	elseif tree == true then 
	wait(0.5)
	notif("Finder", "Found Spook tree!")
	wait(0.5)
	notif("Finder", "Found Spook tree!")
	wait(0.5)
	notif("Finder", "Found Spook tree!")
	wait(0.5)
	notif("Finder", "Found Spook tree!")
	end
	if tree == false then 
		notif("Finder", "No Spook trees found.")
	elseif tree == true then 
		notif("Finder", "Found Spook tree!")
	end
end)
local Dupe = Library.Category("-Dupe-","Dupe Scripts",Color3.fromRGB(0,204,204))
local MoneyCooldown = false
local CurrentSlot = game.Players.LocalPlayer:WaitForChild("CurrentSaveSlot").Value
local ScriptLoadOrSave = false
local CurrentlySavingOrLoading = game.Players.LocalPlayer:WaitForChild("CurrentlySavingOrLoading")
function CheckIfSlotAvailable(Slot)
	for a,b in pairs(game.ReplicatedStorage.LoadSaveRequests.GetMetaData:InvokeServer(game.Players.LocalPlayer)) do 
		if a == Slot then 
			for c,d in pairs(b) do 
				if c == "NumSaves" and d ~= 0 then 
					return true
				else
					return false
				end
			end
		end
	end
end
Dupe:Box("Slot","1-6",function(x)
    _G.Slot = x
end)
function CheckSlotNumber() --Checks if the slot number is right
    if  _G.Slot == "1" or  _G.Slot == "2" or  _G.Slot == "3" or _G.Slot == "4" or _G.Slot == "5" or _G.Slot == "6" then
		local SlotNumber = tonumber(_G.Slot)
		return SlotNumber
		else return false
	end
end
function SendNotification(Text) -- Sends Notification in the bottom right of the screen
	Notif(Text)
end
Dupe:Button("Save Slot",function()
    local CheckSlot = CheckSlotNumber()
	if CheckSlot ~= false then
		if CurrentSlot ~= -1 then
			ScriptLoadOrSave = true
			local SaveSlot = game.ReplicatedStorage.LoadSaveRequests.RequestSave:InvokeServer(CheckSlot)
			if SaveSlot == true then
				SendNotification("Saved your Slot")
				wait(.5)
				ScriptLoadOrSave = false
			elseif SaveSlot == false then
				SendNotification("Saving/Loading is currently in Progress")
				wait(.5)
				ScriptLoadOrSave = false
			end
		else
			SendNotification("Load Your Slot First before saving")
		end
	else
		SendNotification("Enter your Slot")
	end
end)
Dupe:Button("Load Slot",function()
    ScriptLoadOrSave = true
	local CheckSlot = CheckSlotNumber()
	if CheckSlot ~= false then
		if CheckIfSlotAvailable(CheckSlot) == true then
			local LoadSlot = game.ReplicatedStorage.LoadSaveRequests.RequestLoad:InvokeServer(CheckSlot)
			if LoadSlot == false then
				Notif("You aren't abled to load now")
			end
			if LoadSlot == true then 
				SendNotification("Loaded Your Slot")
				CurrentSlot = CheckSlot
			end
		else
			SendNotification("This Slot is not Available, please choose another slot")
		end
	else
		SendNotification("Enter a Valid slot")
	end
	ScriptLoadOrSave = false
end)
local SavedAxes = Instance.new("Folder",game.ReplicatedStorage)
Dupe:Button("Dupe Axes",function()
    dupeaxes()
end)
Dupe:Toggle("Loop Dupe Axes",function(State)
    _G.LDA = State
end)
spawn(function()
    while wait() do
        if _G.LDA == true then
            while _G.LDA == true and wait() do
                dupeaxes()
            end
        end
    end
end)
Dupe:Button("Store Axes",function()
    Amount = 0
	for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
		if b.Name ~= "BlueprintTool" and b.Name == "Tool" then
			b.Parent = SavedAxes
			Amount = Amount + 1
		end
	end
	SendNotification("Stored "..Amount.." Axes, you can restore them later")
end)
Dupe:Button("Restore Axes",function()
    Amount = 0
	for a,b in pairs(SavedAxes:GetChildren()) do
		if b.Name ~= "BlueprintTool" and b.Name == "Tool" then
			b.Parent = game.Players.LocalPlayer.Backpack
			Amount = Amount + 1
		end
	end
	SendNotification("Restored "..Amount.." Axes that you Stored")
end)
Dupe:Button("Count Axes",function()
    Amount = 0
	for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if b.Name ~= "BlueprintTool" and b.Name == "Tool" then
			Amount = Amount + 1
		end
	end
	SendNotification("You have "..Amount.." Axes in your Backpack")
end)
Dupe:Button("Drop Axes",function()
    Amount = 0
	for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if b.Name ~= "BlueprintTool" and b.Name == "Tool" then
			game.ReplicatedStorage.Interaction.ClientInteracted:FireServer(b, "Drop tool", game.Players.LocalPlayer.Character.Head.CFrame)
			Amount = Amount + 1
		end
	end
	SendNotification("Dropped "..Amount.." Axes from your Backpack")
end)
Dupe:Button("Dupe Money",function()
    if MoneyCooldown == true then
		SendNotification("Wait for your Money to come back")
		return
	elseif MoneyCooldown == false then
		MoneyCooldown = true
		SendNotification("Wait about 2 minutes for your Money to come back")
		game.ReplicatedStorage.Transactions.ClientToServer.Donate:InvokeServer(game.Players.LocalPlayer, game.Players.LocalPlayer.leaderstats.Money.Value, 1)
		SendNotification("You received your money that you have sent earlier")
		MoneyCooldown = false
	end
end)
spawn(function()
while wait(.15) do
	if CurrentlySavingOrLoading.Value == true and ScriptLoadOrSave == false then
		repeat 
		wait(1)
		until CurrentlySavingOrLoading.Value == false
		wait(1)
		CurrentSlot = game.Players.LocalPlayer.CurrentSaveSlot.Value
		print(CurrentSlot)
	end
end
end)
local Misc = Library.Category("-Miscellaneous-","UnDefined Scripts",Color3.fromRGB(0,204,204))
Misc:Button("Always Day",function()
	game.Lighting.Changed:connect(function()
		game.Lighting.TimeOfDay = "12:00:00"
		game.Lighting.FogEnd = 9999
		game.Lighting.Brightness = 1
	end)
end)
Misc:Button("Leak Items",function()
    game.ReplicatedStorage.Purchasables:Clone().Parent = game.Workspace.PlayerModels
end)
Misc:Button("Bring Mountain",function()
    for i = 1,2 do
    local Forces = {}
    local plr = game:service'Players'.LocalPlayer
    local part = workspace["Region_Mountainside"].SlabRegen.Slab.Slider
    if part == nil then error'slider not found' end
    local os = part.Size
    if part.Parent:FindFirstChild("PushMe") then
    os = Vector3.new(os.X, part.Parent.PushMe.CFrame.Y, os.Z)
    part.Parent.PushMe:Destroy()
    end
    part.Size = Vector3.new(1,.2,1)
    part.CanCollide = false
    if part:FindFirstChild'Weld' ~= nil then
        part.Weld:Destroy()
    end
    wait(1)
    part.CFrame = part.CFrame + Vector3.new(0,1,0)
    if plr.Character:FindFirstChild('Head') and part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(plr.Character) then
        for i,c in pairs(part:GetChildren()) do
            if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
                c:Destroy()
            end
        end
        local ForceInstance = Instance.new("BodyPosition", part)
        ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        ForceInstance.P = 10000
        table.insert(Forces, ForceInstance)
    end
    plr.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
    plr.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
    local ccf = plr.Character.HumanoidRootPart.CFrame
    for i,c in pairs(Forces) do
        local det = plr.Character.Torso.Position
        c.Position = plr.Character.Torso.Position
        local did = false
        c.Changed:connect(function()
            if (c.Position-det).Magnitude <= 60 and not did then
                did = true
                wait(0.1)
                c:Destroy()
                part.Orientation = Vector3.new(0,0,0)
                part.Size = os
                part.CanCollide = true
            end
        end)
    end
    flingTP(CFrame.new(ccf.X+5,ccf.Y+3,ccf.Z+5))
    end
end)
local Bring = Library.Category("-Bring Wood-","Bring Wood Scripts",Color3.fromRGB(0,204,204))
function GetTree(Wood, PlayerName, Quantitys)
    local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local Counter = 0
    local HitPoints={
    ['Beesaxe']= 1.4;
    ['AxeAmber']= 3.39;
    ['ManyAxe']= 10.2;
    ['BasicHatchet']= 0.2;
    ['Axe1']= 0.55;
    ['Axe2']= 0.93;
    ['AxeAlphaTesters']= 1.5;
    ['Rukiryaxe']= 1.68;
    ['Axe3']= 1.45;
    ['AxeBetaTesters']= 1.45;
    ['FireAxe']= 0.6;
    ['SilverAxe']= 1.6;
    ['EndTimesAxe']= 1.58;
    ['AxeChicken']= 0.9;
    ['CandyCaneAxe']= 0;
    ['AxeTwitter']= 1.65
    }
    function axe(Val)
    local A_1 = Val.CutEvent
    local A_2 = 
    {
        ["tool"] = game.Players.LocalPlayer.Character:FindFirstChild("Tool"), 
        ["faceVector"] = Vector3.new(0, 0, -1), 
        ["height"] = 0.3, 
        ["sectionId"] = 1, 
        ["hitPoints"] = HitPoints[game.Players.LocalPlayer.Character:FindFirstChild("Tool").ToolName.Value], 
        ["cooldown"] = 0.112, 
        ["cuttingClass"] = "Axe"
    }
    local Event = game:GetService("ReplicatedStorage").Interaction.RemoteProxy
    Event:FireServer(A_1, A_2)
    end
    local Ps = nil
    for i, v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players[PlayerName] then
            Ps = old + Vector3.new(0,15,0)
        end
    end
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v:FindFirstChild("TreeClass") and v.TreeClass.Value == Wood and v.Name == "Model" then
                UsingTP(v.WoodSection.CFrame)
                _G.broke = false
                repeat
                    wait(0.112)
                    if v:FindFirstChild("CutEvent") ~= nil then
                    axe(v)
                    else
                        _G.AlowedFin = true
                    end
                    broken = 0
                until _G.AlowedFin == true
                _G.AlowedFin = false
                Notif("Chopped "..Wood.." Tree")
                for i,v in pairs(Workspace.LogModels:GetChildren()) do
                    if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer and v.TreeClass.Value == Wood then
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                        v.PrimaryPart = v:FindFirstChild('WoodSection')
    
                        woodtp(v.PrimaryPart,CFrame.new(Ps.X,Ps.Y,Ps.Z))
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
                    end
                end
                Counter = Counter + 1
                if Quantitys - Counter == 0 then
                    break
                end
                wait(0.2)
            end
        end
    
    wait(0.2)
 
    UsingTP(old)

    Notif("Teleported "..Wood.." Tree")


    end
Bring:Slider("Amount",1,5,true,function(x) _G.Amount = x end)
_G.Amount = 1
local gold = Bring:Button("Gold Wood",function()
    GetTree("GoldSwampy", "LocalPlayer", _G.Amount)
end)
local green = Bring:Button("Green Wood",function()
    GetTree("GreenSwampy", "LocalPlayer", _G.Amount)
end)
local blue = Bring:Button("Blue Wood",function()
    GetTree("CaveCrawler", "LocalPlayer", _G.Amount)
end)
local Frost = Bring:Button("Frost Wood",function()
    GetTree("Frost", "LocalPlayer", _G.Amount)
end)
local Koa = Bring:Button("Koa Wood",function()
    GetTree("Koa", "LocalPlayer", _G.Amount)
end)
local Oak = Bring:Button("Oak Wood",function()
    GetTree("Oak", "LocalPlayer", _G.Amount)
end)
local Volcano = Bring:Button("Volcano Wood",function()
    GetTree("Volcano", "LocalPlayer", _G.Amount)
end)
local SnowGlow = Bring:Button("SnowGlow Wood",function()
    GetTree("SnowGlow", "LocalPlayer", _G.Amount)
end)
local Walnut = Bring:Button("Walnut Wood",function()
    GetTree("Walnut", "LocalPlayer", _G.Amount)
end)
local Birch = Bring:Button("Birch Wood",function()
    GetTree("Birch", "LocalPlayer", _G.Amount)
end)
local Generic = Bring:Button("Generic Wood",function()
    GetTree("Generic", "LocalPlayer", _G.Amount)
end)
local Cherry = Bring:Button("Cherry Wood",function()
    GetTree("Cherry", "LocalPlayer", _G.Amount)
end)
local Fir = Bring:Button("Fir Wood",function()
    GetTree("Fir", "LocalPlayer", _G.Amount)
end)
local Pine = Bring:Button("Pine Wood",function()
    GetTree("Pine", "LocalPlayer", _G.Amount)
end)
local SpookyNeon = Bring:Button("SpookyNeon Wood",function()
    GetTree("SpookyNeon", "LocalPlayer", _G.Amount)
end)
local Palm = Bring:Button("Palm Wood",function()
    GetTree("Palm", "LocalPlayer", _G.Amount)
end)
local Buy = Library.Category("-Autobuy-","Autobuy Scripts",Color3.fromRGB(0,204,204))
function BuyItem(name,Quantitys)
    local Item = name
    local Quant = Quantitys
    for i, v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players.LocalPlayer then
Base = v.OriginSquare
end
end
 
if not game.ReplicatedStorage:FindFirstChild("Part") then
local a = Instance.new("Part",game.ReplicatedStorage)
game.Workspace.PlayerModels.ChildAdded:connect(function(v)
local BaseC
for i, v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players.LocalPlayer then
BaseC = v.OriginSquare.CFrame + Vector3.new(0,5,0)
end
end
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
if string.find(v.Name, "Purchased by "..game.Players.LocalPlayer.Name) then
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v.PrimaryPart)
game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.PrimaryPart)
wait()
v.PrimaryPart.CFrame = BaseC
wait()
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v.PrimaryPart)
game.ReplicatedStorage.Interaction.ClientRequestOwnership:FireServer(v.PrimaryPart)
end
end
end)
end
 
if game.Workspace.Stores:FindFirstChild("ShopItems") then
for i,v in pairs(game.Workspace.Stores:GetDescendants()) do
if v.Parent.Name == "ShopItems" then
if v.Name == "Sawmill4L" then
v.Parent.Name = "WoodRUs_"
elseif v.Name == "Pickup1" then
v.Parent.Name = "CarStore_"
elseif v.Name == "LightBulb" then
v.Parent.Name = "FurnitureStore_"
elseif v.Name == "GateXOR" then
v.Parent.Name = "LogicStore_"
elseif v.Name == "CanOfWorms" then
v.Parent.Name = "ShackShop_"
elseif v.Name == "Painting8" then
v.Parent.Name = "FineArt_"
end
end
end
end
 
function Drag(It)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(It)
end
 
local Cframe
for i,v in pairs(game.Workspace.Stores:GetChildren()) do
if v:FindFirstChild(Item) then
if v.Name == "WoodRUs_" then
for i=1,Quant do
Cframe = game.Workspace.Stores.WoodRUs.Counter
UsingTP(v[Item].Main.CFrame)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
UsingTP(v[Item].Main.CFrame)
wait(0.4)
local A_1 =
{
    ["Character"] = game:GetService("Workspace").Stores.WoodRUs.Thom,
    ["Name"] = "Thom",
    ["ID"] = 11,
    ["Dialog"] = game:GetService("Workspace").Stores.WoodRUs.Thom.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
elseif v.Name == "CarStore_" then
Cframe = game.Workspace.Stores.CarStore.Counter
for i=1,Quant do
UsingTP(v[Item].Main.CFrame)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
UsingTP(v[Item].Main.CFrame)
wait(0.4)
local A_1 =
{
    ["Character"] = game:GetService("Workspace").Stores.CarStore.Jenny,
    ["Name"] = "Jenny",
    ["ID"] = 12,
    ["Dialog"] = game:GetService("Workspace").Stores.CarStore.Jenny.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
elseif v.Name == "FurnitureStore_" then
Cframe = game.Workspace.Stores.FurnitureStore.Counter
for i=1,Quant do
UsingTP(v[Item].Main.CFrame)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
UsingTP(v[Item].Main.CFrame)
wait(0.4)
local A_1 =
{
    ["Character"] = game:GetService("Workspace").Stores.FurnitureStore.Corey,
    ["Name"] = "Corey",
    ["ID"] = 10,
    ["Dialog"] = game:GetService("Workspace").Stores.FurnitureStore.Corey.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
elseif v.Name == "LogicStore_" then
Cframe = game.Workspace.Stores.LogicStore.Counter
for i=1,Quant do
UsingTP(v[Item].Main.CFrame)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
UsingTP(v[Item].Main.CFrame)
wait(0.4)
local A_1 =
{
    ["Character"] = game:GetService("Workspace").Stores.LogicStore.Lincoln,
    ["Name"] = "Lincoln",
    ["ID"] = 15,
    ["Dialog"] = game:GetService("Workspace").Stores.LogicStore.Lincoln.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
elseif v.Name == "ShackShop_" then
Cframe = game.Workspace.Stores.ShackShop.Counter
for i=1,Quant do
UsingTP(v[Item].Main.CFrame)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
UsingTP(v[Item].Main.CFrame)
wait(0.4)
local A_1 =
{
    ["Character"] = game:GetService("Workspace").Stores.ShackShop.Bob,
    ["Name"] = "Bob",
    ["ID"] = 13,
    ["Dialog"] = game:GetService("Workspace").Stores.ShackShop.Bob.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
elseif v.Name == "FineArt_" then
Cframe = game.Workspace.Stores.FineArt.Counter
for i=1,Quant do
UsingTP(v[Item].Main.CFrame)
Drag(v[Item])
v[Item].Main.CFrame = Cframe.CFrame
wait(0.1)
UsingTP(v[Item].Main.CFrame)
wait(0.4)
local A_1 =
{
    ["Character"] = game:GetService("Workspace").Stores.FineArt.Timothy,
    ["Name"] = "Timothy",
    ["ID"] = 14,
    ["Dialog"] = game:GetService("Workspace").Stores.FineArt.Timothy.Dialog
}
local A_2 = "ConfirmPurchase"
local Event = game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted
Event:InvokeServer(A_1, A_2)
wait(0.1)
end
break
end
end
end
UsingTP(Base.CFrame)

end
_G.ItemsBuying = 1
Buy:Slider("Amount",1,5,true,function(X)
    _G.ItemsBuying = X
end)
Buy:Dropdown("Axes",{'BasicHatchet','Axe1','Axe2',"Axe3","SilverAxe"},function(axe)
    BuyItem(axe,_G.ItemsBuying)
end)
Buy:Dropdown("Vehicles",{'UtilityTruck','UtilityTruck2','SmallTrailer',"Pickup1","Trailer2"},function(vehicle)
    BuyItem(vehicle,_G.ItemsBuying)
end)
local Items = Library.Category("-Items-","Items / movement",Color3.fromRGB(0,204,204))
function Drag(It)
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(It)
end
_G.Axes = {}
for i,v in pairs(game.ReplicatedStorage.Purchasables.Tools.AllTools:GetChildren()) do
    table.insert(_G.Axes,v.Name)
end
Items:Dropdown("Axe Type",_G.Axes,function(x)
    _G.Axe = x
end)
Items:Button("Set Position",function()
    _G.SP = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end)
Items:Button("Tp Axes",function()
    local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for i,tool in pairs (workspace.PlayerModels:children()) do
            if tool:IsA("Model")  and tool:FindFirstChild("ToolName") ~= nil and tool:FindFirstChild("Owner") ~= nil then
                if tostring(tool.Owner.Value) == game:service'Players'.LocalPlayer.Name and tool:FindFirstChild("ToolName").Value == _G.Axe then
                    UsingTP(_G.SP)
                    woodtp(tool.Main,_G.SP)
                    
                    wait(0.02)
                end
            end
        end
    
    UsingTP(old)
end)
Items:Button("Tp Boxed Items",function()
    local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i,v in pairs(Workspace.PlayerModels:GetChildren()) do
        if v.ClassName == "Model" then
            if v:FindFirstChild("Owner") ~= nil then
            if v.Owner.Value == game.Players.LocalPlayer then
                if v:FindFirstChild("PurchasedBoxItemName") ~= nil then
                    for i = 1,5 do
                Drag(v)
                    v.Main.CFrame = old+ Vector3.new(math.random(-4,4),math.random(3,5),math.random(-4,4))
                
                
                end
                wait(0.02)
                end
            end end
        end
    end
    
    UsingTP(old)
end)
Items:Button("Tp All",function()
    local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i,v in pairs(Workspace.PlayerModels:GetChildren()) do
        if v.ClassName == "Model" then
            if v:FindFirstChild("Owner") ~= nil then
            if v.Owner.Value == game.Players.LocalPlayer then
                if v:FindFirstChild("DraggableItem") ~= nil then
                    for i = 1,5 do
                Drag(v)
                    v.Main.CFrame = old + Vector3.new(math.random(-6,6),math.random(3,6),math.random(-6,6))
                
                
                end
                wait(0.02)
                end
            end end
        end
    end
    
    UsingTP(old)
end)
Items:Section("Item Interactions")
Items:Toggle("Axe Aura",function(state)
    _G.AAura = state
end)
Items:Toggle("Get All Axes",function(State)
    _G.GAAxes = State
end)
spawn(function()
    while wait() do
        if _G.AAura == true then
            for i,tool in pairs (workspace.PlayerModels:children()) do
                if tool:FindFirstChild("ToolName") ~= nil then
                    if tostring(tool.Owner.Value) == game.Players.LocalPlayer.Name  then
                        if (tool.Main.CFrame.p - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p).magnitude <= 8.5 then
                            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil then
                               game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Backpack
                            end
                            game:service("ReplicatedStorage").Interaction.ClientInteracted:FireServer(tool, "Pick up tool")
                            
                        end
                    end
                end
            end
        end
        if _G.GAAxes == true then
            for i,tool in pairs (workspace.PlayerModels:children()) do
                if tool:FindFirstChild("ToolName") ~= nil then
                    if tool.Owner.Value == game.Players.LocalPlayer then
                        UsingTP(tool.Main.CFrame)
                        spawn(function()
                            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil then
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Backpack
                            end
                        end)
                        repeat
                            wait()
                        until (game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p - tool.Main.CFrame.p).Magnitude <= 10
                        game:service("ReplicatedStorage").Interaction.ClientInteracted:FireServer(tool, "Pick up tool")
                         wait(2.5)  
                        
                    end
                end
            end
        end
    end
end)
local Settings = Library.Category("-Settings-","Settings for the Script",Color3.fromRGB(0,204,204))

Settings:Dropdown("TP Method",{"lerpTP","jumpTP","RainbowTP","tweenTP","spinTP","flingTP"},function(selected)
    tpmethod = selected
end)
Settings:Section("Safest: tweenTP")
Settings:Section("Newest: spinTP")
Settings:Section("by Dogix: flingTP")
local Creds = Library.Category("BY: SlaxxF","AKA: SkeletalScripts",Color3.fromRGB(0,204,204))

local bH=game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:connect(function()bH:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)bH:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)













