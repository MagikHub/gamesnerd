local Library  = loadstring(game:HttpGet('https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/Magik%20Hax%20Library'))()
local chr = game.Players.LocalPlayer.Character
function tp(x,y,z)
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
    game.Players.LocalPlayer.Character.Humanoid.Jump = true

    wait(0.1)
     game.Players.LocalPlayer.Character.Humanoid.Sit = true
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
       local tweenService = game:GetService("TweenService")
       local tweeningInformation = TweenInfo.new(
   
(CFrame.new(x,y,z).p - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.p).Magnitude/120, -- Length
Enum.EasingStyle.Linear, -- Easing style of the TweenInfo
Enum.EasingDirection.Out, -- Easing direction of the TweenInfo
0, -- Number of times the tween will repeat   
false, -- Should the tween repeat?
0 -- Delay between each tween  
)
local partProperties = {
    CFrame = CFrame.new(x,y,z)
}
        local Tween = tweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,tweeningInformation,partProperties)
        Tween:Play()
            
            
            
            
end
local Teleport  = Library.Category("Teleports","TP Scripts",Color3.fromRGB(0,204,204))
local Sell = Teleport:Button("Sell",function()
    tp(532.703, 177.341, 152.329) 
end)
local Shop = Teleport:Button("Shop",function()
    tp(468.374, 178.281, 51.1606) 
end)
local Rew = Teleport:Button("Reward",function()
    tp(497.852, 181.285, 133.877)
end)
local CShop = Teleport:Button("Crown Shop",function()
    tp(722.673, 184.674, 184.975)
end)
local Captures   = Library.Category("Captures","Captures Tp's",Color3.fromRGB(0,204,204))
local f1 = Captures:Button("flag 1",function()
    tp(638.977, 224.88, 142.032)
end)
local f2 = Captures:Button("flag 2",function()
    tp(-29.4528, 218.63, 80.126)
end)
local f3 = Captures:Button("flag 3",function()
    tp(439.85, 244.85, -259.297)
end)
local sep = Captures:Section("There is a lot XD")
local f4 = Captures:Button("flag 4",function()
    tp(606.841, 23121.5, -367.398)
end)
local f5 = Captures:Button("flag 5",function()
    tp(715.127, 175.09, 466.196)
end)
local f6 = Captures:Button("flag 6",function()
    tp(627.556, 440.056, -107.088)
end)
local sep2 = Captures:Section("Why did I make this")
local f7 = Captures:Button("flag 7",function()
    tp(707.153, 1108.2, -215.27)
end)
local f8 = Captures:Button("flag 8",function()
    tp(605.414, 1425.78, 64.8864)
end)
local f9 = Captures:Button("flag 9",function()
    tp(256.502, 2125.29, -69.1438)
end)
local f10 = Captures:Button("flag 10",function()
    tp(597.303, 3145.82, -16.4678)
end)
local f11 = Captures:Button("flag 11",function()
    tp(791.307, 4429.21, -62.185)
end)
local f12 = Captures:Button("flag 12",function()
    tp(602.927, 5403.05, -138.782)
end)
local f13 = Captures:Button("flag 13",function()
    tp(666.661, 6318.63, -150.836)
end)
local f14 = Captures:Button("flag 14",function()
    tp(616.287, 8629.09, -67.599)
end)
local f15 = Captures:Button("flag 15",function()
    tp(806.908, 10536.6, -69.8477)
end)
local f16 = Captures:Button("flag 16",function()
    tp(524.449, 11930.9, -26.9696)
end)
local f17 = Captures:Button("flag 17",function()
    tp(395.888, 13391.5, -443.87)
end)
local f18 = Captures:Button("flag 18",function()
    tp(628.495, 15542.5, -188.481)
end)
local f19 = Captures:Button("flag 19",function()
    tp(456.982, 17391.7, -31.6801)
end)
local f20 = Captures:Button("flag 20",function()
    tp(339.488, 18806.4, -33.1929)
end)
local f21 = Captures:Button("flag 21",function()
    tp(714.153, 20534.6, -432.27)
end)
local f22 = Captures:Button("flag 22",function()
    tp(465.202, 21805.6, -522.23)
end)
local Func  = Library.Category("Functions","Main Scripts",Color3.fromRGB(0,204,204))
local AutoSell = Func:Toggle("Auto Sell",function(State)
    _G.Asell = State
end)
local AutoFSell = Func:Toggle("Auto Sell [Full]",function(State)
    _G.AFsell = State
end)
local AutoSwing = Func:Toggle("Auto Swing",function(State)
    _G.Swing = State
end)
local Upg = Func:Section("Upgrades")
local AutoSword = Func:Toggle("Auto Sword Upgrade",function(State)
    _G.Sword = State
end)
local AutoDNA = Func:Toggle("Auto DNA Upgrade",function(State)
    _G.DNA = State
end)
local AutoClass = Func:Toggle("Auto Class Upgrade",function(State)
    _G.Class = State
end)
local AutoJump = Func:Toggle("Auto Jumps Upgrade",function(State)
    _G.Jump = State
end)
local AutoBossHit = Func:Toggle("Auto Boss Hit",function(State)
    _G.BossHit = State
end)
local Misc  = Library.Category("Misc","Misc Scripts",Color3.fromRGB(0,204,204))
Misc:Box("Walkspeed","16",function(spood)
    game:GetService("RunService").RenderStepped:Connect(function()
        local bac = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = spood
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = bac
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        wait()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = spood
    end)
end)
Misc:Box("JumpPower","50",function(spood)
    game:GetService("RunService").RenderStepped:Connect(function()
        local bac = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = spood
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = bac
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        wait()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = spood
    end)
end)
Misc:Slider("Gravity",16,196.2,true,function(spood)
    game:GetService("RunService").RenderStepped:Connect(function()
        workspace.Gravity = spood
    end)
end)
--Toggles
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Asell then
            wait()
            local plr = game.Players.LocalPlayer 
            pcall(function()
                game.ReplicatedStorage.Events.Sell:FireServer()
                tp(532.703, 177.341, 152.329)
            end)
        end
    end)
