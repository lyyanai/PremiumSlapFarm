game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Checking User HWID..." ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "ok"})
local HWIDList = loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/HWID_WhiteList/main/main.lua'))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i,v in pairs(HWIDList) do
  if v == HWID then
    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Whitelisted!",Text = "Successfully Whitelisted! Hold on, script is loading." ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
  
wait(2)

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local BoxingEvent = Events:WaitForChild("Boxing")
local TeleportService = game:GetService("TeleportService")
local Http = game:GetService("HttpService")
local Player = Players.LocalPlayer

local Api = "https://games.roblox.com/v1/games/"
local _place, _id = game.PlaceId, game.JobId
local _servers = Api .. _place .. "/servers/Public?sortOrder=Desc&limit=100"

local GameName = "slap farm gui - by nexer"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "slap farm gui! v3", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

function SpamReplica()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" then
while ReplicaFarm do
fireclickdetector(workspace.Lobby["Ghost"].ClickDetector)
wait(0.3)
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17893.529296875, -23.757728576660156, -3515.2001953125)
wait(0.5)
game:GetService("ReplicatedStorage").Duplicate:FireServer(true)
wait(0.2)
fireclickdetector(workspace.Lobby["Boxer"].ClickDetector)
wait(0.2)
repeat task.wait() until game.Players.LocalPlayer.Character
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport2.TouchInterest.Parent, 1)
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17893.529296875, -23.757728576660156, -3515.2001953125)
wait(20)
game.ReplicatedStorage.HumanoidDied:FireServer(game.Players.LocalPlayer.Character,false)
wait(0.3)
fireclickdetector(workspace.Lobby["Replica"].ClickDetector)
wait(0.2)
end
end
end

local Gloves = Window:MakeTab({
	Name = "Slap Farming",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Slap = Gloves:AddSection({
	Name = "Slap Farming"
})

Slap:AddButton({
	Name = "Equip Replica",
	Callback = function()
			 fireclickdetector(workspace.Lobby["Replica"].ClickDetector)
	 end
})

Slap:AddButton({
	Name = "Equip Baller",
	Callback = function()
			 fireclickdetector(workspace.Lobby["Baller"].ClickDetector)
	 end
})

Slap:AddButton({
	Name = "Equip Blink",
	Callback = function()
			 fireclickdetector(workspace.Lobby["Blink"].ClickDetector)
	 end
})

Slap:AddToggle({
	Name = "Auto Slap Blink & Replica & Baller { TURN ME ON }",
	Default = false,
	Callback = function(Value)
slap = Value
if slap == true then
repeat task.wait()
for i, v in pairs(workspace:GetChildren()) do
                if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
BoxingEvent:FireServer(v:WaitForChild("HumanoidRootPart"),true)
                end
            end
task.wait()
until slap == false
end
	 end
})

Slap:AddToggle({
	Name = "Replica + Boxer Farm { use in lobby }",
	Default = false,
	Callback = function(Value)
ReplicaFarm = Value
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" then
if ReplicaFarm == true then
coroutine.wrap(SpamReplica)()
end
elseif ReplicaFarm == true then
OrionLib:MakeNotification({Name = "Error",Content = "You have to equip replica.",Image = "rbxassetid://7733658504",Time = 5})
wait(0.05)
FarmReplica:Set(false)
end
	 end
})

  end
end
