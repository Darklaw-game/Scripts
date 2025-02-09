local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- Create a ScreenGui for the loading sequence
local LoadingGui = Instance.new("ScreenGui")
LoadingGui.Name = "LoadingGui"
LoadingGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame for the loading message
local LoadingFrame = Instance.new("Frame")
LoadingFrame.Size = UDim2.new(0, 300, 0, 100)
LoadingFrame.Position = UDim2.new(0.5, -150, 0.5, -50)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Parent = LoadingGui

local LoadingUICorner = Instance.new("UICorner")
LoadingUICorner.CornerRadius = UDim.new(0, 10)
LoadingUICorner.Parent = LoadingFrame

local LoadingText = Instance.new("TextLabel")
LoadingText.Size = UDim2.new(1, 0, 1, 0)
LoadingText.BackgroundTransparency = 1
LoadingText.Font = Enum.Font.GothamBold
LoadingText.TextColor3 = Color3.new(1, 1, 1)
LoadingText.TextSize = 18
LoadingText.Text = "This script was made by DarkHub;)"
LoadingText.Parent = LoadingFrame

-- Function to show loading sequence
local function showLoadingSequence(isGoodbye)
    local text = isGoodbye and "Goodbye!" or "This script was made by darkhub ;)"
    LoadingText.Text = text
    LoadingFrame.Position = UDim2.new(0.5, -150, 1.5, 0)
    local goal = {}
    goal.Position = UDim2.new(0.5, -150, 0.5, -50)
    local tween = TweenService:Create(LoadingFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal)
    tween:Play()
    wait(2)
    goal.Position = UDim2.new(0.5, -150, -0.5, 0)
    tween = TweenService:Create(LoadingFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), goal)
    tween:Play()
    wait(0.5)
    LoadingGui:Destroy()
end

-- Show loading sequence
showLoadingSequence(false)

function GetShortenedPlrFromName(name)
    name = string.lower(tostring(name))
 
    if not game:GetService("Players"):FindFirstChild("me") and name == "me" or game:GetService("Players"):FindFirstChild("me") and game:GetService("Players"):FindFirstChild("me").ClassName ~= "Player" and name == "me" then
        return {LocalPlayer}
    end
    if not game:GetService("Players"):FindFirstChild("all") and name == "all" or game:GetService("Players"):FindFirstChild("all") and game:GetService("Players"):FindFirstChild("all").ClassName ~= "Player" and name == "all" then
        return game:GetService("Players"):GetPlayers()
    end
    if not game:GetService("Players"):FindFirstChild("others") and name == "others" or game:GetService("Players"):FindFirstChild("others") and game:GetService("Players"):FindFirstChild("others").ClassName ~= "Player" and name == "others" then
        name = game:GetService("Players"):GetPlayers()
        for i, v in pairs(name) do
            if v == LocalPlayer then
                table.remove(name, i)
            end
        end
        return name
    end
 
    for i, v in pairs(game.Players:GetPlayers()) do
        if string.lower(string.sub(v.DisplayName, 1, #name)) == name or string.lower(string.sub(v.Name, 1, #name)) == name then
            return {v}
        end
    end
 
    return nil
end

-- Create a ScreenGui to hold our UI elements
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame for our teleport UI
local TeleportFrame = Instance.new("Frame")
TeleportFrame.Size = UDim2.new(0, 220, 0, 230)  -- Increased height to accommodate new button
TeleportFrame.Position = UDim2.new(1, 0, 0.5, -115)  -- Adjusted position
TeleportFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TeleportFrame.BorderSizePixel = 0
TeleportFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = TeleportFrame

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, -30, 0, 40)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 18
TextLabel.Text = "Kr0n1k's Teleporter"  -- Updated version number
TextLabel.Parent = TeleportFrame

-- Create a close button (X)
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -30, 0, 0)
CloseButton.BackgroundTransparency = 1
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextSize = 18
CloseButton.Text = "X"
CloseButton.Parent = TeleportFrame

local Input = Instance.new("TextBox")
Input.Size = UDim2.new(0.9, 0, 0, 35)
Input.Position = UDim2.new(0.05, 0, 0.2, 0)  -- Adjusted position
Input.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Input.BorderSizePixel = 0
Input.Font = Enum.Font.Gotham
Input.TextColor3 = Color3.new(1, 1, 1)
Input.TextSize = 14
Input.PlaceholderText = "Enter player name"
Input.Text = ""
Input.Parent = TeleportFrame
Input.ClearTextOnFocus = false

