local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Testing", "Midnight")


--main
local Main = Window:NewTab("Local")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Kick", "Kicky", function()
    game.player:Localplayer.kick("Lol")
end)
