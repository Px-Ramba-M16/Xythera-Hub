local CoreGui = game:GetService("CoreGui")
local vim = game:GetService("VirtualInputManager")

local toggleGui = Instance.new("ScreenGui")
toggleGui.Name = "XytheraToggleUi"
toggleGui.ResetOnSpawn = false
toggleGui.IgnoreGuiInset = true
toggleGui.Parent = CoreGui

local toggleButton = Instance.new("ImageButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 50, 0, 50)
toggleButton.Position = UDim2.new(0, 343, 0, 48)
toggleButton.BackgroundTransparency = 0
toggleButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
toggleButton.Image = "rbxassetid://134955008039738"
toggleButton.Draggable = true
toggleButton.Parent = toggleGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = toggleButton

toggleButton.MouseButton1Click:Connect(function()
  vim:SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
end)

