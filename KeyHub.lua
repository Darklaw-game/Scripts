local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/master/source"))()
 
-- Variables
local key = "password"
local savedKey = nil
 
-- Create the Orion UI
local Window = OrionLib:MakeWindow({
    Name = "Key System",
    HideUI = false,  -- Show the UI immediately
    IntroEnabled = false
})
 
-- Section for Key Input
local keySection = Window:MakeTab({
    Name = "Key Input",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
 
keySection:AddTextbox({
    Name = "Enter Key",
    Default = savedKey or "",
    TextDisappear = false,
    Callback = function(value)
        savedKey = value
        if savedKey == key then
            OrionLib:MakeNotification({
                Name = "Key Validated",
                Content = "Key is correct!",
                Image = "rbxassetid://4483345998",
                Time = 3
            })
            -- Execute the code when key is correct
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Darklaw-game/Scripts/refs/heads/main/TesthubMain.lua",true))()
        else
            OrionLib:MakeNotification({
                Name = "Invalid Key",
                Content = "Please check your key.",
                Image = "rbxassetid://4483345998",
                Time = 3
            })
        end
    end
})
 
-- Section for the "Get Key" Button
local getKeyButton = keySection:AddButton({
    Name = "Get Key",
    Callback = function()
        -- Copy link to clipboard
        setclipboard("https://rekonise.com/key-ak032")
        OrionLib:MakeNotification({
            Name = "Key Copied",
            Content = "The key link has been copied to your clipboard!",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
    end
})
 
-- Make the GUI visible
OrionLib:Init()
