local twissted = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() 
 end
 
 local YouReadThis = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModded"))()
 end
 
 local frame = script.Parent
 
 
 local screenGui = Instance.new("ScreenGui")
 screenGui.Name = "CustomScreenGui"
 screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
 
 
 local frame = Instance.new("Frame")
 frame.Size = UDim2.new(0.3, 0, 0.3, 0)
 frame.Position = UDim2.new(0.35, 0, 0.35, 0)
 frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
 frame.Parent = screenGui
 
 local dragging = false
 local dragInput, mousePos, framePos
 
 frame.InputBegan:Connect(function(input)
     if input.UserInputType == Enum.UserInputType.MouseButton1 then
         dragging = true
         mousePos = input.Position
         framePos = frame.Position
 
         input.Changed:Connect(function()
             if input.UserInputState == Enum.UserInputState.End then
                 dragging = false
             end
         end)
     end
 end)
 
 frame.InputChanged:Connect(function(input)
     if input.UserInputType == Enum.UserInputType.MouseMovement then
         dragInput = input
     end
 end)
 
 game:GetService("UserInputService").InputChanged:Connect(function(input)
     if input == dragInput and dragging then
         local delta = input.Position - mousePos
         frame.Position = UDim2.new(
             framePos.X.Scale,
             framePos.X.Offset + delta.X,
             framePos.Y.Scale,
             framePos.Y.Offset + delta.Y
         )
     end
 end)
 
 local title = Instance.new("TextLabel")
 title.Size = UDim2.new(1, 0, 0.2, 0) 
 title.Position = UDim2.new(0, 0, 0, 0)
 title.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
 title.TextColor3 = Color3.fromRGB(255, 255, 255) 
 title.Text = "totally very original script"
 title.Font = Enum.Font.SourceSansBold
 title.TextScaled = true
 title.Parent = frame
 
 
 local button = Instance.new("TextButton")
 button.Size = UDim2.new(0.4, 0, 0.2, 0) 
 button.Position = UDim2.new(0.3, 0, 0.7, 0) 
 button.BackgroundColor3 = Color3.fromRGB(0, 0, 255) 
 button.TextColor3 = Color3.fromRGB(255, 255, 255) 
 button.Text = "Infinite Yield"
 button.Font = Enum.Font.SourceSansBold
 button.TextScaled = true
 button.Parent = frame
 
 
 button.MouseButton1Click:Connect(function()
     twissted()
 end)
 
 local button2 = Instance.new("TextButton")
 button2.Size = UDim2.new(0.4, 0, 0.2, 0) 
 button2.Position = UDim2.new(0.3, 0, 0.4, 0) 
 button2.BackgroundColor3 = Color3.fromRGB(0, 0, 255) 
 button2.TextColor3 = Color3.fromRGB(255, 255, 255) 
 button2.Text = "Dahood script yes yes"
 button2.Font = Enum.Font.SourceSansBold
 button2.TextScaled = true
 button2.Parent = frame
 
 button2.MouseButton1Click:Connect(function()
     YouReadThis()
 end)