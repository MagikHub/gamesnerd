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
local Library  = loadstring(game:HttpGet('https://raw.githubusercontent.com/skeletalz/Main-Stuff/master/Magik%20Hax%20Library'))()
local Car  = Library.Category("Car Scripts","Car Stuff",Color3.fromRGB(0,204,204))
local plr = game.Players.LocalPlayer
Car:Button("TP Car",function()
    tp(workspace.CarCollection:FindFirstChild(game.Players.LocalPlayer.Name).Car.PrimaryPart,plr.Character.HumanoidRootPart.CFrame + Vector3.new(10,10,0))
end)
function GetHighestCar()
    local Money = plr.Money.Value
    if Money < 500 then
        return "UAZ"
    elseif Money >= 500 and Money < 1550 then
        return "Chevorlet_2"
    elseif Money >= 1550 and Money < 2700 then
        return "Ford_5"
    elseif Money >= 2700 and Money < 3975 then
        return "Chevorlet_3"
    elseif Money >= 3975 and Money < 5375 then
        return "Golf"
    elseif Money >= 5375 and Money < 6900 then
        return "Nissan_1"
    elseif Money >= 6900 and Money < 8575 then
        return "Fiat"
    elseif Money >= 8575 and Money < 12500 then
        return "Scion_2"
    elseif Money >= 12500 and Money < 14750 then
        return "Scion_1"
    elseif Money >= 14750 and Money < 20000 then
        return "Mitsubishi_1"
    elseif Money >= 20000 and Money < 23000 then
        return "Sokudo_1"
    elseif Money >= 23000 and Money < 29750 then
        return "Lexus_1"
    elseif Money >= 29750 and Money < 33750 then
        return "Honda_1"
    elseif Money >= 33750 and Money < 38000 then
        return "Honda_2"
    elseif Money >= 38000 and Money < 42750 then
        return "TransitBus"
    elseif Money >= 42750 and Money < 48000 then
        return "Summit_1"
    elseif Money >= 48000 and Money < 60000 then
        return "NM_1"
    elseif Money >= 60000 and Money < 67000 then
        return "Honda_3"
    elseif Money >= 67000 and Money < 74500 then
        return "Volkswagen_1"
    elseif Money >= 74500 and Money < 82750 then
        return "Sokudo_2"
    elseif Money >= 82750 and Money < 92000 then
        return "Chevrolet_4"
    elseif Money >= 92000 and Money < 102500 then
        return "Trilogy"
    elseif Money >= 102500 and Money < 112500 then
        return "Volkswagen_2"
    elseif Money >= 112500 and Money < 125000 then
        return "Avanta_1"
    elseif Money >= 125000 and Money < 137500 then
        return "Toyota_2"
    elseif Money >= 137500 and Money < 167500 then
        return "Toyota_3"
    elseif Money >= 167500 and Money < 185000 then
        return "Ford_1"
    elseif Money >= 185000 and Money < 205000 then
        return "Auva_2"
    elseif Money >= 205000 and Money < 225000 then
        return "Valor"
    elseif Money >= 225000 and Money < 272500 then
        return "Audi_1"
    elseif Money >= 272500 and Money < 300000 then
        return "Mazda"
    elseif Money >= 300000 and Money < 330000 then
        return "Ford_2"
    elseif Money >= 330000 and Money < 362500 then
        return "Sokudo_3"
    elseif Money >= 362500 and Money < 400000 then
        return "Volkswagen_3"
    elseif Money >= 400000 and Money < 485000 then
        return "Cadillac_1"
    elseif Money >= 485000 and Money < 532500 then
        return "BMW_1"
    elseif Money >= 532500 and Money < 585000 then
        return "Caterham"
    elseif Money >= 585000 and Money < 642500 then
        return "NM_2"
    elseif Money >= 642500 and Money < 707500 then
        return "Toyota_4"
    elseif Money >= 707500 and Money < 855000 then
        return "Toyota_4"
    elseif Money >= 855000 and Money < 940000 then
        return "Toyota_5"
    elseif Money >= 940000 and Money <1100000 then
        return "Ford_3"
    elseif Money >= 1100000 and Money <1300000 then
        return "Jeep_2"
    elseif Money >= 1300000 and Money <1400000 then
        return "Kastell"
    elseif Money >= 1400000 and Money <1500000 then
        return "Mitsubishi_2"
    elseif Money >= 1500000 and Money <1600000 then
        return "Dodge_6"
    elseif Money >= 1600000 and Money <1800000 then
        return "Mercedes_1"
    elseif Money >= 1800000 and Money <2000000 then
        return "Chevrolet_5"
    elseif Money >= 2000000 and Money <2400000 then
        return "WVD_1"
    elseif Money >= 2400000 and Money <2600000 then
        return "BMW_2"
    elseif Money >= 2600000 and Money <2900000 then
        return "Nissan_2"
    elseif Money >= 2900000 and Money <3200000 then
        return "BMW_3"
    elseif Money >= 3200000 and Money <3800000 then
        return "Acura"
    elseif Money >= 3800000 and Money <4200000 then
        return "NM_3"
    elseif Money >= 4200000 and Money <4600000 then
        return "Hummer_2"
    elseif Money >= 4600000 and Money <5100000 then
        return "Summit_2"
    elseif Money >= 5100000 and Money <5600000 then
        return "Avanta_2"
    elseif Money >= 5600000 and Money <6800000 then
        return "Lynden"
    elseif Money >= 6800000 and Money <7500000 then
        return "BMW_4"
    elseif Money >= 7500000 and Money <8200000 then
        return "Dodge_2"
    elseif Money >= 8200000 and Money <9000000 then
        return "NM_4"
    elseif Money >= 9000000 and Money <11000000 then
        return "WVD_2"
    elseif Money >= 11000000 and Money <12000000 then
        return "Lakeland"
    elseif Money >= 12000000 and Money <13000000 then
        return "Toyota_6"
    elseif Money >= 13000000 and Money <15000000 then
        return "Hummer"
    elseif Money >= 15000000 and Money <18000000 then
        return "Mercedes_2"
    elseif Money >= 18000000 and Money <20000000 then
        return "Chevrolet_7"
    elseif Money >= 20000000 and Money <22000000 then
        return "Dodge_3"
    elseif Money >= 22000000 and Money <26000000 then
        return "EXR_1"
    elseif Money >= 26000000 and Money <29000000 then
        return "Nissan_3"
    elseif Money >= 29000000 and Money <38000000 then
        return "Cadillac_2"
    elseif Money >= 38000000 and Money <42000000 then
        return "Porsche_1"
    elseif Money >= 42000000 and Money <46000000 then
        return "KZ"
    elseif Money >= 46000000 and Money <51000000 then
        return "Dodge_4"
    elseif Money >= 51000000 and Money <56000000 then
        return "Cadillac_3"
    elseif Money >= 56000000 and Money <62000000 then
        return "Folstak_1"
    elseif Money >= 62000000 and Money <68000000 then
        return "BlueBird"
    elseif Money >= 68000000 and Money <75000000 then
        return "Volvo"
    elseif Money >= 75000000 and Money <82000000 then
        return "Brabus"
    elseif Money >= 82000000 and Money <99000000 then
        return "Audi_2"
    elseif Money >= 99000000 and Money <110000000 then
        return "Tesla_2"
    elseif Money >= 110000000 and Money <120000000 then
        return "Avanta_5"
    elseif Money >= 120000000 and Money <130000000 then
        return "Ferarri_1"
    elseif Money >= 130000000 and Money <140000000 then
        return "Mercedes_3"
    elseif Money >= 140000000 and Money <180000000 then
        return "Dodge_5"
    elseif Money >= 180000000 and Money <200000000 then
        return "Porsche_2"
    elseif Money >= 200000000 and Money <220000000 then
        return "Ferarri_3"
    elseif Money >= 220000000 and Money <240000000 then
        return "Nissan_4"
    elseif Money >= 240000000 and Money <260000000 then
        return "Tesla_3"
    elseif Money >= 260000000 and Money <320000000 then
        return "Dynex"
    elseif Money >= 320000000 and Money <350000000 then
        return "Tesla_4"
    elseif Money >= 350000000 and Money <380000000 then
        return "Grandeur_1"
    elseif Money >= 380000000 and Money <420000000 then
        return "Grandeur_2"
    elseif Money >= 420000000 and Money <510000000 then
        return "LandRover"
    elseif Money >= 510000000 and Money <620000000 then
        return "BAC"
    elseif Money >= 620000000 and Money <680000000 then
        return "Mercedes_6"
    elseif Money >= 680000000 and Money <750000000 then
        return "Folstak_2"
    elseif Money >= 750000000 and Money <820000000 then
        return "Formula"
    elseif Money >= 820000000 and Money <1200000000 then
        return "Grandeur_3"
    elseif Money >= 1200000000 and Money <1300000000 then
        return "Lamborghini_1"
    elseif Money >= 1300000000 and Money <1400000000 then
        return "Bugatti_1"
    elseif Money >= 1400000000 and Money <1500000000 then
        return "Lamborghini_10"
    elseif Money >= 1500000000 and Money <1600000000 then
        return "Kenworth"
    elseif Money >= 1600000000 and Money <2000000000 then
        return "Avanta_6"
    elseif Money >= 2000000000 and Money <2200000000 then
        return "Aston"
    elseif Money >= 2200000000 and Money <2400000000 then
        return "Nervudo"
    end
