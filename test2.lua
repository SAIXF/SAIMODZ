local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("PDM HUB | Version | FREE", "DarkTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("FastAttack")
Section:NewToggle("FastAttack", "Click to use FastAttack", function(state)
local Fast = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local CameraShaker = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
_G.Fastattack = state -- true\false
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.Fastattack then
Fast.activeController.timeToNextAttack = 0
Fast.activeController.hitboxMagnitude = 50
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(686, 352))
CameraShaker.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
end
end)
end)
end)
Section:NewLabel("BringMob")
Section:NewToggle("bringMob", "Click to use bringmob", function(state)
_G.bringmob = state
while _G.bringmob do wait()
    pcall(function()
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Bandit [Lv. 5]" then
    if y.Name == "Bandit [Lv. 5]" then
   v.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   y.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.HumanoidRootPart.CanCollide = false
   y.HumanoidRootPart.CanCollide = false
   v.Humanoid.WalkSpeed = 0
   y.Humanoid.WalkSpeed = 0
   v.Humanoid.JumpPower = 0
   y.Humanoid.JumpPower = 0
   if sethiddenproperty then
     sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end
end
end
end
end
end)
end
end)
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)

5012544693)
local colors = theme:addSection("Colors")
 
 
section1:addToggle("Fast Attack", _G.FastAttack, function(value)
_G.FastAttack = value
end)
 
 
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}
 
 
for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end
 
-- load
venyx:SelectPage(venyx.pages[1], true)
 
 
 
 
 
spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.FastAttack then
            local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
            local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
            Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
            Combat.activeController.timeToNextAttack = 0
            Combat.activeController.hitboxMagnitude = 120
            Combat.activeController.increment = 3
        end
    end)
end) 
end)
 
 
spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.FastAttack then
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end)
end) 
end)
