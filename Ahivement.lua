
local function createButton(text, callback)
  local button = script.Parent:Add("TextButton")
  button.Text = text
  button.Size = UDim2.new(1, 0, 0.5, 0)
  button.AnchorPoint = Vector2.new(0.5, 1)
  button.Position = UDim2.new(0.5, 0, 1, -button.PreferredSize.Y)
  button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  button.BorderColor3 = Color3.fromRGB(0, 0, 0)
  button.MouseButton1Click:Connect(callback)
  return button
end

-- "Closet Knob1" button with Achievement function
local closetKnob1Button = createButton("Closet Knob1", function()
  local Achivement = loadstring(game:HttpGet("https://raw.githubusercontent.com/IdkMyNameLoll/PublicScripts/refs/heads/main/achivementnorequire"))()

  Achivement({
      Title = "You Monster",
      Desc = "Wrong game <oops> ",
      Reason = "Be lucky with a 1/1 Million to make Curious light break the game and kill guiding light.",
      Image = "https://create.roblox.com/store/asset/76159606462807/slap-battles?keyword=slap+battles&pageNumber=1&pagePosition=22", --put image address here or no image
  })
end)

-- "hi" button with kick functionality
local hiButton = createButton("hi", function()
  Game.Players.LocalPlayer:Kick("You were greeted!")
end)

This version:
 * Includes the Achivement function as requested.
 * Includes the Game.Players.LocalPlayer:Kick() functionality for the "hi" button.
 * Retains the createButton function for better code organization.
Remember that using game:HttpGet() to fetch and execute external code can pose security risks. Ensure the code from the provided URL is trustworthy and does not contain malicious content.
I apologize again for the previous incorrect response. I am still under development and learning to be more accurate and helpful.