end
print(GetHighestCar())
function TestHighest()
    local Money = plr.Money.Value
    local price = nil
    local name = nil
    local DontSpawn = {}
    local DoSpawn = {} 
    for i,v in pairs(game.ReplicatedStorage.VehicleInformation:GetChildren()) do
        if v.GroupOnly == false then
            price = v.Price.Value
            if price > Money then
                table.insert(DontSpawn,v.Name)
            elseif price < Money then
                for i,f in pairs(game.ReplicatedStorage.VehicleInformation:GetChildren()) do
                    for i,blocked in pairs(DontSpawn) do
                        if f.Name ~= blocked then
                            if f.Price.Value > price then
                                price = f.Price.Value
                                name = f.Name
                            end
                        end
                    end
                end
            end
            return name
        end
    end
    
end
print(TestHighest)
Car:Button("Destroy Car",function()
    for i = 1,80 do
    workspace.CarCollection:WaitForChild(game.Players.LocalPlayer.Name).Car:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame + Vector3.new(5,22.5,10))
      
                wait(.2)
            workspace.CarCollection:WaitForChild(game.Players.LocalPlayer.Name).Car:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame + Vector3.new(5,-2,10))
    end
end)
Car:Button("Spawn Best Car",function()
    local Event = game:GetService("ReplicatedStorage").rF.InsertCar
    Event:InvokeServer(GetHighestCar())
    local Event = game:GetService("ReplicatedStorage").rF.SpawnVehicle
    Event:InvokeServer(GetHighestCar())
    for i = 1,5 do
    plr.Character.Humanoid.Jump = true
    wait(0.2)
    end
end)
Car:Toggle("AutoFarm",function(State)
    _G.ABreak = State
end)
Car:Slider("Car Speed",0,12,true,function(X)
    _G.CRSPeed = X
end)

