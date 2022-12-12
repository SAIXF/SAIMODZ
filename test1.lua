local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("UI FREE", "DarkTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Farm")

Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Clicked")
end)

local Tab = Window:NewTab("Main2")
local Section = Tab:NewSection("Farm2")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)


Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)
