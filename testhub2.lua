local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
-- This boots up the Script


local Window = Rayfield:CreateWindow({
    Name = "Scripttest2",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by Darklaw",
    Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Key System",
       Subtitle = "Key System",
       Note = "Hello the key is located here", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"https://loot-link.com/s?7w6LRivZ,key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })




 local Tab = Scripttest2:CreateTab("Universal", 4483362458) -- Title, Image


 local Divider = Universal:CreateDivider(Rochips scripts)

 local Button = Universal:CreateButton({
    Name = "rochips Admin commands",
    Callback = function(loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/new/refs/heads/main/cmd.lua"))())
    -- The function that takes place when the button is pressed
    end,
 })


 local Button = Universal:CreateButton({
    Name = "rochips Pannel",
    Callback = function(loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/load/refs/heads/main/rcloader"))())
    -- The function that takes place when the button is pressed
    end,
 })

 local Button = Universal:CreateButton({
    Name = "Note",
    Callback = function(Rayfield:Notify({
        Title = "note",
        Content = "This button was coded by myself so please sub to darklawdotgame on YT",
        Duration = 6.5,
        Image = 4483362458,
     }))
 })

 local tab = Scripttest2:CreateTab("Otherstuff")

 local Slider = Otherstuff:CreateSlider({
    Name = "Speed",
    Range = {0, 1000},
    Increment = 10,
    Suffix = "Ws",
    CurrentValue = 10,
    Flag = "Walkspeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    -- The function that takes place when the slider changes
    -- The variable (Value) is a number which correlates to the value the slider is currently at
    end,
 })