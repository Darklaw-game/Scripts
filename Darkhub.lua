local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 DarkhubV1.0.0 🔥",
   LoadingTitle = "DarkHubV1",
   LoadingSubtitle = "by Darklaws Scripts",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Example Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "TK4hZuMddh", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | DarkHub",
      Subtitle = "Key System",
      Note = "Key Is darkhub",
      FileName = "YoutubeHubKey1", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"darkhub"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "You executed the script",
   Content = "Very cool gui",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
            print("The user tapped Okay!")
         end
      },
   },
})

local Button = MainTab:CreateButton({
   Name = "Teleport Tool",
   Callback = function()
      -- The function that takes place when the button is pressed
      local mouse = game.Players.LocalPlayer:GetMouse()
      local tool = Instance.new("Tool")
      tool.RequiresHandle = false
      tool.Name = "Tp tool"
      tool.Activated:connect(function()
         local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
         pos = CFrame.new(pos.X, pos.Y, pos.Z)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
      end)
      tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = MainTab:CreateButton({
   Name = "Flight gui V3",
   Callback = function()
      -- Activates the flight guiV3
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Darklaw-game/Scripts/refs/heads/main/FLyguiV3.lua", true))()
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Input = MainTab:CreateInput({
   Name = "Walkspeed",
   PlaceholderText = "1-500",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local MainSection = MainTab:CreateSection("Rochips")

local Button = MainTab:CreateButton({
   Name = "Rochips Admin Commands",
   Callback = function()
      -- The function that takes place when the button is pressed
      loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/new/refs/heads/main/cmd.lua"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Rochips Universal (Old, No more updates)",
   Callback = function()
      -- The function that takes place when the button is pressed
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Darklaw-game/Scripts/refs/heads/main/Ropannel.lua", true))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Rochips Pannel (New and has updates)",
   Callback = function()
      -- The function that takes place when the button is pressed
      loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/load/refs/heads/main/rcloader"))()
   end,
})


local MainSection = MainTab:CreateSection("Misc")

local Button = MainTab:CreateButton({
   Name = "Inf jump",
   Callback = function()
      -- The function that takes place when the button is pressed
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Darklaw-game/Scripts/refs/heads/main/infjump.lua", true))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Player Menu",
   Callback = function()
      -- The function that takes place when the button is pressed
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Darklaw-game/Scripts/refs/heads/main/tpplayer.lua", true))()
   end,
})

   local Tab = Window:CreateTab("MM2", 4483362458) -- Title, Image
   local Section = Tab:CreateSection("MM2")
   local Button = Tab:CreateButton({
   Name = "MM2",
   Callback = function()
   -- The function that takes place when the button is pressed
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))()
   end,
})

local Tab = Window:CreateTab("Doors", 4483362458) -- Title, Image
Tab:CreateSection("Doors")

local Button = Tab:CreateButton({
   Name = "Doors item giver",
   Callback = function()
   -- The function that takes place when the button is pressed
         loadstring(game:HttpGet("https://raw.githubusercontent.com/Darli17/Entities/refs/heads/main/Tools"))()"))()

   end,
})

local Button = Tab:CreateButton({
   Name = "Doors Leaf Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
         loadstring(game:HttpGet("https://pastebin.com/raw/wbJTDuKw"))() 
   end,
})

local Button = Tab:CreateButton({
   Name = "Devil Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
         loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/doors/main/devilshubgui"))(); 
   end,
   })

local Button = Tab:CreateButton({
   Name = "Lore",
   Callback = function()
   -- The function that takes place when the button is pressed
         loadstring(game:HttpGet("https://raw.githubusercontent.com/Darklaw-game/Scripts/refs/heads/main/Chillseek.lua",true))()
   end,
})