spawn(function()
    while wait() do
        if _G.ABreak == true then
            if workspace.CarCollection:FindFirstChild(game.Players.LocalPlayer.Name) ~= nil then
            if workspace.CarCollection:FindFirstChild(game.Players.LocalPlayer.Name).PrimaryPart ~= nil then

               for i = 1,90 do
                   if workspace.CarCollection:WaitForChild(game.Players.LocalPlayer.Name).PrimaryPart ~= nil then
    workspace.CarCollection:WaitForChild(game.Players.LocalPlayer.Name).Car:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame + Vector3.new(5,22.5,10))
            
                wait(.2)
                 if workspace.CarCollection:WaitForChild(game.Players.LocalPlayer.Name).PrimaryPart ~= nil then
            workspace.CarCollection:WaitForChild(game.Players.LocalPlayer.Name).Car:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame + Vector3.new(5,-2,10))
                   end end end
                   local Event = game:GetService("ReplicatedStorage").rF.InsertCar
    Event:InvokeServer(GetHighestCar())
    local Event = game:GetService("ReplicatedStorage").rF.SpawnVehicle
    Event:InvokeServer(GetHighestCar())
    for i = 1,5 do
    plr.Character.Humanoid.Jump = true
    wait(0.2)
    end
                  end 
                else
                        local Event = game:GetService("ReplicatedStorage").rF.InsertCar
    Event:InvokeServer(GetHighestCar())
    local Event = game:GetService("ReplicatedStorage").rF.SpawnVehicle
    Event:InvokeServer(GetHighestCar())
    for i = 1,5 do
    plr.Character.Humanoid.Jump = true
    wait(0.2)
    end
            end
        end
        if _G.CRSPeed ~= nil and _G.CRSPeed ~= 0 then
            if workspace.CarCollection:FindFirstChild(game.Players.LocalPlayer.Name) ~= nil then

            if workspace.CarCollection:FindFirstChild(game.Players.LocalPlayer.Name).PrimaryPart ~= nil then
                local car =  workspace.CarCollection:WaitForChild(game.Players.LocalPlayer.Name).Car
                car:SetPrimaryPartCFrame(car.PrimaryPart.CFrame + plr.Character.HumanoidRootPart.CFrame.lookVector * Vector3.new(_G.CRSPeed,0,_G.CRSPeed))
            end end
        end
    end
end)

local bH=game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:connect(function()bH:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)bH:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)
