local function parttp(part)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0,5,0)
				game.Players.LocalPlayer.Character.Humanoid:ChangeState()
end
local function Basetp(part)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = part.CFrame + Vector3.new(0,15,0)
				game.Players.LocalPlayer.Character.Humanoid:ChangeState()
end
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/Magik%20Hax%20Library'))()
function oreboost()
    local factory = nil
    local lava = nil
    local a = game:GetService("Workspace").Tycoons:getDescendants()
    for i=1,#a do
        if a[i].Name == "Owner" then
            if a[i].Value == game:GetService("Players").LocalPlayer.Name then
                factory = a[i].Parent
            end
        end
    end

    local furnace = factory:getDescendants()
    for i=1,#furnace do 
        if furnace[i].Name == "Lava" then 
            lava = furnace[i]
        end
    end

    local upgrade = game:GetService("Workspace").Tycoons:getDescendants()
    for i=1,#upgrade do 
        if upgrade[i].Name == "Upgrade" then 
            local deco = upgrade[i]:getChildren()
            for i=1,#deco do
                if deco[i].Name == "TouchInterest" then
            else
                deco[i]:remove()
           	 end
      	  end
        upgrade[i].Size = lava.Size
        upgrade[i].Transparency = 1
        upgrade[i].Position = lava.Position
	    end
	end
end
function loadlayout(lnum)
    local v1 = "Load"
    local v2 = "Layout"..lnum
    local rem = game:GetService("ReplicatedStorage").Layouts
    rem:InvokeServer(v1, v2)
end
function withdraw()
    local rem = game:GetService("ReplicatedStorage").DestroyAll
    rem:InvokeServer()
end

function pulse()
	local rem = game:GetService("ReplicatedStorage").Pulse
    rem:FireServer()
end

function changeradio(id)
	local v1 = id
	local rem = game:GetService("ReplicatedStorage").ChangeRadio
	rem:InvokeServer(v1)