end)
-- ^ AutoSell
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AFsell then
            wait()
            local plr = game.Players.LocalPlayer 
            pcall(function()
                local split = string.split(plr.PlayerGui.Gui.Home.Sand.Amount.Text, "/")
                local current = tonumber(split[1])
                local maxc = tonumber(split[2])
                if current >= maxc then
                    local back1 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X
                    local back2 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y
                    local back3 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
                    tp(532.703, 177.341, 152.329)
                    wait(0.3)
                    game.ReplicatedStorage.Events.Sell:FireServer()
                    wait(0.1)
                    tp(back1,back2,back3)
                end
            end)
        end
    end)
end)
-- ^ AutoSell Full
spawn(function()
	local plr = game.Players.LocalPlayer
	game:GetService("RunService").RenderStepped:connect(function()
		if _G.Swing then
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v and plr.Character:FindFirstChild("HumanoidRootPart") and v:IsA("Tool") then
				local Sword = v.Name
		        local Remote = game.ReplicatedStorage.Events['Clicked']
	            local Arguments = {}
	            Remote:FireServer(unpack(Arguments))
	            local Event = game:GetService("ReplicatedStorage").Events.Sell
	            Event:FireServer()
				local equip = game.ReplicatedStorage.Events["EquipItem"]
				equip:FireServer(Sword)
			end
		end  end
	end)
end)
-- ^ autoswing
spawn(function()
	local plr = game.Players.LocalPlayer
	game:GetService("RunService").RenderStepped:connect(function()
		if _G.Sword then
		    game.ReplicatedStorage.Events.BuyAll:FireServer("Swords")
		end
		if _G.DNA then
		    game.ReplicatedStorage.Events.BuyAll:FireServer("Backpacks")
		end
		if _G.Class then
		    game.ReplicatedStorage.Events.BuyAll:FireServer("Classes")
		end
		if _G.Jump then
		    game.ReplicatedStorage.Events.BuyAll:FireServer("JumpBoosts")
		end
		if _G.BossHit then
		    game.ReplicatedStorage.Events.BuyAll:FireServer("BossBoosts")
		end
	end)
end)

local bH=game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:connect(function()bH:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)bH:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)

