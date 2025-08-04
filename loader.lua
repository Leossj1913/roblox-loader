local password = "talleres1"
local g = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))

local f = Instance.new("Frame", g)
f.Size = UDim2.new(0, 240, 0, 180)
f.Position = UDim2.new(0.5, -120, 0.5, -90)
f.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("UICorner", f).CornerRadius = UDim.new(0, 10)

-- Título
local title = Instance.new("TextLabel", f)
title.Text = "🔑 Enter Password"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0.25, 0)
title.Position = UDim2.new(0, 0, 0, 5)

-- Input con ejemplo
local input = Instance.new("TextBox", f)
input.PlaceholderText = "xxxxxxxxx"
input.Size = UDim2.new(0.8, 0, 0.2, 0)
input.Position = UDim2.new(0.1, 0, 0.35, 0)
input.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.TextScaled = true
input.Font = Enum.Font.Gotham
Instance.new("UICorner", input).CornerRadius = UDim.new(0, 6)

-- Botón Continue (izquierda)
local continueBtn = Instance.new("TextButton", f)
continueBtn.Text = "Continue"
continueBtn.Size = UDim2.new(0.4, -5, 0.2, 0)
continueBtn.Position = UDim2.new(0.05, 0, 0.65, 0)
continueBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
continueBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
continueBtn.TextScaled = true
continueBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", continueBtn).CornerRadius = UDim.new(0, 6)

-- Botón Get Password (derecha)
local receiveBtn = Instance.new("TextButton", f)
receiveBtn.Text = "Receive"
receiveBtn.Size = UDim2.new(0.4, -5, 0.2, 0)
receiveBtn.Position = UDim2.new(0.55, 0, 0.65, 0)
receiveBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
receiveBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
receiveBtn.TextScaled = true
receiveBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", receiveBtn).CornerRadius = UDim.new(0, 6)

-- Función botón Continue
continueBtn.MouseButton1Click:Connect(function()
	if input.Text == password then
		g:Destroy()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
	else
		continueBtn.Text = "Wrong ❌"
		wait(1.5)
		continueBtn.Text = "Continue"
	end
end)

-- Función botón Receive
receiveBtn.MouseButton1Click:Connect(function()
	setclipboard("https://paste-drop.com/paste/F1VO5jd9k4")
	receiveBtn.Text = "Copied ✅"
	wait(1.5)
	receiveBtn.Text = "Receive"
end)
