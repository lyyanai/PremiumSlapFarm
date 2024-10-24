game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Checking User HWID." ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "ok"})
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "If you're not whitelisted, script won't load." ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "ok"})

local HWIDList = loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/HWID_WhiteList/main/main.lua'))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i,v in pairs(HWIDList) do
  if v == HWID then
    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Whitelisted!",Text = "Successfully Whitelisted! Hold on, script is loading." ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})




		
setclipboard(tostring("https://www.youtube.com/@nexer1234"))
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Copied Youtube Channel Link" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
wait(0.05)
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Script By Nexer1234" ,Duration = 1000, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})		

if workspace:FindFirstChild("Baseplate") == nil then
local S = Instance.new("Part")
S.Name = "Baseplate"
S.Anchored = true
S.CanCollide = true
S.Transparency = 0
S.Position = Vector3.new(-7000, -7000, -7000)
S.Size = Vector3.new(1000, 10, 1000)
S.Parent = workspace
end
		
local GameName = "Ultimate Badge HUB ✨ - By Nexer :)"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "Ultimate Badge HUB ✨", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

local Badge = Window:MakeTab({
	Name = "Non-Auto Section",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
		
local Badge2 = Window:MakeTab({
	Name = "Auto-Get Section",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Badge3 = Window:MakeTab({
	Name = "Teleport Section",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Badge3:AddButton({
	Name = "Teleport To Baseplate",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Baseplate"].CFrame * CFrame.new(0,10,0)
	end    
})
		
Badge:AddButton({
	Name = "Get Cake Mix For Firework",
	Callback = function()
			 game:GetService("ReplicatedStorage").Firework:InvokeServer()
			 game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("AddItem","Cake Mix")
			 game:GetService("ReplicatedStorage").AlchemistEvent:FireServer("EquipItem", "Cake Mix")
	 end
})		

Badge:AddButton({
	Name = "Recall Cheat Sheet UI | Execute when teleported to limbo",
	Callback = function()
			 loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/recallcheatsheet/main/main.lua'))()
	 end
})

Badge2:AddButton({
	Name = "Auto-Get Plank { use in lobby }",
	Callback = function()
			 if game.Players.LocalPlayer.leaderstats.Glove.Value == "Fort" then
			 OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3000, 97, 4)
			 wait(0.2)
			 game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			 wait(0.3)
			 game:GetService("ReplicatedStorage").Fortlol:FireServer()
			 wait(3.5)
			 game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			 wait(0.1)
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3000, 106, -6)
			 wait(0.5)
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
			 else
			 game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Equip Fort First." ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
			 end
	 end
})

Badge2:AddButton({
	Name = "Auto-Get Glovel { use in arena }",
	Callback = function()
			 if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
			 repeat task.wait()
			 --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19.483200073242188, -5.144442081451416, -207.45977783203125)
			 game:GetService("ReplicatedStorage").DigEvent:FireServer({["index"] = 2,["cf"] = CFrame.new(42.7222366, -6.17449856, 91.5175781, -0.414533257, 1.72594355e-05, -0.91003418, -5.57037238e-05, 1, 4.4339522e-05, 0.91003418, 6.90724992e-05, -0.414533257)})
			 until game.Workspace:FindFirstChild("TreasureChestFolder") ~= nil and game.Workspace.TreasureChestFolder:FindFirstChild("TreasureChest") ~= nil
			 wait(1)
			 game.Workspace.TreasureChestFolder.TreasureChest.OpenRemote:FireServer()
			 wait(0.9)
			 game.ReplicatedStorage.HumanoidDied:FireServer(game.Players.LocalPlayer.Character,false)
			 wait(3.75)
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.BountyHunterRoom.BountyHunterBooth._configPart.CFrame * CFrame.new(-5,0,0)
			 else
			 OrionLib:MakeNotification({Name = "Error",Content = "Enter Arena First.",Image = "rbxassetid://7733658504",Time = 5})
			 end   
	 end
})		

Badge2:AddButton({
	Name = "Auto-Get [REDACTED]",
	Callback = function()
			 if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
			 Door = 0
			 for i = 1, 10 do
			 Door = Door + 1
			 if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
			 Door = nil
			 else
			 firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door].TouchInterest.Parent, 0)
			 firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door].TouchInterest.Parent, 1)
			 wait(3.75)
			 end
			 end
			 else
			 OrionLib:MakeNotification({Name = "Error",Content = "You need 5000 slaps.",Image = "rbxassetid://7733658504",Time = 5})
			 end
	 end
})

