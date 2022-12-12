local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TITLE", "DarkTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Farm")

Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)
