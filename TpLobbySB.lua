local player = game:GetService("Players").LocalPlayer  
local character = player.Character or player.CharacterAdded:Wait()  
local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")  

if humanoidRootPart then  
    humanoidRootPart.CFrame = CFrame.new(-897.2923583984375, 327.8538818359375, -2.0450494289398193)  
end
