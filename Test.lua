local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Testing", "Midnight")


--main
local Tab = Window:NewTab("Kick")
local Section = Tab:NewSection("main")


mainSection:NewButton("kick", "ButtonInfo", function()
    game.Players.Localplayer:kick("testy")
end)

mainSection:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