local InputUICorner = Instance.new("UICorner")
InputUICorner.CornerRadius = UDim.new(0, 5)
InputUICorner.Parent = Input

-- Create a button for the player selection tool
local SelectPlayerButton = Instance.new("TextButton")
SelectPlayerButton.Size = UDim2.new(0.9, 0, 0, 35)
SelectPlayerButton.Position = UDim2.new(0.05, 0, 0.37, 0)  -- Adjusted position
SelectPlayerButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SelectPlayerButton.BorderSizePixel = 0
SelectPlayerButton.Font = Enum.Font.Gotham
SelectPlayerButton.TextColor3 = Color3.new(1, 1, 1)
SelectPlayerButton.TextSize = 14
SelectPlayerButton.Text = "Select Player"
SelectPlayerButton.Parent = TeleportFrame

local SelectPlayerUICorner = Instance.new("UICorner")
SelectPlayerUICorner.CornerRadius = UDim.new(0, 5)
SelectPlayerUICorner.Parent = SelectPlayerButton

-- Create a new button for teleporting
local TeleportButton = Instance.new("TextButton")
TeleportButton.Size = UDim2.new(0.9, 0, 0, 35)
TeleportButton.Position = UDim2.new(0.05, 0, 0.54, 0)  -- Adjusted position
TeleportButton.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
TeleportButton.BorderSizePixel = 0
TeleportButton.Font = Enum.Font.GothamBold
TeleportButton.TextColor3 = Color3.new(1, 1, 1)
TeleportButton.TextSize = 14
TeleportButton.Text = "Teleport"
TeleportButton.Parent = TeleportFrame

local TeleportUICorner = Instance.new("UICorner")
TeleportUICorner.CornerRadius = UDim.new(0, 5)
TeleportUICorner.Parent = TeleportButton

-- Create a new button for click teleport
local ClickTeleportButton = Instance.new("TextButton")
ClickTeleportButton.Size = UDim2.new(0.9, 0, 0, 35)
ClickTeleportButton.Position = UDim2.new(0.05, 0, 0.71, 0)  -- New position
ClickTeleportButton.BackgroundColor3 = Color3.fromRGB(0, 180, 60)  -- Different color
ClickTeleportButton.BorderSizePixel = 0
ClickTeleportButton.Font = Enum.Font.GothamBold
ClickTeleportButton.TextColor3 = Color3.new(1, 1, 1)
ClickTeleportButton.TextSize = 14
ClickTeleportButton.Text = "Click Teleport"
ClickTeleportButton.Parent = TeleportFrame

local ClickTeleportUICorner = Instance.new("UICorner")
ClickTeleportUICorner.CornerRadius = UDim.new(0, 5)
ClickTeleportUICorner.Parent = ClickTeleportButton

-- Add this new function to update the Input text
local function updateInputText(player)
    if player then
        Input.Text = player.Name
    end
end

local function createPlayerSelectionTool()
    local tool = Instance.new("Tool")
    tool.Name = "Player Selector"
    tool.RequiresHandle = false
    
    tool.Activated:Connect(function()
        local mouse = LocalPlayer:GetMouse()
        local target = mouse.Target
        
        -- Check if the target is part of a character
        while target and target ~= workspace do
            local humanoid = target:FindFirstChildOfClass("Humanoid")
            if humanoid then
                local player = Players:GetPlayerFromCharacter(humanoid.Parent)
                if player then
                    updateInputText(player)
                    return
                end
            end
            target = target.Parent
        end
        
        print("No player found")
    end)
    
    return tool
end

-- Function to create click teleport tool
local function createClickTeleportTool()
    local tool = Instance.new("Tool")
    tool.Name = "Click Teleporter"
    tool.RequiresHandle = false
    
    tool.Activated:Connect(function()
        local mouse = LocalPlayer:GetMouse()
        local targetPos = mouse.Hit.Position
        
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(targetPos + Vector3.new(0, 3, 0)))
            print("Teleported to clicked location")
        end
    end)
    
    return tool
end

SelectPlayerButton.MouseButton1Click:Connect(function()
    local tool = createPlayerSelectionTool()
    if LocalPlayer.Character then
        tool.Parent = LocalPlayer.Backpack
        LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end)

ClickTeleportButton.MouseButton1Click:Connect(function()
    local tool = createClickTeleportTool()
    if LocalPlayer.Character then
        tool.Parent = LocalPlayer.Backpack
        LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end)

