game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Checking User HWID..." ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "ok"})
local HWIDList = loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/HWID_WhiteList/main/main.lua'))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

for i,v in pairs(HWIDList) do
  if v == HWID then
    game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Whitelisted!",Text = "Successfully Whitelisted! Hold on, script is loading." ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150",Button1 = "OK"})
  
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50

  end
end
