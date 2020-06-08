
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/Magik%20Hax%20Library'))()
-- vars
keyfoldername = ""
keyfolder = nil

whitekeyname = ""
whitekey = nil
shellname = ""
shell = nil
redkeyname = ""
redkey = nil
redeggname = ""
redegg = nil
redgearname = ""
redgear = nil

bluekeyname = ""
bluekey = nil

yellowkeyname = ""
yellowkey = nil
coinname = ""
coin = nil

greenkeyname = ""
greenkey = nil
greeneggname = ""
greenegg = nil
greengearname = ""
greengear = nil

orangekeyname = ""
orangekey = nil

purplekeyname = ""
purplekey = nil

hammername = ""
hammer = nil

wrenchname = ""
wrench = nil

keycodename = ""
keycode = nil
malletname = ""
mallet = nil
greenkeycardname = ""
greenkeycard = nil
littorchname = ""
littorch = nil
gasname = ""
gas = nil
grassname = ""
grass = nil
emptyvialname = ""
emptyvial = nil
mirrorname = ""
mirror = nil
crowbarname = ""
crowbar = nil
bookname = ""
book = nil
carrotname = ""
carrot = nil
bonename = ""
bone = nil
watergunname = ""
watergun = nil
batteryname = ""
battery = nil
map = "Map not Found!"
panel = nil
piggy = false
local tpdoor = true
local players = game:GetService("Players")
local plrarray = players:GetPlayers()
local RunService = game:GetService("RunService")
local hrp = players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local backpack = game:GetService("Players").LocalPlayer.Backpack
local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
local camera = game:GetService("Workspace").Camera
local backupcamera = camera:Clone()
local stateType = Enum.HumanoidStateType

backupcamera.Parent = game:GetService("Lighting")

function tableContains(tbl, element) -- Checks if a table has a certain thing
	for _, v in ipairs(tbl) do
		if (rawequal(v, element)) then
			return true;
		end
	end
	return false
end


function checkPiggy() -- Checks if you're piggy
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("IsStunned") then 
		piggy = true
	else
		piggy = false
	end
	return piggy
end

function checkGameProgress() -- Checks if the game is in progress
	if game:GetService("Workspace").GameFolder.Phase.Value == "GameInProgress" then 
		return true
	else
		return false
	end
end

function gameCheckSurvivor() -- Checks if the game is in progress and that you're not piggy
	if checkGameProgress() == true and checkPiggy() == false then 
		return true
	else
		return false
	end
end

function gameCheckKiller() -- Checks if the game is in progress and that you're piggy
	if checkGameProgress() == true and checkPiggy() == true then 
		return true
	else
		return false
	end
end
_G.SPeed = 16
function changeWalkspeed(sped) -- Changes walkspeed
	_G.SPeed = sped
end
game:GetService("RunService").RenderStepped:Connect(function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = _G.SPeed
end)
_G.JUmp = 50
function changeJump(sped) -- Changes Jump
	_G.JUmp = sped
end
game:GetService("RunService").RenderStepped:Connect(function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = _G.JUmp
end)
local function FlingPreventionUpdate() -- Anti Fling
	if humanoid ~= nil and hrp ~= nil and Force ~= nil then
		if hrp:IsDescendantOf(Workspace) then
			if hrp.RotVelocity.magnitude >= 50 or hrp.Velocity.magnitude >= 50 then
				hrp.RotVelocity = Vector3.new()
				hrp.Velocity = Vector3.new()
			print("Fling prevented")
			end
		end
	end
end
game:GetService("RunService").RenderStepped:Connect(function()
	FlingPreventionUpdate()
end)

local function parttp(part)
local times = 0
print("[Baconator V3] Bypassing AntiTP...")
	for i = 1,15 do
		times = times + 1
		print("[Baconator V3] Teleported "..times.." Out of 15")
		hrp.CFrame = part
		FlingPreventionUpdate()
		wait(0)
	end
end

function getMap() -- Gets the Map
	if game:GetService("Workspace"):FindFirstChild("House") then
		map = "House"
	end
	if game:GetService("Workspace"):FindFirstChild("Station") then
		map = "Station"
	end

	if game:GetService("Workspace"):FindFirstChild("Gallery") then 
		map = "Gallery"
	end

	if game:GetService("Workspace"):FindFirstChild("Forest") then 
		map = "Forest"
	end
	
	if game:GetService("Workspace"):FindFirstChild("School") then 
		map = "School"
	end
	
	if game:GetService("Workspace"):FindFirstChild("Hospital") then 
		map = "Hospital"
	end

	if game:GetService("Workspace"):FindFirstChild("Metro") then
		map = "Metro"
	end
	
	if game:GetService("Workspace"):FindFirstChild("Carnival") then
		map = "Carnival"
	end
	
	if game:GetService("Workspace"):FindFirstChild("City") then
		map = "City"
	end
	
	if game:GetService("Workspace"):FindFirstChild("Mall") then
		map = "Mall"
	end
	
	if game:GetService("Workspace"):FindFirstChild("Outpost") then
		map = "Outpost"
	end

	return map
end


humanoid:SetStateEnabled(stateType.FallingDown, false) -- Anti Fling + Fall
humanoid:SetStateEnabled(stateType.Ragdoll, false) -- Anti Fling + Fall

if checkGameProgress() == true then do
	for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do -- Find ItemFolder
    	if v:IsA("ParticleEmitter") then
        	if v.Parent.Parent.Parent.Name == tostring(game:GetService("Workspace").Name) then
            	keyfoldername = v.Parent.Parent.Name
        	end
    	end
	end
	print('Found ItemFolder name:', keyfoldername)
	if game:GetService("Workspace"):FindFirstChild(keyfoldername) then
		keyfolder = game:GetService("Workspace")[keyfoldername]
	end

	function removeHazards() -- Removes Hazards
		for i,v in pairs(game:GetService("Workspace")[getMap()]:GetDescendants()) do
			if v.Name == "LaserTrigger" then
				if v:FindFirstChild("TouchInterest") then
					v:Destroy()
				end
			end

			if v.Name == "Laser" then
				v:Destroy()
			end

			if v.Name == "PlankTrigger" then
				v:Destroy()
			end
		end
	
		for i,v in pairs(keyfolder:GetChildren()) do
			if v.Name == "BearTrap" then
				v:Destroy()
			end
		end
		print('[Baconator V3] Removed Hazards!')
	end
