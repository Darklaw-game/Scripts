-- Create the teleport tool
local teleportTool = Instance.new("Tool")
teleportTool.Name = "TeleportTool"
teleportTool.Parent = game.Players.LocalPlayer.Backpack

-- Create the draggable button
local button = Instance.new("TextButton")
button.Text = "Teleport!"
button.Font = Enum.Font.SourceSans
button.FontSize = Enum.FontSize.Size24
button.TextColor3 = Color3.new(1, 1, 1)
button.BackgroundColor3 = Color3.new(0, 0, 0)
button.Size = UDim2.new(0, 100, 0, 30)
button.AnchorPoint = Vector2.new(0.5, 0.5)
button.Position = UDim2.new(0, 0, 0, 0)

-- Add animations to the button
local buttonAnimations = Instance.new("UIPage")
buttonAnimations.Parent = button
local animations = {
    {property = "TextSize", from = 24, to = 28, duration = 0.2},
    {property = "BackgroundColor3", from = Color3.new(0, 0, 0), to = Color3.new(0.5, 0.5, 0.5), duration = 0.2}
}
local function animateButton(property, from, to, duration)
    local animation = Instance.new("NumberAnimation")
    animation.Parent = buttonAnimations
    animation.PropertyName = property
    animation.From = from
    animation.To = to
    animation.Duration = duration
    animation:Play()
end
for _, animation in pairs(animations) do
    animateButton(animation.property, animation.from, animation.to, animation.duration)
end

-- Add the button to the screen
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer.PlayerGui
button.Parent = screenGui

-- Make the button draggable
local userInputService = game:GetService("UserInputService")
local dragStartPos = nil
local dragMouseButton = nil

button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragStartPos = input.Position
        dragMouseButton = input.UserInputButton
    end
end)

button.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragStartPos = nil
        dragMouseButton = nil
    end
end)

userInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragStartPos then
        local pos = input.Position
        local dx = pos.X - dragStartPos.X
        local dy = pos.Y - dragStartPos.Y
        button.Position = UDim2.new(0, button.Position.X.Offset + dx, 0, button.Position.Y.Offset + dy)
    end
end)

-- Teleport the player when the button is clicked
button.MouseButton1Click:Connect(function()
    -- Get the mouse position
    local mousePos = userInputService:GetMouseLocation()

    -- Teleport the player
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
    wait(0.1)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character:MoveTo(mousePos)
end)
