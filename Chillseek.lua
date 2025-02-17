require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Press R for Spawn (first Spawn can be long)",true)



local UserInputService = game:GetService("UserInputService")





local function myFunction()

    ---====== Load spawner ======---



local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()



---====== Create entity ======---



local entity = spawner.Create({

	Entity = {

		Name = "Guiding Light",

		Asset = "https://create.roblox.com/store/asset/12382716567/Doors-Seek-Killer?keyword=doors&pageNumber=3&pagePosition=0
		HeightOffset = 0

	},

	Lights = {

		Flicker = {

			Enabled = false,

			Duration = 7

		},

		Shatter = false,

		Repair = false

	},

	Earthquake = {

		Enabled = false

	},

	CameraShake = {

		Enabled = false,

		Range = 100,

		Values = {3, 50, 1, 1} -- Magnitude, Roughness, FadeIn, FadeOut

	},

	Movement = {

		Speed = 10000,

		Delay = 2,

		Reversed = false

	},

	Rebounding = {

		Enabled = false,

		Type = "Ambush", -- "Blitz"

		Min = 2,

		Max = 2,

		Delay = 2

	},

	Damage = {

		Enabled = true,

		Range = 40,

		Amount = 125

	},

	Crucifixion = {

		Enabled = true,

		Range = 40,

		Resist = true,

		Break = true

	},

	Death = {

		Type = "Curious", -- "Guiding"

		Hints = {"Hmm", "You died to {}[Guiding_Light}{}", "i wonder why, did you drive him insane?", "i guess im going to try to contain him", "ill meet you in garden"},

		Cause = "Curious Light"

	}

})



---====== Debug entity ======---



entity:SetCallback("OnSpawned", function()

    print("Entity has spawned")

end)



entity:SetCallback("OnStartMoving", function()

    print("Entity has started moving")

end)



entity:SetCallback("OnEnterRoom", function(room, firstTime)

    if firstTime == true then

        print("Entity has entered room: ".. room.Name.. " for the first time")

    else

        print("Entity has entered room: ".. room.Name.. " again")

    end

end)



entity:SetCallback("OnLookAt", function(lineOfSight)

	if lineOfSight == true then

		print("Player is looking at entity")

	else

		print("Player view is obstructed by something")

	end

end)



entity:SetCallback("OnRebounding", function(startOfRebound)

    if startOfRebound == true then

        print("Entity has started rebounding")

	else

        print("Entity has finished rebounding")

	end

end)



entity:SetCallback("OnDespawning", function()

    print("Entity is despawning")

end)



entity:SetCallback("OnDespawned", function()

    print("Entity has despawned")

end)



entity:SetCallback("OnDamagePlayer", function(newHealth)

	if newHealth == 0 then

		print("Entity has killed the player")

	else

		print("Entity has damaged the player")

	end

end)



--[[



DEVELOPER NOTE:

By overwriting 'CrucifixionOverwrite' the default crucifixion callback will be replaced with your custom callback.



entity:SetCallback("CrucifixionOverwrite", function()

    print("Custom crucifixion callback")

end)



]]--



---====== Run entity ======---



entity:Run()

Wait(105)

---====== Load achievement giver ======---

local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/a-60aa/refs/heads/main/--%20Services.txt"))()



---====== Display achievement ======---

achievementGiver({

    Title = "Curious Light",

    Desc = "Guiding light is insane, Lets end This!",

    Reason = "Die to Guiding Light" ,

    Image = "rbxassetid://120656641387880"

})



    local workspacePart = workspace:FindFirstChild("Part")

    if workspacePart and workspacePart:IsA("BasePart") then

        workspacePart.BrickColor = BrickColor.Random()

    end

end





UserInputService.InputBegan:Connect(function(input, gameProcessed)

    if not gameProcessed and input.KeyCode == Enum.KeyCode.R then

        myFunction()

    end

end)