end
end

-- Load names
  if gameCheckSurvivor() == true then
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds KeyCode
    	if v:IsA("TextLabel") then
			keycodename = v.Parent.Parent.Name
			print('Found KeyCode name as:', keycodename)
    	end
	end
	if keyfolder:FindFirstChild(keycodename) then
    	keycode = keyfolder[keycodename]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do 
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Institutional white") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						whitekeyname = v.Name    
						print('Found WhiteKey name as:', whitekeyname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(whitekeyname) then
    	whitekey = keyfolder[whitekeyname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds RedKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Really red") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						redkeyname = v.Name    
						print('Found RedKey name as:', redkeyname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(redkeyname) then
    	redkey = keyfolder[redkeyname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds BlueKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Toothpaste") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						bluekeyname = v.Name    
						print('Found BlueKey name as:', bluekeyname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(bluekeyname) then
    	bluekey = keyfolder[bluekeyname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds GreenKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Lime green") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						greenkeyname = v.Name    
						print('Found GreenKey name as:', greenkeyname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(greenkeyname) then
    	greenkey = keyfolder[greenkeyname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds OrangeKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Neon orange") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						orangekeyname = v.Name    
						print('Found OrangeKey name as:', orangekeyname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(orangekeyname) then
    	orangekey = keyfolder[orangekeyname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds PurpleKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Alder") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						purplekeyname = v.Name    
						print('Found PurpleKey name as:', purplekeyname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(purplekeyname) then
    	purplekey = keyfolder[purplekeyname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Gold") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						yellowkeyname = v.Name    
						print('Found YellowKey name as:', yellowkeyname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(yellowkeyname) then
    	yellowkey = keyfolder[yellowkeyname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds Hammer
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Institutional white") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(1.2, 1.2, 1.2) then 
						hammername = v.Name    
						print('Found Hammer name as:', hammername)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(hammername) then
    	hammer = keyfolder[hammername]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds Wrench
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Institutional white") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.6, 0.6, 0.6) then 
						wrenchname = v.Name    
						print('Found Wrench name as:', wrenchname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(wrenchname) then
		wrench = keyfolder[wrenchname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds Gas
    	if v:IsA("UnionOperation") then
        	gasname = v.Name
        	print('Found Gas name as:', gasname)
    	end
	end
	if keyfolder:FindFirstChild(gasname) then
    	gas = keyfolder[gasname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds RedEgg
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Really red") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.75, 0.7, 0.75) then 
						redeggname = v.Name    
						print('Found RedEgg name as:', redeggname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(redeggname) then
		redegg = keyfolder[redeggname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds GreenEgg
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Sea green") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.75, 0.7, 0.75) then 
						greeneggname = v.Name    
						print('Found GreenEgg name as:', greeneggname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(greeneggname) then
		greenegg = keyfolder[greeneggname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds GreenGear
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Shamrock") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.025, 0.025, 0.025) then 
						greengearname = v.Name    
						print('Found GreenGear name as:', greengearname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(greengearname) then
		greengear = keyfolder[greengearname]
	end

	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds RedGear
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Persimmon") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.025, 0.025, 0.025) then 
						redgearname = v.Name    
						print('Found RedGear name as:', redgearname)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(redgearname) then
		redgear = keyfolder[redgearname]
	end
end
local Misc = Library.Category("Misc","Stuff that are not categoried",Color3.fromRGB(15,200,12))
function GetWhiteKey()
    if gameCheckSurvivor() == true then
	for i,v in pairs(keyfolder:GetDescendants()) do 
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Institutional white") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						whitekeyname = v.Name    
						print('[Baconator V3] Found WhiteKey name as:', whitekeyname)
					    local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[whitekeyname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[whitekeyname].CFrame)
						fireclickdetector(keyfolder[whitekeyname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(whitekeyname) then
							humanoid:EquipTool(backpack:FindFirstChild(v))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(whitekeyname) then
    	whitekey = keyfolder[whitekeyname]
	end
end
end
function GetRedKey()
    for i,v in pairs(keyfolder:GetDescendants()) do -- Finds RedKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Really red") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						redkeyname = v.Name    
						print('[Baconator V3] Found RedKey name as:', redkeyname)
					    local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[redkeyname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[redkeyname].CFrame)
						fireclickdetector(keyfolder[redkeyname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(redkeyname) then
							humanoid:EquipTool(backpack:FindFirstChild(redkeyname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(redkeyname) then
    	redkey = keyfolder[redkeyname]
	end
end
function GetKeyCode() 
    if gameCheckSurvivor() == true then
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds KeyCode
    	if v:IsA("TextLabel") then
			keycodename = v.Parent.Parent.Name
			print('[Baconator V3] Found KeyCode name as:', keycodename)
			 local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[keycodename].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[keycodename].CFrame)
						fireclickdetector(keyfolder[keycodename].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(keycodename) then
							humanoid:EquipTool(backpack:FindFirstChild(keycodename))
						end
						wait(0.25)
						parttp(savedpos)
    	end
	end
	if keyfolder:FindFirstChild(keycodename) then
    	keycode = keyfolder[keycodename]
	end
end
end
function GetBlueKey()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds BlueKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Toothpaste") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						bluekeyname = v.Name    
						print('[Baconator V3] Found BlueKey name as:', bluekeyname)
						 local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[bluekeyname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[bluekeyname].CFrame)
						fireclickdetector(keyfolder[bluekeyname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(bluekeyname) then
							humanoid:EquipTool(backpack:FindFirstChild(bluekeyname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(bluekeyname) then
    	bluekey = keyfolder[bluekeyname]
	end
end
function GetGreenKey()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds GreenKey
		if v:IsA("Part") then
			if v.Name ~= greenkeyname then
				if v.BrickColor == BrickColor.new("Lime green") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						greenkeyname = v.Name    
						print('[Baconator V3] Found GreenKey name as:', greenkeyname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[greenkeyname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[greenkeyname].CFrame)
						fireclickdetector(keyfolder[greenkeyname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(greenkeyname) then
							humanoid:EquipTool(backpack:FindFirstChild(greenkeyname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(greenkeyname) then
    	greenkey = keyfolder[greenkeyname]
	end

end
function GetOrangekey()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds OrangeKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Neon orange") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						orangekeyname = v.Name    
						print('[Baconator V3] Found OrangeKey name as:', orangekeyname)
						 local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[orangekeyname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[orangekeyname].CFrame)
						fireclickdetector(keyfolder[orangekeyname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(orangekeyname) then
							humanoid:EquipTool(backpack:FindFirstChild(orangekeyname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(orangekeyname) then
    	orangekey = keyfolder[orangekeyname]
	end
end
function GetPurpleKey()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds PurpleKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Alder") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						purplekeyname = v.Name    
						print('[Baconator V3] Found PurpleKey name as:', purplekeyname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[purplekeyname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[purplekeyname].CFrame)
						fireclickdetector(keyfolder[purplekeyname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(purplekeyname) then
							humanoid:EquipTool(backpack:FindFirstChild(purplekeyname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(purplekeyname) then
    	purplekey = keyfolder[purplekeyname]
	end
end
function GetYellowKey()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Gold") then
					if v.Mesh.Scale == Vector3.new(5, 5, 5) then 
						yellowkeyname = v.Name    
						print('[Baconator V3] Found YellowKey name as:', yellowkeyname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[yellowkeyname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[yellowkeyname].CFrame)
						fireclickdetector(keyfolder[yellowkeyname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(yellowkeyname) then
							humanoid:EquipTool(backpack:FindFirstChild(yellowkeyname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(yellowkeyname) then
    	yellowkey = keyfolder[yellowkeyname]
	end
end
function GetShell()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Medium stone grey") then
					if v.Mesh.Scale == Vector3.new(0.03, 0.03, 0.03) then 
						shellname = v.Name    
						print('[Baconator V3] Found Shell name as:', shellname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[shellname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[shellname].CFrame)
						fireclickdetector(keyfolder[shellname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(shellname) then
							humanoid:EquipTool(backpack:FindFirstChild(shellname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(shellname) then
    	shell = keyfolder[shellname]
	end
end
function GetBook()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Beige") then
					if v.Mesh.Scale == Vector3.new(0.5, 0.5, 0.5) then 
						bookname = v.Name    
						print('[Baconator V3] Found Book name as:', bookname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[bookname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[bookname].CFrame)
						fireclickdetector(keyfolder[bookname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(bookname) then
							humanoid:EquipTool(backpack:FindFirstChild(bookname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(bookname) then
    	book = keyfolder[bookname]
	end
end
function GetCoin()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Bright yellow") then
					if v.Mesh.Scale == Vector3.new(0.05, 0.05, 0.05) then 
						coinname = v.Name    
						print('[Baconator V3] Found Coin name as:', coinname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[coinname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[coinname].CFrame)
						fireclickdetector(keyfolder[coinname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(coinname) then
							humanoid:EquipTool(backpack:FindFirstChild(coinname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(coinname) then
    	coin = keyfolder[coinname]
	end
end
function GetCarrot()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Beige") then
					if v.Mesh.Scale == Vector3.new(0.02, 0.02, 0.02) then 
						carrotname = v.Name    
						print('[Baconator V3] Found Carrot name as:', carrotname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[carrotname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[carrotname].CFrame)
						fireclickdetector(keyfolder[carrotname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(carrotname) then
							humanoid:EquipTool(backpack:FindFirstChild(carrotname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(carrotname) then
    	carrot = keyfolder[carrotname]
	end
end
function GetCrowbar()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds Hammer
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Dark stone grey") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.3, 0.3, 0.25) then 
						crowbarname = v.Name    
						print('Found Crowbar name as:', crowbarname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[crowbarname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[crowbarname].CFrame)
						fireclickdetector(keyfolder[crowbarname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(crowbarname) then
							humanoid:EquipTool(backpack:FindFirstChild(crowbarname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(crowbarname) then
    	crowbar = keyfolder[crowbarname]
	end
end
function GetGrass()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename or carrotname then
				if v.BrickColor == BrickColor.new("Beige") then
					if v.Mesh.Scale == Vector3.new(0.2, 0.3, 0.2) then 
						grassname = v.Name    
						print('[Baconator V3] Found Grass name as:', grassname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[grassname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[grassname].CFrame)
						fireclickdetector(keyfolder[grassname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(grassname) then
							humanoid:EquipTool(backpack:FindFirstChild(grassname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(grassname) then
    	grass = keyfolder[grassname]
	end
end
function GetGreenKeycard()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("UnionOperation") then
			if v.Name ~= keycodename  then
				if v.BrickColor == BrickColor.new("Really black") then
					if v.Name ~= bluekeycardname then 
						greenkeycardname = v.Name    
						print('[Baconator V3] Found Green Keycard name as:', greenkeycardname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[greenkeycardname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[greenkeycardname].CFrame)
						fireclickdetector(keyfolder[greenkeycardname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(greenkeycardname) then
							humanoid:EquipTool(backpack:FindFirstChild(greenkeycardname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(greenkeycardname) then
    	greenkeycard = keyfolder[greenkeycardname]
	end
end
redkeycardname = ""
redkeycard = nil
function GetRedKeycard()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("UnionOperation") then
			if v.Name ~= keycodename  then
				if v.BrickColor == BrickColor.new("Institutional white") then
						redkeycardname = v.Name    
						print('[Baconator V3] Found Red Keycard name as:', redkeycardname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[redkeycardname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[redkeycardname].CFrame)
						fireclickdetector(keyfolder[redkeycardname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(redkeycardname) then
							humanoid:EquipTool(backpack:FindFirstChild(redkeycardname))
						end
						wait(0.25)
						parttp(savedpos)
				end
			end
		end
	end
	if keyfolder:FindFirstChild(redkeycardname) then
    	redkeycard = keyfolder[redkeycardname]
	end
end
toydinoname = ""
toydino = nil
function GetToyDino()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename  then
				if v.BrickColor == BrickColor.new("Really Black") then
					if v.Mesh.Scale == Vector3.new(0.25,0.25,0.25) then
						toydinoname = v.Name    
						print('[Baconator V3] Found Toy Dino name as:', toydinoname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[toydinoname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[toydinoname].CFrame)
						fireclickdetector(keyfolder[toydinoname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(toydinoname) then
							humanoid:EquipTool(backpack:FindFirstChild(toydinoname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(toydinoname) then
    	toydino = keyfolder[toydinoname]
	end
end
toyrobotname = ""
toyrobot = nil
function GetToyRobot()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename  then
				if v.BrickColor == BrickColor.new("Really Black") then
					if v.Mesh.Scale == Vector3.new(1,1,1) then
						toyrobotname = v.Name    
						print('[Baconator V3] Found Toy Robot name as:', toyrobotname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[toyrobotname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[toyrobotname].CFrame)
						fireclickdetector(keyfolder[toyrobotname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(toyrobotname) then
							humanoid:EquipTool(backpack:FindFirstChild(toyrobotname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(toyrobotname) then
    	toyrobot = keyfolder[toyrobotname]
	end
end
bluekeycardname = ""
bluekeycard = nil
function GetBlueKeycard()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("UnionOperation") then
			if v.Name ~= keycodename  then
				if v.BrickColor == BrickColor.new("Really black") then
					if v.Name ~= greenkeycardname then 
						bluekeycardname = v.Name    
						print('[Baconator V3] Found Blue Keycard name as:', bluekeycardname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[bluekeycardname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[bluekeycardname].CFrame)
						fireclickdetector(keyfolder[bluekeycardname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(bluekeycardname) then
							humanoid:EquipTool(backpack:FindFirstChild(bluekeycardname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(bluekeycardname) then
    	bluekeycard = keyfolder[bluekeycardname]
	end
end
orangekeycardname = ""
orangekeycard = nil
function GetOrangeKeycard()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("UnionOperation") then
			if v.Name ~= keycodename  then
				if v.BrickColor == BrickColor.new("Institutional white") then
						orangekeycardname = v.Name    
						print('[Baconator V3] Found Orange Keycard name as:', orangekeycardname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[orangekeycardname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[orangekeycardname].CFrame)
						fireclickdetector(keyfolder[orangekeycardname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(orangekeycardname) then
							humanoid:EquipTool(backpack:FindFirstChild(orangekeycardname))
						end
						wait(0.25)
						parttp(savedpos)
				end
			end
		end
	end
	if keyfolder:FindFirstChild(orangekeycardname) then
    	orangekeycard = keyfolder[orangekeycardname]
	end
end
pinkvialname = ""
pinkvial = nil
function GetPinkVial()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("UnionOperation") then
			if v.Name ~= keycodename  then
				if v.BrickColor == BrickColor.new("Hot pink") then
						pinkvialname = v.Name    
						print('[Baconator V3] Found Pink Vial name as:', pinkvialname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[pinkvialname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[pinkvialname].CFrame)
						fireclickdetector(keyfolder[pinkvialname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(pinkvialname) then
							humanoid:EquipTool(backpack:FindFirstChild(pinkvialname))
						end
						wait(0.25)
						parttp(savedpos)
				end
			end
		end
	end
	if keyfolder:FindFirstChild(pinkvialname) then
    	pinkvial = keyfolder[pinkvialname]
	end
end
greenvialname = ""
greenvial = nil
function GetGreenVial()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("UnionOperation") then
			if v.Name ~= keycodename  then
				if v.BrickColor == BrickColor.new("Lime green") then
						greenvialname = v.Name    
						print('[Baconator V3] Found Green Vial name as:', greenvialname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[greenvialname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[greenvialname].CFrame)
						fireclickdetector(keyfolder[greenvialname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(greenvialname) then
							humanoid:EquipTool(backpack:FindFirstChild(greenvialname))
						end
						wait(0.25)
						parttp(savedpos)
				end
			end
		end
	end
	if keyfolder:FindFirstChild(greenvialname) then
    	greenvial = keyfolder[greenvialname]
	end
end
woodname = ""
wood = nil
function GetWood()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename  then
				if v.BrickColor == BrickColor.new("Burnt Sienna") then
						woodname = v.Name    
						print('[Baconator V3] Found Wood name as:', woodname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[woodname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[woodname].CFrame)
						fireclickdetector(keyfolder[woodname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(woodname) then
							humanoid:EquipTool(backpack:FindFirstChild(woodname))
						end
						wait(0.25)
						parttp(savedpos)
				end
			end
		end
	end
	if keyfolder:FindFirstChild(woodname) then
    	wood = keyfolder[woodname]
	end
end
function GetWaterGun()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Medium stone grey") then
					if v.Mesh.Scale == Vector3.new(0.25, 0.25, 0.4) then 
						watergunname = v.Name    
						print('[Baconator V3] Found Water Gun name as:', watergunname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[watergunname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[watergunname].CFrame)
						fireclickdetector(keyfolder[watergunname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(watergunname) then
							humanoid:EquipTool(backpack:FindFirstChild(watergunname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(watergunname) then
    	watergun = keyfolder[watergunname]
	end
end
crossbowname = ""
crossbow = nil
function GetCrossbow()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Beige") then
					if v.Mesh.Scale == Vector3.new(0.4, 0.4, 0.4) then 
						crossbowname = v.Name    
						print('[Baconator V3] Found Crossbow name as:', crossbowname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[crossbowname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[crossbowname].CFrame)
						fireclickdetector(keyfolder[crossbowname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(crossbowname) then
							humanoid:EquipTool(backpack:FindFirstChild(crossbowname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(crossbowname) then
    	crossbow = keyfolder[crossbowname]
	end
end
TNTname = ""
TNT = nil
function GetTNT()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Beige") then
					if v.Mesh.Scale == Vector3.new(0.3, 0.3, 0.3) then 
						TNTname = v.Name    
						print('[Baconator V3] Found TNT name as:', TNTname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[TNTname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[TNTname].CFrame)
						fireclickdetector(keyfolder[TNTname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(TNTname) then
							humanoid:EquipTool(backpack:FindFirstChild(TNTname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(TNTname) then
    	TNT = keyfolder[TNTname]
	end
end
Firename = ""
Fire = nil
function GetFire()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Beige") then
					if v.Mesh.Scale == Vector3.new(1, 1, 1) then 
						Firename = v.Name    
						print('[Baconator V3] Found FireE name as:', Firename)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[Firename].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[Firename].CFrame)
						fireclickdetector(keyfolder[Firename].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(Firename) then
							humanoid:EquipTool(backpack:FindFirstChild(Firename))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(Firename) then
    	Fire = keyfolder[Firename]
	end
end
function GetMirror()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("UnionOperation") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Pastel light blue") then
					if v.Mesh.Scale == Vector3.new(0.05, 0.05, 0.05) then 
						mirrorname = v.Name    
						print('[Baconator V3] Found Mirror name as:', mirrorname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[mirrorname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[mirrorname].CFrame)
						fireclickdetector(keyfolder[mirrorname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(mirrorname) then
							humanoid:EquipTool(backpack:FindFirstChild(mirrorname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(mirrorname) then
    	mirror = keyfolder[mirrorname]
	end
end
function GetMallet()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Bright yellow") then
					if v.Mesh.Scale == Vector3.new(1,1,1) then 
						malletname = v.Name    
						print('[Baconator V3] Found Mallet name as:', malletname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[malletname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[malletname].CFrame)
						fireclickdetector(keyfolder[malletname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(malletname) then
							humanoid:EquipTool(backpack:FindFirstChild(malletname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(malletname) then
    	mallet = keyfolder[malletname]
	end
end
function GetBone()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Beige") then
					if v.Mesh.Scale == Vector3.new(0.075, 0.075, 0.075) then 
						bonename = v.Name    
						print('[Baconator V3] Found Bone name as:', bonename)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[bonename].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[bonename].CFrame)
						fireclickdetector(keyfolder[bonename].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(bonename) then
							humanoid:EquipTool(backpack:FindFirstChild(bonename))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(bonename) then
    	bone = keyfolder[bonename]
	end
end
function GetEmptyVial()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("UnionOperation") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Fawn Brown") then
		    		if v.Material == "Glass" then 
						emptyvialname = v.Name    
						print('[Baconator V3] Found Empty Vial name as:', emptyvialname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[emptyvialname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[emptyvialname].CFrame)
						fireclickdetector(keyfolder[emptyvialname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(emptyvialname) then
							humanoid:EquipTool(backpack:FindFirstChild(emptyvialname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(emptyvialname) then
    	emptyvial = keyfolder[emptyvialname]
	end
end
function GetlitTorch()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds YellowKey
		if v:IsA("Part") then
			if v.Name ~= keycodename then
				if v.BrickColor == BrickColor.new("Dark stone grey") then
		    		if v.Mesh.Scale == Vector3.new(2, 2, 2) then 
						littorchname = v.Name    
						print('[Baconator V3] Found Empty Vial name as:', emptyvialname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[littorchname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[littorchname].CFrame)
						fireclickdetector(keyfolder[littorchname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(littorchname) then
							humanoid:EquipTool(backpack:FindFirstChild(littorchname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(littorchname) then
    	littorch = keyfolder[littorchname]
	end
end
function GetHammer()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds Hammer
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Institutional white") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(1.2, 1.2, 1.2) then 
						hammername = v.Name    
						print('Found Hammer name as:', hammername)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[hammername].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[hammername].CFrame)
						fireclickdetector(keyfolder[hammername].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(hammername) then
							humanoid:EquipTool(backpack:FindFirstChild(hammername))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(hammername) then
    	hammer = keyfolder[hammername]
	end
end
function GetWrench()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds Wrench
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Institutional white") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.6, 0.6, 0.6) then 
						wrenchname = v.Name    
						print('Found Wrench name as:', wrenchname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[wrenchname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[wrenchname].CFrame)
						fireclickdetector(keyfolder[wrenchname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(wrenchname) then
							humanoid:EquipTool(backpack:FindFirstChild(wrenchname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(wrenchname) then
		wrench = keyfolder[wrenchname]
	end
end
function GetGas()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds Gas
    	if v:IsA("UnionOperation") then
    	    if v.BrickColor == BrickColor.new("Persimmon") then
         	gasname = v.Name
        	print('Found Gas name as:', gasname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[gasname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[gasname].CFrame)
						fireclickdetector(keyfolder[gasname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(gasname) then
							humanoid:EquipTool(backpack:FindFirstChild(gasname))
						end
						wait(0.25)
						parttp(savedpos)
			end
    	end
	end
	if keyfolder:FindFirstChild(gasname) then
    	gas = keyfolder[gasname]
	end
end
function GetBattery()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds Gas
    	if v:IsA("Part") then
    	    if v.BrickColor == BrickColor.new("Really Black") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(1, 1, 1) then 
                    	batteryname = v.Name
                    	print('Found Battery name as:', battery)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[batteryname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[batteryname].CFrame)
						fireclickdetector(keyfolder[batteryname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(batteryname) then
							humanoid:EquipTool(backpack:FindFirstChild(batteryname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
    	end
	end
	if keyfolder:FindFirstChild(batteryname) then
    	battery = keyfolder[batteryname]
	end
end
function GetRedEgg()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds RedEgg
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Really red") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.75, 0.7, 0.75) then 
						redeggname = v.Name    
						print('Found RedEgg name as:', redeggname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[redeggname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[redeggname].CFrame)
						fireclickdetector(keyfolder[redeggname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(redeggname) then
							humanoid:EquipTool(backpack:FindFirstChild(redeggname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(redeggname) then
		redegg = keyfolder[redeggname]
	end
end
function GetGreenEgg()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds GreenEgg
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Sea green") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.75, 0.7, 0.75) then 
						greeneggname = v.Name    
						print('Found GreenEgg name as:', greeneggname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[greeneggname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[greeneggname].CFrame)
						fireclickdetector(keyfolder[greeneggname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(greeneggname) then
							humanoid:EquipTool(backpack:FindFirstChild(greeneggname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(greeneggname) then
		greenegg = keyfolder[greeneggname]
	end
end
function GetGreenGear()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds GreenGear
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Shamrock") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.025, 0.025, 0.025) then 
						greengearname = v.Name    
						print('Found GreenGear name as:', greengearname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[greengearname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[greengearname].CFrame)
						fireclickdetector(keyfolder[greengearname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(greengearname) then
							humanoid:EquipTool(backpack:FindFirstChild(greengearname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(greengearname) then
		greengear = keyfolder[greengearname]
	end
end
function GetRedGear()
	for i,v in pairs(keyfolder:GetDescendants()) do -- Finds RedGear
		if v:IsA("Part") then 
			if v.BrickColor == BrickColor.new("Persimmon") then
				if v.Name ~= keycodename then
					if v.Mesh.Scale == Vector3.new(0.025, 0.025, 0.025) then 
						redgearname = v.Name    
						print('Found RedGear name as:', redgearname)
						local savedpos = hrp.CFrame
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleporting") then -- Anti Cheat remove
							game:GetService("Players").LocalPlayer.Character.Teleporting:Destroy()
						end
						keyfolder[redgearname].ClickDetector.MaxActivationDistance = "100"
						parttp(keyfolder[redgearname].CFrame)
						fireclickdetector(keyfolder[redgearname].ClickDetector,0)
						wait(0.25)
						if backpack:FindFirstChild(redgearname) then
							humanoid:EquipTool(backpack:FindFirstChild(redgearname))
						end
						wait(0.25)
						parttp(savedpos)
					end
				end
			end
		end
	end
	if keyfolder:FindFirstChild(redgearname) then
		redgear = keyfolder[redgearname]
	end
end
function respawn() -- Respawns you
	if checkGameProgress() then
		local times = 0
		print("Bypassing AntiTP... -- Baconator V3")
		for i = 1,15 do
			times = times + 1
			print("Teleported "..times.." Out of 15 -- Baconator V2")
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")[getMap()]:FindFirstChildOfClass("Folder"):FindFirstChildOfClass("Part").CFrame * CFrame.new(0, 0, -3)
			FlingPreventionUpdate()
			wait(0)
		end
		camera.CameraType = "Custom"
		camera.CameraSubject = players.LocalPlayer.Character.HumanoidRootPart
		players.LocalPlayer.PlayerGui.MainMenu.PlayMenu.Visible = false
		players.LocalPlayer.PlayerGui.GameGui.Fade.Visible = false
		players.LocalPlayer.PlayerGui.MainMenu.Title.Visible = false
		players.LocalPlayer.PlayerGui.MainMenu.Play.Visible = false
		players.LocalPlayer.PlayerGui.MainMenu.Shop.Visible = false
		
		print('[Baconator V3] Respawned!')
	else
		camera:Destroy()
		local newcamera = game:GetService("Lighting").Camera:Clone()
		newcamera.Parent = game:GetService("Workspace")
		players.LocalPlayer.PlayerGui.MainMenu.PlayMenu.Visible = true
		players.LocalPlayer.PlayerGui.GameGui.Fade.Visible = false
		players.LocalPlayer.PlayerGui.MainMenu.Title.Visible = true
		players.LocalPlayer.PlayerGui.MainMenu.Play.Visible = true
		players.LocalPlayer.PlayerGui.MainMenu.Shop.Visible = true
		
		print('[Baconator V3] UI Fixed!')
	end
end
local RespawnB = Misc:Button("Respawn",function()
    respawn()
end)
local WalkspeedS = Misc:Slider("Walk Speed",16,100,true,function(x)
    changeWalkspeed(x)
end)
_G.Nocl = false
local NoCliB = Misc:Toggle("Noclip",function(State)
    _G.Nocl = State
end)
game:GetService("RunService").RenderStepped:connect(function()
    if _G.Nocl == false then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(18)
    else
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)
local WalkspeedS = Misc:Slider("Jump Power",50,300,true,function(x)
    changeJump(x)
end)
local Map1 = Library.Category("House Items","Items that are in house",Color3.fromRGB(15,200,12))
local RedB = Map1:Button("Red Key",function()
    GetRedKey()
end)
local BlueB = Map1:Button("Blue Key",function() 
    GetBlueKey()
end)
local GreenB = Map1:Button("Green Key",function() 
    GetGreenKey()
end)
local OrangeB = Map1:Button("Orange Key",function()
    GetOrangekey()
end)
local PurpleB = Map1:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB = Map1:Button("Gold Key",function()
    GetYellowKey()
end)
local SilverB = Map1:Button("Silver Key",function() 
    GetWhiteKey()
end)
local HammerB = Map1:Button("Hammer",function() 
    GetHammer()
end)
local WrenchB = Map1:Button("Wrench",function() 
    GetWrench()
end)
local keycodeB = Map1:Button("Keycode",function() 
    GetKeyCode()
end)
local redgearB = Map1:Button("Red Gear",function()
    GetRedGear()
end)
local greengearB = Map1:Button("Green Gear",function()
    GetGreenGear()
end)
local Map2 = Library.Category("Station Items","Items that are in Station",Color3.fromRGB(15,200,12))
local RedB2 = Map2:Button("Red Key",function()
    GetRedKey()
end)
local BlueB2 = Map2:Button("Blue Key",function() 
    GetBlueKey()
end)
local GreenB2 = Map2:Button("Green Key",function() 
    GetGreenKey()
end)
local OrangeB2 = Map2:Button("Orange Key",function()
    GetOrangekey()
end)
local PurpleB2 = Map2:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB2 = Map2:Button("Gold Key",function()
    GetYellowKey()
end)
local SilverB2 = Map2:Button("Silver Key",function() 
    GetWhiteKey()
end)
local HammerB2 = Map2:Button("Hammer",function() 
    GetHammer()
end)
local WrenchB2 = Map2:Button("Wrench",function() 
    GetWrench()
end)
local BattteryB = Map2:Button("Battery",function() 
    GetBattery()
end)
local gasB = Map2:Button("Gas",function()
    GetGas()
end)
local Map3 = Library.Category("Gallery Items","Items that are in Gallery",Color3.fromRGB(15,200,12))

local RedB3 = Map3:Button("Red Key",function()
    GetRedKey()
end)
local BlueB3 = Map3:Button("Blue Key",function() 
    GetBlueKey()
end)
local GreenB3 = Map3:Button("Green Key",function() 
    GetGreenKey()
end)
local OrangeB3 = Map3:Button("Orange Key",function()
    GetOrangekey()
end)
local PurpleB3 = Map3:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB3 = Map3:Button("Gold Key",function()
    GetYellowKey()
end)
local SilverB3 = Map3:Button("Silver Key",function() 
    GetWhiteKey()
end)
local HammerB3 = Map3:Button("Hammer",function() 
    GetHammer()
end)
local WrenchB3 = Map3:Button("Wrench",function() 
    GetWrench()
end)
local RedEggB = Map3:Button("Red Egg",function() 
    GetRedEgg()
end)
local GreenEggB = Map3:Button("Green Egg",function()
    GetGreenEgg()
end)
local BoneB = Map3:Button("Bone",function()
    GetBone()
end)
local Map4 = Library.Category("Forest Items","Items that are in Forest",Color3.fromRGB(15,200,12))
local RedB4 = Map4:Button("Red Key",function()
    GetRedKey()
end)
local BlueB4 = Map4:Button("Blue Key",function() 
    GetBlueKey()
end)
local GreenB4 = Map4:Button("Green Key",function() 
    GetGreenKey()
end)
local OrangeB4 = Map4:Button("Orange Key",function()
    GetOrangekey()
end)
local PurpleB4 = Map4:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB4 = Map4:Button("Gold Key",function()
    GetYellowKey()
end)
local SilverB4 = Map4:Button("Silver Key",function() 
    GetWhiteKey()
end)
local HammerB4 = Map4:Button("Hammer",function() 
    GetHammer()
end)
local WrenchB4 = Map4:Button("Wrench",function() 
    GetWrench()
end)
local RedEggB4 = Map4:Button("Lit Torch",function() 
    GetlitTorch()
end)
local Map5 = Library.Category("School Items","Items that are in School",Color3.fromRGB(15,200,12))
local RedB5 = Map5:Button("Red Key",function()
    GetRedKey()
end)
local BlueB5 = Map5:Button("Blue Key",function() 
    GetBlueKey()
end)
local GreenB5 = Map5:Button("Green Key",function() 
    GetGreenKey()
end)
local OrangeB5 = Map5:Button("Orange Key",function()
    GetOrangekey()
end)
local PurpleB5 = Map5:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB5 = Map5:Button("Gold Key",function()
    GetYellowKey()
end)
local SilverB5 = Map5:Button("Silver Key",function() 
    GetWhiteKey()
end)
local HammerB5 = Map5:Button("Hammer",function() 
    GetHammer()
end)
local WrenchB5 = Map5:Button("Wrench",function() 
    GetWrench()
end)
local CarrotB5 = Map5:Button("Carrot",function() 
    GetCarrot()
end)
local BookB5 = Map5:Button("Book",function() 
    GetBook()
end)
local redgearB5 = Map5:Button("Red Gear",function()
    GetRedGear()
end)
local greengearB5 = Map5:Button("Green Gear",function()
    GetGreenGear()
end)
local Map6 = Library.Category("Hospital Items","Items that are in Hospital (living hell to code)",Color3.fromRGB(15,200,12))
local RedB5 = Map6:Button("Red Keycard",function()
    GetRedKeycard()
end)
local BlueB5 = Map6:Button("Blue Keycard",function() 
    GetBlueKeycard()
end)
local GreenB5 = Map6:Button("Green Keycard",function() 
    GetGreenKeycard()
end)
local OrangeB5 = Map6:Button("Orange Keycard",function()
    GetOrangeKeycard()
end)
local PurpleB5 = Map6:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB5 = Map6:Button("Gold Key",function()
    GetYellowKey()
end)
local SilverB5 = Map6:Button("Silver Key",function() 
    GetWhiteKey()
end)
local HammerB5 = Map6:Button("Hammer",function() 
    GetHammer()
end)
local WrenchB5 = Map6:Button("Wrench",function() 
    GetWrench()
end)
local CarrotB5 = Map6:Button("Carrot",function() 
    GetCarrot()
end)
local EmptyVialB5 = Map6:Button("Empty Vial",function() 
    GetEmptyVial()
end)
local GreenVialB5 = Map6:Button("Green Vial",function()
    GetGreenVial()
end)
local PinkVialB5 = Map6:Button("Pink Vial",function()
    GetPinkVial()
end)
local WoodB5 = Map6:Button("Wood",function()
    GetWood()
end)
local Map7 = Library.Category("Metro Items","Items that are in Metro",Color3.fromRGB(15,200,12))
local RedB2 = Map7:Button("Red Key",function()
    GetRedKey()
end)
local BlueB2 = Map7:Button("Blue Key",function() 
    GetBlueKey()
end)
local GreenB2 = Map7:Button("Green Key",function() 
    GetGreenKey()
end)
local OrangeB2 = Map7:Button("Orange Key",function()
    GetOrangekey()
end)
local PurpleB2 = Map7:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB2 = Map7:Button("Gold Key",function()
    GetYellowKey()
end)
local SilverB2 = Map7:Button("Silver Key",function() 
    GetWhiteKey()
end)
local HammerB2 = Map7:Button("Hammer",function() 
    GetHammer()
end)
local WrenchB2 = Map7:Button("Wrench",function() 
    GetWrench()
end)
local CoinB2 = Map7:Button("Coin",function() 
    GetCoin()
end)
local WrenchB2 = Map7:Button("Crossbow",function() 
    GetCrossbow()
end)
local WrenchB2 = Map7:Button("Blue Keycard",function() 
    GetBlueKeycard()
end)
local Map8 = Library.Category("Carnival Items","Items that are in Carnival",Color3.fromRGB(15,200,12))
local RedB2 = Map8:Button("Red Key",function()
    GetRedKey()
end)
local BlueB2 = Map8:Button("Blue Key",function() 
    GetBlueKey()
end)
local GreenB2 = Map8:Button("Green Key",function() 
    GetGreenKey()
end)
local OrangeB2 = Map8:Button("Orange Key",function()
    GetOrangekey()
end)
local PurpleB2 = Map8:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB2 = Map8:Button("Gold Key",function()
    GetYellowKey()
end)
local SilverB2 = Map8:Button("Silver Key",function() 
    GetWhiteKey()
end)
local HammerB2 = Map8:Button("Hammer",function() 
    GetHammer()
end)
local WrenchB2 = Map8:Button("Wrench",function() 
    GetWrench()
end)
local CoinB2 = Map8:Button("Keycode",function() 
    GetKeyCode()
end)
local WrenchB2 = Map8:Button("Mallet",function() 
    GetMallet()
end)
local WrenchB2 = Map8:Button("Water Gun ",function() 
    GetWaterGun()
end)
local Map9 = Library.Category("City Items","Items that are in City ",Color3.fromRGB(15,200,12))
local RedB2 = Map9:Button("Red Keycard",function()
    GetRedKeycard()
end)
local BlueB2 = Map9:Button("Blue Keycard",function() 
    GetBlueKeycard()
end)
local GreenB2 = Map9:Button("Green Keycard",function() 
    GetGreenKeycard()
end)
local OrangeB2 = Map9:Button("Orange Keycard",function()
    GetOrangekeycard()
end)
local PurpleB2 = Map9:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB2 = Map9:Button("Gold Key",function()
    GetYellowKey()
end)
local SilverB2 = Map9:Button("Keycode",function() 
    GetKeyCode()
end)
local HammerB2 = Map9:Button("Hammer",function() 
    GetHammer()
end)
local WrenchB2 = Map9:Button("Wrench",function() 
    GetWrench()
end)
local CoinB2 = Map9:Button("Grass",function() 
    GetGrass()
end)
local WrenchB2 = Map9:Button("Carrot",function() 
    GetCarrot()
end)
local WrenchB2 = Map9:Button("TNT",function() 
    GetTNT()
end)
local WrenchB2 = Map9:Button("Fire Extinguisher",function() 
    GetFire()
end)
local Map10 = Library.Category("Mall Items","Items that are in Mall",Color3.fromRGB(15,200,12))
local RedB2 = Map10:Button("Red Key",function()
    GetRedKey()
end)
local BlueB2 = Map10:Button("Blue Key",function() 
    GetBlueKey()
end)
local GreenB2 = Map10:Button("Green Keycard",function() 
    GetGreenKeycard()
end)
local OrangeB2 = Map10:Button("Orange Key",function()
    GetOrangekey()
end)
local PurpleB2 = Map10:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB2 = Map10:Button("Gold Key",function()
    GetYellowKey()
end)
local GoldB2 = Map10:Button("Silver Key",function()
    GetWhiteKey()
end)
local SilverB2 = Map10:Button("Mirror",function() 
    GetMirror()
end)
local CrowBarB2 = Map10:Button("CrowBar",function() 
    GetCrowbar()
end)
local WrenchB2 = Map10:Button("Wrench",function() 
    GetWrench()
end)
local CoinB2 = Map10:Button("Grass",function() 
    GetGrass()
end)
local WrenchB2 = Map10:Button("Coin",function() 
    GetCoin()
end)
local Map11 = Library.Category("Outpost Items","Items that are in Outpost",Color3.fromRGB(15,200,12))
local RedB2 = Map11:Button("Red Key",function()
    GetRedKey()
end)
local BlueB2 = Map11:Button("Blue Key",function() 
    GetBlueKey()
end)
local BlueB2 = Map11:Button("Blue Keycard",function() 
    GetBlueKeycard()
end)
local GreenB2 = Map11:Button("Green Key",function() 
    GetGreenKey()
end)
local OrangeB2 = Map11:Button("Orange Key",function()
    GetOrangekey()
end)
local PurpleB2 = Map11:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB2 = Map11:Button("Gold Key",function()
    GetYellowKey()
end)
local GoldB2 = Map11:Button("Fire Extinguisher",function()
    GetFire()
end)
local GoldB2 = Map11:Button("Wrench",function()
    GetWrench()
end)

local SilverB2 = Map11:Button("Gas",function() 
    GetGas()
end)
local CrowBarB2 = Map11:Button("Carrot",function() 
    GetCarrot()
end)
local WrenchB2 = Map11:Button("Shell",function() 
    GetShell()
end)
local Map115 = Library.Category("Distorted Memory Items","Items that are in Distorted Memory",Color3.fromRGB(15,200,12))
local RedB = Map115:Button("Red Key",function()
    GetRedKey()
end)
local BlueB = Map115:Button("Blue Key",function() 
    GetBlueKey()
end)
local GreenB = Map115:Button("Green Key",function() 
    GetGreenKey()
end)
local OrangeB = Map115:Button("Orange Key",function()
    GetOrangekey()
end)
local PurpleB = Map115:Button("Purple Key",function() 
    GetPurpleKey()
end)
local GoldB = Map115:Button("Gold Key",function()
    GetYellowKey()
end)
local SilverB = Map115:Button("Silver Key",function() 
    GetWhiteKey()
end)
local WoodB = Map115:Button("Wood",function()
    GetWood()
end)
local HammerB = Map115:Button("Hammer",function() 
    GetHammer()
end)
local WrenchB = Map115:Button("Wrench",function() 
    GetWrench()
end)
local keycodeB = Map115:Button("Keycode",function() 
    GetKeyCode()
end)
local redgearB = Map115:Button("Toy Dino",function()
    GetToyDino()
end)
local greengearB = Map115:Button("Toy Robot",function()
    GetToyRobot()
end)
local CReds = Library.Category("By: SlaxxF","AKA: SkeletalScripts",Color3.fromRGB(15,200,12))

-- antiafk 
local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(
	    function()
	        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	        wait(1)
	        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	    end)
