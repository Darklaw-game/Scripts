local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Testing", "Midnight")


--main
local Section = Tab:NewSection("Main")
mainSection:NewButton("kick", "ButtonInfo", function()
    game.Players.Localplayer:kick("testy")
end)