end




	local Teleports = library.Category("Teleports","What do you expect?",Color3.fromRGB(0,204,204))
	Teleports:Section("Main")

	local Base = Teleports:Button("Base", function()
	 for i,v in pairs(workspace.Tycoons:GetChildren()) do 
		if v:FindFirstChild("Owner") then 
			if v:FindFirstChild("Owner").Value == game.Players.LocalPlayer.Character.Name then 
				Basetp(v:FindFirstChild("Base"))
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
	local Tree = Teleports:Button("John Doe", function()
	 for i,v in pairs(workspace.Map:GetChildren()) do 
		if v.Name == "JohnDoe" then 
			if v:FindFirstChild("Hitbox") then 
				if v:FindFirstChild("Hitbox") ~= nil then 
					parttp(v:FindFirstChild("Hitbox"))
				end
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
	local cat = Teleports:Button("Cat", function()
	 for i,v in pairs(workspace.Map:GetChildren()) do 
		if v.Name == "Fargield" then 
			if v:FindFirstChild("Hitfox") then 
				if v:FindFirstChild("Hitfox") ~= nil then 
					parttp(v:FindFirstChild("Hitfox"))
				end
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
	local Boxman = Teleports:Button("Draedon", function()
	 for i,v in pairs(workspace:GetChildren()) do 
		if v.Name == "Map" then 
			if v.Draedon then 
				if v.Draedon.Hitbox ~= nil then 
					parttp(v.Draedon.Hitbox)
				end
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
	local IronMineChan = Teleports:Button("Iron Mine-Chan", function()
	 for i,v in pairs(workspace:GetChildren()) do 
		if v.Name == "Map" then 
			if v:FindFirstChild("Iron Mine-Chan") then 
				if v:FindFirstChild("Iron Mine-Chan").Hitbox ~= nil then 
					parttp(v:FindFirstChild("Iron Mine-Chan").Hitbox)
				end
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
	local WizardDude = Teleports:Button("Wizard", function()
	 for i,v in pairs(workspace:GetChildren()) do 
		if v.Name == "Map" then 
			if v:FindFirstChild("WizardDudeTeleport") then 
				if v:FindFirstChild("WizardDudeTeleport") ~= nil then 
					parttp(v:FindFirstChild("WizardDudeTeleport"))
				end
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
	local Masked = Teleports:Button("Masked Man", function()
	 for i,v in pairs(workspace:GetChildren()) do 
		if v.Name == "Market" then 
			if v:FindFirstChild("Hitfox") then 
				if v.Hitfox ~= nil then 
					parttp(v.Hitfox)
				end
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
	local Car = Teleports:Button("Car", function()
	 for i,v in pairs(workspace:GetChildren()) do 
		if v.Name == "Car" then 
			if v:FindFirstChild("Light") then 
				if v:FindFirstChild("VehicleSeat") ~= nil then 
					parttp(v:FindFirstChild("VehicleSeat"))
				end
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
    local Boxman = Teleports:Button("Crate Shop", function()
	 for i,v in pairs(workspace:GetChildren()) do 
		if v.Name == "Map" then 
			if v.CrateShopTeleport then 
				if v.CrateShopTeleport ~= nil then 
					parttp(v.CrateShopTeleport)
				end
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
    local Boxman = Teleports:Button("Zalgo", function()
	 for i,v in pairs(workspace:GetChildren()) do 
		if v.Name == "Map" then 
			if v.Zalgo then 
				if v.Zalgo ~= nil then 
					parttp(v.Zalgo.Hitbox)
				end
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
    
	local Innovator = Teleports:Button("Innovator", function()
	 for i,v in pairs(workspace:GetChildren()) do 
		if v.Name == "Innovator" then 
			if v:FindFirstChild("HumanoidRootPart") then 
				if v:FindFirstChild("Hitfox") ~= nil then 
					parttp(v:FindFirstChild("Hitfox"))
				end
			end
		end
	 end
	 game.Players.LocalPlayer.Character.Humanoid:ChangeState(3)
	end)
	local Extra = library.Category("Scripts","Simple Scripts",Color3.fromRGB(0,204,204))
	local Walk = Extra:Box('WalkSpeed',"Speed",function(walk)
	   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walk
	end)
	local Jump = Extra:Box('JumpPower',"Jump", function(jump)
	   game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
	end)

local Noclip = Extra:Toggle("Noclip",function(State)
	_G.Yes = State
	while wait() do	
	if _G.Yes == true then 
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		else
		   game.Players.LocalPlayer.Character.Humanoid:ChangeState(18)
		end
	end
end)

	
local crap = library.Category("Misc","Misc Scripts",Color3.fromRGB(0,204,204))

crap:Section("Radio")
selectedradioid = 0
local radioidbox = crap:Box('Radio ID',"ID", function(new)
    selectedradioid = new
end)

local radioidbutton = crap:Button('Play', function()
    changeradio(selectedradioid)
end)

disablenotifications = false
local disablenotificationstoggle = crap:Toggle('Disable Notifications', function(State)
    disablenotifications = State 

    if disablenotifications == true then
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Menu.Menu.Sounds.Message.Volume = 0
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Notifications.Visible = false
    else
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Menu.Menu.Sounds.Message.Volume = 0.5
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Notifications.Visible = true
    end
end)

maskedman = false
local maskedmantoggle = crap:Toggle("Masked Man", function(State)
     maskedman = State
     

    if maskedman == true then
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.EventShop.Visible = true
    else
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.EventShop.Visible = false
    end
end)

enchantui = false
local enchantuitoggle = crap:Toggle("Enchant UI", function(State)
        enchantui = State

    if enchantui == true then
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Craftsman.Visible = true
    else
        game:GetService("Players").LocalPlayer.PlayerGui.GUI.Craftsman.Visible = false
    end
end)

local pulsehac = crap:Button("Pulse", function()
	pulse()
end)

local Withdraw = crap:Button("Withdraw all", function()
	withdraw()
end)
local Base = library.Category("Base Hacks","The Things You Need",Color3.fromRGB(0,204,204))
Base:Section("Rebirth & Remote")
Base:Toggle("Auto Rebirth", function(State)
		_G.AReb = State
		while AReb do 
				wait(0.1)
				game.ReplicatedStorage.Rebirth:InvokeServer()
		end
	end)
Base:Toggle("Auto Remote", function(State)
        _G.ARem = State
		while _G.ARem do 
				 wait(0.3)
				game.ReplicatedStorage.RemoteDrop:FireServer()
		end
	end)
Base:Section("Clovers & Twitch")
Base:Toggle("Hack Clovers",function(State)
    _G.HClov = State
		while _G.HClov do 
		    wait()
				while wait(1) do
					if game.Players.LocalPlayer.Clovers.Value < 69420 then
						game.Players.LocalPlayer.Clovers.Value = 69420
					end
			end
		end
	end)
Base:Toggle("Hack Twitch", function(State)
    _G.HTwic = State
		while _G.HTwic do 
		    wait()
				while wait(1) do
					if game.Players.LocalPlayer.TwitchPoints.Value < 69420 then
						game.Players.LocalPlayer.TwitchPoints.Value  = 69420
					end
			end
		end
	end)
Base:Section("Fast Rebirths")
local Godblessed = library.Category("OverPowered","The TOP SCRIPTS",Color3.fromRGB(0,204,204))
local sorry = Godblessed:Section("Stuff got patched...")
local Upgrader = Godblessed:Box('Select Upgrader',"Upgrader", function(new)
    SelectedUpgrader = tostring(new)
end)
local Repeats = Godblessed:Box('Repeated times',"Times", function(new)
    if tonumber(new) < 1 then
        new = 1 end
    if tonumber(new) > 1000 then
        new = 1000
        end
    _G.SelectedRepeats = new
end)

Godblessed:Button("Bypass Ore", function()
	local player = game:GetService'Players'.LocalPlayer
	local factorye = player.PlayerTycoon.Value
	local Factory = tostring(factorye)
	local box = SelectedUpgrader
	thing = game.Workspace.Tycoons[Factory][box].Hitbox
    _G.loopedamount = 0
 for i = 1,tonumber(_G.SelectedRepeats) / 3 do wait(.5)
	for i,v in pairs(game.Workspace.DroppedParts[Factory]:getChildren()) do
		local p= CFrame.new(thing.Position.x, thing.Position.y, thing.Position.z)
			wait(0.16)
			v.Anchored = true
			v.CFrame = p + Vector3.new(0,50,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,25,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,50,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,25,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,17.5,0)
			wait(0.56)
			v.Anchored = false
			v.CFrame = p
			wait(0.16)
			v.Anchored = true
			v.CFrame = p + Vector3.new(0,50,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,25,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,50,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,25,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,17.5,0)
			wait(0.56)
			v.Anchored = false
			v.CFrame = p
			wait(0.16)
			v.Anchored = true
			v.CFrame = p + Vector3.new(0,50,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,25,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,50,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,25,0)
			wait(0.16)
			v.CFrame = p + Vector3.new(0,17.5,0)
			wait(0.56)
			v.Anchored = false
			v.CFrame = p
			wait(0.36)
			v.Anchored = false
			
			_G.loopedamount = _G.loopedamount + 3
			v.Anchored = false
		end
	end
end)
Godblessed:Button("Ore Boost", function()
		oreboost()
end)
_G.loopedamount = 0
_G.SelectedRepeats = 0
Godblessed:Section("looped: "..
    _G.loopedamount.." - ".._G.SelectedRepeats)
Godblessed:Section("Ore Boost")
Godblessed:Section("!!Is RISKY!!")
Godblessed:Section("Auto Layout")
_G.autolayout = false
selectedlayout = 1
local autolayoutbox = Godblessed:Box('Select Layout',"1,2,3", function(new)
    if new > 4 then
        new = 4
    elseif new < 1 then
        new = 1 
    end
    selectedlayout = new
end)

local autolayouttoggle = Godblessed:Toggle('Auto Layout', function()
	while wait() do 
			game.Players.LocalPlayer.leaderstats.Life.Changed:connect(function(plr)
				delay(8, function()
					loadlayout(selectedlayout)
				end)
			end)
	end
end)

local Crates = library.Category("Box Hacks","Basically Just Box Openers",Color3.fromRGB(0,204,204))
Crates:Toggle("Open Regular Boxes", function(State)
    _G.ORB = State
		while _G.ORB do 
		    wait()
						while wait(6) do
					game.ReplicatedStorage.MysteryBox:InvokeServer("Regular")
			end
		end
	end)
Crates:Toggle("Open Unreal Boxes", function(State)
    _G.OUB = State
		while _G.OUB do 
		    wait()
				while wait(6) do
					game.ReplicatedStorage.MysteryBox:InvokeServer("Unreal")
				end
		end
	end)
Crates:Toggle("Open Inferno Boxes", function(State)
    _G.OIB = State
		while  _G.OIB do 
		    wait()
				while wait(6) do
					game.ReplicatedStorage.MysteryBox:InvokeServer("Inferno")
				end
		end
	end)
Crates:Toggle("Open Red-Banded Boxes", function(State)
     _G.ORBB = State
		while _G.ORBB do 
		    wait()
				while wait(6) do
					game.ReplicatedStorage.MysteryBox:InvokeServer("Red-Banded")
				end
		end
	end)
Crates:Toggle("Open Spectral Boxes", function(State)
    _G.OSB = State
		while _G.OSB do 
		    wait()
		    while wait(6) do
					game.ReplicatedStorage.MysteryBox:InvokeServer("Spectral")
				end
		end
	end)
Crates:Toggle("Open Pumpkin Boxes", function(State)
    _G.OPB = State
		while _G.OPB do 
		    wait()
				while wait(6) do
					game.ReplicatedStorage.MysteryBox:InvokeServer("Pumpkin")
				end
		end
	end)
Crates:Toggle("Open Luxury Boxes", function(State)
    _G.OLB = State
		while _G.OLB do 
		    wait()
				while wait(6) do
					game.ReplicatedStorage.MysteryBox:InvokeServer("Luxury")
				end
			end
	end)
Crates:Toggle("Open Festive Boxes", function(State)
    _G.OFB = State
		while _G.OFB do
		    wait()
		    while wait(6) do
					game.ReplicatedStorage.MysteryBox:InvokeServer("Festive")
				end
		end
	end)
Crates:Toggle("Open Magnificent Boxes",function(State)
    _G.OMB = State
		while _G.OMB do 
		    wait()
				while wait(6) do
					game.ReplicatedStorage.MysteryBox:InvokeServer("Magnificent")
				end
		end
	end)
Crates:Toggle("Open Heavenly Boxes", function(State)
    _G.OHB = State
		while _G.OHB do 
		    wait()
				while wait(6) do
					game.ReplicatedStorage.MysteryBox:InvokeServer("Heavenly")
				end
			end
	end)
local allboxes = Extra:Toggle("Get all Crates",function(State)
    _G.ALLBox = State
		while _G.ALLBox do
		    wait()
			while wait(2) do
				for _,v in pairs(game.Workspace:GetChildren()) do
					if string.match(v.Name, "DiamondCrate") or string.match(v.Name, "ResearchCrate") or string.match(v.Name, "GoldenCrate") or string.match(v.Name, "CrystalCrate") or string.match(v.Name, "Pumpkin") or string.match(v.Name, "MegaPumpkin") or string.match(v.Name, "Pumpkin") or string.match(v.Name, "LuckyCrate") or string.match(v.Name, "ExecutiveCrate") or string.match(v.Name, "GiftCrate") or string.match(v.Name, "ShadowCrate")then
						v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(0,0,0)
						v.CanCollide = false
						v.Transparency = 1
						for _,v in pairs(game.Workspace.Shadows:GetChildren()) do
							if string.match(v.Name, "ShadowCrate") or string.match(v.Name, "MegaPumpkin") then
								v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(0,0,0)
								v.CanCollide = false
								v.Transparency = 1
							end
						end
					end
				end
			end
		end
	end)
local allweapons = Extra:Button("Get all Weapons",function()
				for _,v in pairs(game.Lighting:GetChildren()) do
					if v.ClassName == "Tool" then
						local x = v:Clone()
						x.Parent = game.Players.LocalPlayer.Backpack
					end
				end
	end)
local allboxes = Extra:Button("Get Infinite JetPack",function()

			while wait(2) do
				for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.Name == "JetPack" then
						v.CurrFuel.Value = 99999999999999999999999999999999999999999999999999999999999999999999999999999
					end
				end
				for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "JetPack" then
						v.CurrFuel.Value = 99999999999999999999999999999999999999999999999999999999999999999999999999999
					end
				end
			end
	end)
local warn = Extra:Section("Do not hold JP!")	
-- Credits
	local credits = library.Category("By: SlaxxF","AKA: SkeletalScripts",Color3.fromRGB(0,204,204))
local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(
	    function()
	        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	        wait(1)
	        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	    end)
