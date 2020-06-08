local Library  = loadstring(game:HttpGet('https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/Magik%20Hax%20Library'))()
local Combat   = Library.Category("Combat","Combat Stuff",Color3.fromRGB(0,204,204))
local Movement = Library.Category("Movement","Movement Stuff",Color3.fromRGB(0,204,204))
local Visual   = Library.Category("Visual","Visual Stuff",Color3.fromRGB(0,204,204))
local Teleports= Library.Category("Teleports","Teleport Stuff",Color3.fromRGB(0,204,204))
local Credits  = Library.Category("By: SlaxxF","AKA: SkeletalScripts",Color3.fromRGB(0,204,204))
function tp(thing,cframe)
    local tweenService = game:GetService("TweenService")
       local tweeningInformation = TweenInfo.new(
   
1, -- Length
Enum.EasingStyle.Linear, -- Easing style of the TweenInfo
Enum.EasingDirection.Out, -- Easing direction of the TweenInfo
0, -- Number of times the tween will repeat   
false, -- Should the tween repeat?
0 -- Delay between each tween  
)
local partProperties = {
    CFrame = cframe
}
        local Tween = tweenService:Create(thing,tweeningInformation,partProperties)
        Tween:Play()
end
Combat:Button("FE Invisible",function()
Local = game:GetService('Players').LocalPlayer
Char  = Local.Character
touched,tpdback = false, false
Local.CharacterAdded:connect(function(char)
    if script.Disabled ~= true then
        wait(.25)
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
    end
end)
game:GetService('UserInputService').InputBegan:connect(function(key)
    if key.KeyCode == Enum.KeyCode.Equals then
        if script.Disabled ~= true then
            script.Disabled = true
            print'you may re-execute'
        end
    end
end)
box = Instance.new('Part',workspace)
box.Anchored = true
box.CanCollide = true
box.Size = Vector3.new(10,1,10)
box.Position = Vector3.new(0,10000,0)
box.Touched:connect(function(part)
    if (part.Parent.Name == Local.Name) then
        if touched == false then
            touched = true
            function apply()
                if script.Disabled ~= true then
                    no = Char.HumanoidRootPart:Clone()
                    wait(.25)
                    Char.HumanoidRootPart:Destroy()
                    no.Parent = Char
                    Char:MoveTo(loc)
                    touched = false
                end end
            if Char then
                apply()
            end
        end
    end
end)
repeat wait() until Char
loc = Char.HumanoidRootPart.Position
Char:MoveTo(box.Position + Vector3.new(0,.5,0))
end)
Combat:Toggle("FE God mode",function(State)
    _G.FEGod = State
       
end)
Combat:Toggle("Kill All",function(State)
    _G.KA = State
end)
Combat:Box("Kill Player","NAME",function(x)
    _G.Kill = x
end)
Combat:Button("Kill Player",function()
    if _G.Kill ~= nil and _G.Kill ~= "" then
        if  workspace[_G.Kill]:FindFirstChild("ForceField") == nil then
        repeat
            wait()
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame =
            workspace[_G.Kill]:FindFirstChild("HumanoidRootPart").CFrame + workspace[_G.Kill]:FindFirstChild("HumanoidRootPart").CFrame.LookVector * Vector3.new(-3,0,-3)
        until workspace[_G.Kill]:FindFirstChild("Humanoid").Health == 0
        wait(2.5)
    end end
end)
Combat:Toggle("Killaura",function(State)
    _G.TPAura = State
end)
Movement:Box("WalkSpeed","16",function(x)
    _G.Walk = x
end)
Movement:Box("JumpPower","50",function(x)
    _G.Jump = x
end)
Movement:Toggle("Noclip",function(State)
    _G.Noclip = State
end)
Visual:Toggle("ESP",function(State)
    _G.ESP = State
end)
Teleports:Button("GhostWalker",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["GhostwalkerStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["GhostwalkerStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("Shield",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["ShieldSphereStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["ShieldSphereStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("Venomshank",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["VenomshankStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["VenomshankStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("MedKit",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["MedKitStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["MedKitStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("Windforce",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["WindforceStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["WindforceStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("Firebrand",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["FirebrandStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["FirebrandStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("Illumina",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["IlluminaStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["IlluminaStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("ShadowSphere",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["ShadowSphereStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["ShadowSphereStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("Darkheart",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["DarkheartStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["DarkheartStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("BattleArmor",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["BattleArmorStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["BattleArmorStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("IceDagger",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["IceDaggerStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["IceDaggerStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("Touchstone",function()
    if workspace:FindFirstChild("Regen") ~= nil then
        tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["TouchstoneStand"]["Smooth Block Model"].CFrame)
    else
        repeat
            wait()
        until workspace:FindFirstChild("Regen") ~= nil
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,workspace:FindFirstChild("Regen")["TouchstoneStand"]["Smooth Block Model"].CFrame)
     end
end)
Teleports:Button("Middle",function()
    tp(game.Players.LocalPlayer.Character.HumanoidRootPart,CFrame.new(0, 505, 2))
end)







-- toggles
 spawn(function()
    while wait() do
        if _G.FEGod == true then
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local Humanoid = Character.Humanoid
        if _G.FEGod == true then
        Humanoid.MaxHealth = 999999
        Humanoid.Health = Humanoid.MaxHealth / 2
        end
        Humanoid.HealthChanged:connect(function()
            if Humanoid.Health < 10 then
                if _G.FEGod == true then
                    Humanoid.Health = Humanoid.MaxHealth
                end
            end
        end)
    end end
end)
spawn(function()
    while wait() do
        if _G.KA == true then
            for i,v in pairs(game.Players:GetChildren()) do 
                if v ~= game.Players.LocalPlayer then
                    if workspace[v.Name]:FindFirstChild("ForceField") == nil then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    v.Character:WaitForChild("HumanoidRootPart").CFrame + v.Character.HumanoidRootPart.CFrame.LookVector * Vector3.new(-3,0,-3)
                    repeat
                        wait()
                         if _G.KA == true then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        v.Character.HumanoidRootPart.CFrame + v.Character.HumanoidRootPart.CFrame.LookVector * Vector3.new(-3,0,-3)
                        end
                    until v.Character.Humanoid.Health == 0
                end end
            end
        end
    end
end)
spawn(function() -- Walk / Noclip / JumpPower
    while wait() do
        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil then
        if _G.Walk ~= nil and _G.Walk ~= nil then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.Walk
        end
        if _G.Jump ~= nil and _G.Jump ~= nil then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = _G.Jump
        end
        if _G.Noclip == true then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
        else
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(18)
        end
    end end
end)
spawn(function()
    while wait() do
        if _G.TPAura == true then
            for i,v in pairs(game.Players:GetChildren()) do
                if v ~= game.Players.LocalPlayer then
                    if v.Character ~= nil and game.Players.LocalPlayer.Character then
                    if v.Character:FindFirstChild("HumanoidRootPart") ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                        if (v.Character:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 15 then
                            if workspace[v.Name]:FindFirstChild("ForceField") == nil then

                            repeat
                                wait()
                                if _G.TPAura == true then
                                    if workspace[v.Name]:FindFirstChild("ForceField") == nil then
                                    if workspace[v.Name].Humanoid.Health ~= 0 then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    v.Character.HumanoidRootPart.CFrame + v.Character.HumanoidRootPart.CFrame.LookVector * Vector3.new(-5,0,-5)
                                end end end
                            until v.Character.Humanoid.Health == 0
                        end end
                    end
                end end
            end
        end
    end
end)
spawn(function()
    while wait(1) do
        if _G.ESP == true then
            local work = workspace
            local plr = game.Players.LocalPlayer
            local things = {}
            for i,v in pairs(game.Players:GetChildren()) do
            	if v.Character ~= plr.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            		table.insert(things,v.Character)
            	end
            end
            
            for i,x in pairs(things) do
            	for i,v in pairs(x:GetChildren()) do
            		if v.ClassName == "Part" then
            		    if v:FindFirstChild("SurfaceGui") then
            		        for i,x in pairs(v:GetChildren()) do
            		            if x:IsA("SurfaceGui") then
            		                x:Destroy()
            	    	        end
            	            end
            		    end
            		    local color = game.Players[x.Name].TeamColor
            			local gui = Instance.new("SurfaceGui",v)
            			gui.AlwaysOnTop = true
            			gui.Face = "Front"
            			local frame = Instance.new("Frame",gui)
            			frame.BorderSizePixel = 0
            			frame.Size = UDim2.new(1,0,1,0)
            			frame.BackgroundColor3 = color.Color
            			frame.BackgroundTransparency = 0.5
            			local gui = Instance.new("SurfaceGui",v)
            			gui.AlwaysOnTop = true
            			gui.Face = "Left"
            			local frame = Instance.new("Frame",gui)
            			frame.BorderSizePixel = 0
            			frame.Size = UDim2.new(1,0,1,0)
            			frame.BackgroundColor3 = color.Color
            			frame.BackgroundTransparency = 0.5
            			local gui = Instance.new("SurfaceGui",v)
            			gui.AlwaysOnTop = true
            			gui.Face = "Right"
            			local frame = Instance.new("Frame",gui)
            			frame.BorderSizePixel = 0
            			frame.Size = UDim2.new(1,0,1,0)
            			frame.BackgroundColor3 = color.Color
            			frame.BackgroundTransparency = 0.5
            			local gui = Instance.new("SurfaceGui",v)
            			gui.AlwaysOnTop = true
            			gui.Face = "Back"
            			local frame = Instance.new("Frame",gui)
            			frame.BorderSizePixel = 0
            			frame.Size = UDim2.new(1,0,1,0)
            			frame.BackgroundColor3 = color.Color
            			frame.BackgroundTransparency = 0.5
            			local gui = Instance.new("SurfaceGui",v)
            			gui.AlwaysOnTop = true
            			gui.Face = "Bottom"
            			local frame = Instance.new("Frame",gui)
            			frame.BorderSizePixel = 0
            			frame.Size = UDim2.new(1,0,1,0)
            			frame.BackgroundColor3 = color.Color
            			frame.BackgroundTransparency = 0.5
            			local gui = Instance.new("SurfaceGui",v)
            			gui.AlwaysOnTop = true
            			gui.Face = "Top"
            			local frame = Instance.new("Frame",gui)
            			frame.BorderSizePixel = 0
            			frame.Size = UDim2.new(1,0,1,0)
            			frame.BackgroundColor3 = color.Color
            			frame.BackgroundTransparency = 0.5
            			end
            	end
            	if x:FindFirstChild("Head") ~= nil then
            	    if x.Head:FindFirstChild("BillboardGui") ~= nil then
            	    x.Head:FindFirstChild("BillboardGui"):Destroy()
            	    end
            		local BillboardGui = Instance.new("BillboardGui")
            		local TextLabel = Instance.new("TextLabel")
            		
            		--Properties:
            		
            		BillboardGui.Parent = x.Head
            		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            		BillboardGui.Active = true
            		BillboardGui.Adornee = x.Head
            		BillboardGui.AlwaysOnTop = true
            		BillboardGui.LightInfluence = 1.000
            		BillboardGui.MaxDistance = 125
            		BillboardGui.Size = UDim2.new(0, 200, 0, 50)
            		BillboardGui.StudsOffset = Vector3.new(0, 1.5, 0)
            		 local color = game.Players[x.Name].TeamColor
            		TextLabel.Parent = BillboardGui
            		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            		TextLabel.BackgroundTransparency = 1.000
            		TextLabel.Size = UDim2.new(0, 200, 0, 50)
            		TextLabel.Font = Enum.Font.GothamBold
            		TextLabel.TextColor3 = color.Color
            		TextLabel.TextSize = 24.000
                	TextLabel.Text = x.Name
        	    end
            end
        else
            local work = workspace
            for i,x in pairs(game.Players:GetChildren()) do
                if x ~= game.Players.LocalPlayer then
                    x = x.Character
                	for i,v in pairs(x:GetChildren()) do
                		if v.ClassName == "Part" then
                		    if v:FindFirstChild("SurfaceGui") then
                		        for i,x in pairs(v:GetChildren()) do
                		            if x:IsA("SurfaceGui") then
                		                x:Destroy()
                	    	        end
                	            end
                		    end
                		end
            		 end
            if x:FindFirstChild("Head"):FindFirstChild("BillboardGui") ~= nil then
                x.Head:FindFirstChild("BillboardGui"):Destroy()
            end
        end 
        end end end
end)
local bH=game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:connect(function()bH:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)bH:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)



