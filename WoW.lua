local toggleButton = script.Parent:WaitForChild("TextButton")
local frame = script.Parent

-- Variable to keep track of whether the WalkOnWalls script is active
local walkOnWallsActive = false
local walkOnWallsScript

-- Function to toggle WalkOnWalls
local function toggleWalkOnWalls()
    if walkOnWallsActive then
        -- If active, stop the script
        if walkOnWallsScript then
            walkOnWallsScript.Enabled = false
        end
        walkOnWallsActive = false
        toggleButton.Text = "Enable Walk On Walls"
    else
        -- If not active, start the script
        walkOnWallsScript = Instance.new("LocalScript")
        walkOnWallsScript.Source = "loadstring(game:HttpGet('https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/WalkOnWalls', true))()"
        walkOnWallsScript.Parent = game.Players.LocalPlayer:WaitForChild("PlayerScripts")
        
        walkOnWallsActive = true
        toggleButton.Text = "Disable Walk On Walls"
    end
end

toggleButton.MouseButton1Click:Connect(toggleWalkOnWalls)

-- Draggable functionality
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        update(input)
    end
end)
