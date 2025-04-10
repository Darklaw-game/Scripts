-- Create a button
local button = Instance.new("TextButton")
button.Text = "Toggle Walk on Walls"
button.Parent = game.Players.LocalPlayer.PlayerGui

-- Create a script to allow walking on walls
local walkOnWallsScript = Instance.new("LocalScript")
walkOnWallsScript.Parent = game.Players.LocalPlayer.Character
walkOnWallsScript.Disabled = true

-- Function to toggle the script
local function toggleWalkOnWalls()
    walkOnWallsScript.Disabled = not walkOnWallsScript.Disabled
end

-- Connect the button's MouseButton1Click event to toggleWalkOnWalls
button.MouseButton1Click:Connect(toggleWalkOnWalls)

-- Script to allow walking on walls
walkOnWallsScript.Source = [[
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
]]
