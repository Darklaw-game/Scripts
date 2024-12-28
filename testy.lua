local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Testing", "Midnight")


--main
local Main = Window:NewTab("Local")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Kick", "Kicky", function()
    game.player.Localplayer:kick("Lol")
end)

MainSection:NewButton("Rochips", "Activates rochips", function()
    if "Rochips Loader" then
        local Rochips_panel,v,u,i=loadstring,"/snippets","gwwv","/raw/main.lua" ;
        Rochips_panel(game:HttpGet("https://glot.io"..v.."/" ..u.."877ga3"..i))();
        return "it will load in around 3 - 131 seconds"
    end
end)