Badge2:AddButton({
	Name = "Auto-Get Court Evidence",
	Callback = function()
			 fireclickdetector(game.Workspace.Lobby.Scene.knofe.ClickDetector)
	 end
})

Badge2:AddButton({
	Name = "Auto-Get Lonely Orange",
	Callback = function()
			 fireclickdetector(game.Workspace.Arena.island5.Orange.ClickDetector)
	 end
})

Badge2:AddButton({
	Name = "Auto-Get Rubber Ducky",
	Callback = function()
			 fireclickdetector(game.Workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
	 end
})

Badge2:AddButton({
	Name = "Auto-Get IceSkate",
	Callback = function()
			 if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2906002612987222) then
			 game:GetService("ReplicatedStorage").IceSkate:FireServer("Freeze")
			 else
			 game:GetService("ReplicatedStorage").IceSkate:FireServer("Freeze")
			 end
	 end
})

Badge2:AddButton({
	Name = "Auto-Get Lamp",
	Callback = function()
			 if game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" then
			 repeat task.wait()
			 game:GetService("ReplicatedStorage").nightmare:FireServer("LightBroken")
			 until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 490455814138437)
			 else
			 OrionLib:MakeNotification({Name = "Error",Content = "Equip ZZZZZZZ First",Image = "rbxassetid://7733658504",Time = 5})
			 end
	 end
})		

Badge2:AddButton({
	Name = "Auto-Get Bob { God Hand Required, Credits To OMO/DonjoSx }",
	Callback = function()
			 loadstring(game:HttpGet"https://pastefy.app/7qbY4h0Z/raw")()
	 end
})

Badge2:AddButton({
	Name = "Auto-Get Retro { use in retro }",
	Callback = function()
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
	 end
})		

Badge2:AddButton({
	Name = "Auto-Get Warp",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Swapper" then
if _G.ClosestMagnitude == nil then
_G.ClosestMagnitude = 999999
end
repeat
for _, v in pairs(game.Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("entered") then
local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
if Magnitude <= _G.ClosestMagnitude then
if v.Character:FindFirstChild("entered") == nil or v.Character.Humanoid.Health == 0 then
_G.ClosestMagnitude = 999999
RandomPlayer = nil
else
_G.ClosestMagnitude = Magnitude
RandomPlayer = v
end
end
end
end
if RandomPlayer and _G.ClosestMagnitude ~= 999999 then
if RandomPlayer ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("HumanoidRootPart") and RandomPlayer.Character.Ragdolled.Value == false then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RandomPlayer.Character:FindFirstChild("Head").CFrame
wait(0.17)
game.ReplicatedStorage.HitSwapper:FireServer(RandomPlayer.Character:WaitForChild("Head"))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Baseplate"].CFrame * CFrame.new(0,10,0)
end
end
end
task.wait(0.15)
until RandomPlayer.Character.HumanoidRootPart.Position.Y < -10
wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RandomPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,10,0)
wait(0.15)
game:GetService("ReplicatedStorage").SLOC:FireServer()
wait(0.2)
if _G.ClosestMagnitude and RandomPlayer then
_G.ClosestMagnitude = nil
RandomPlayer = nil
end
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Swapper First",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Badge2:AddButton({
	Name = "Auto-Get Bomb",
	Callback = function()
if game.Players.LocalPlayer.leaderstats.Glove.Value == "Warp" then
OldTouch = workspace.DEATHBARRIER.CanTouch
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("Ragdolled").Value == false
Target = RandomPlayer
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame
task.wait(0.2)
game.ReplicatedStorage.WarpHt:FireServer(Target.Character:WaitForChild("HumanoidRootPart"))
task.wait(0.15)
if workspace.DEATHBARRIER.CanTouch == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").DEATHBARRIER.CFrame
else
workspace.DEATHBARRIER.CanTouch = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").DEATHBARRIER.CFrame
end
wait(0.1)
game:GetService("ReplicatedStorage").WLOC:FireServer()
wait(0.2)
workspace.DEATHBARRIER.CanTouch = OldTouch
else
OrionLib:MakeNotification({Name = "Error",Content = "Equip Warp First",Image = "rbxassetid://7733658504",Time = 5})
end
  	end    
})

Badge2:AddButton({
	Name = "Auto-Get Brazil Badge",
	Callback = function()
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
	 end
})		
		
  end
end