-- Add this new function to handle player selection
local function selectPlayer(player)
    updateInputText(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then 
        print("Teleported to", player.DisplayName)
        LocalPlayer.Character:SetPrimaryPartCFrame(player.Character.HumanoidRootPart.CFrame)
    end
end

Input.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local players = GetShortenedPlrFromName(Input.Text)
        if players and #players > 0 then
            selectPlayer(players[1])
        else
            print("Player not found")
        end
    end
end)

TeleportButton.MouseButton1Click:Connect(function()
    local players = GetShortenedPlrFromName(Input.Text)
    if players and #players > 0 then
        selectPlayer(players[1])
    else
        print("Player not found")
    end
end)

-- Create a toggle button
local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 30, 0, 230)  -- Increased height
ToggleButton.Position = UDim2.new(1, -30, 0.5, -115)  -- Adjusted position
ToggleButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ToggleButton.BorderSizePixel = 0
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.TextSize = 18
ToggleButton.Text = ">"
ToggleButton.Parent = ScreenGui

local ToggleUICorner = Instance.new("UICorner")
ToggleUICorner.CornerRadius = UDim.new(0, 5)
ToggleUICorner.Parent = ToggleButton

local isVisible = false

-- Function to show UI
local function showUI()
    local goal = {}
    goal.Position = UDim2.new(1, -240, 0.5, -115)  -- Adjusted position
    local tween = TweenService:Create(TeleportFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal)
    tween:Play()
    ToggleButton.Text = "<"
    isVisible = true
end

-- Function to hide UI
local function hideUI()
    local goal = {}
    goal.Position = UDim2.new(1, 0, 0.5, -115)  -- Adjusted position
    local tween = TweenService:Create(TeleportFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal)
    tween:Play()
    ToggleButton.Text = ">"
    isVisible = false
end

-- Function to show goodbye sequence
local function showGoodbyeSequence()
    -- Create a new ScreenGui for the goodbye sequence
    local GoodbyeGui = Instance.new("ScreenGui")
    GoodbyeGui.Name = "GoodbyeGui"
    GoodbyeGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Create a Frame for the goodbye message
    local GoodbyeFrame = Instance.new("Frame")
    GoodbyeFrame.Size = UDim2.new(0, 300, 0, 100)
    GoodbyeFrame.Position = UDim2.new(0.5, -150, 1.5, 0)
    GoodbyeFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    GoodbyeFrame.BorderSizePixel = 0
    GoodbyeFrame.Parent = GoodbyeGui

    local GoodbyeUICorner = Instance.new("UICorner")
    GoodbyeUICorner.CornerRadius = UDim.new(0, 10)
    GoodbyeUICorner.Parent = GoodbyeFrame

    local GoodbyeText = Instance.new("TextLabel")
    GoodbyeText.Size = UDim2.new(1, 0, 1, 0)
    GoodbyeText.BackgroundTransparency = 1
    GoodbyeText.Font = Enum.Font.GothamBold
    GoodbyeText.TextColor3 = Color3.new(1, 1, 1)
    GoodbyeText.TextSize = 18
    GoodbyeText.Text = "Goodbye!"
    GoodbyeText.Parent = GoodbyeFrame

    -- Animate the goodbye message
    local goal = {}
    goal.Position = UDim2.new(0.5, -150, 0.5, -50)
    local tween = TweenService:Create(GoodbyeFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal)
    tween:Play()
    wait(2)
    goal.Position = UDim2.new(0.5, -150, -0.5, 0)
    tween = TweenService:Create(GoodbyeFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), goal)
    tween:Play()
    wait(0.5)
    GoodbyeGui:Destroy()
end

-- Function to close the UI completely
local function closeUI()
    ScreenGui:Destroy()
    showGoodbyeSequence()
end

-- Variable to track if mouse is over UI
local mouseOverUI = false

-- Connect MouseEnter event for toggle button
ToggleButton.MouseButton1Click:Connect(function()
    if isVisible then
        hideUI()
    else
        showUI()
    end
end)

-- Connect MouseEnter event for TeleportFrame
TeleportFrame.MouseEnter:Connect(function()
    mouseOverUI = true
end)

-- Connect MouseLeave event for TeleportFrame
TeleportFrame.MouseLeave:Connect(function()
    mouseOverUI = false
    wait(0.5) -- Small delay before hiding UI
    if not mouseOverUI and not ToggleButton.MouseEnter then
        hideUI()
    end
end)

-- Connect close button
CloseButton.MouseButton1Click:Connect(closeUI)

-- Initially hide the UI
hideUI()
