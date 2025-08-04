local password = "talleres1"
local g = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))

local f = Instance.new("Frame", g)
f.Size = UDim2.new(0, 300, 0, 300)
f.Position = UDim2.new(0.5, -150, 0.5, -150)
f.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("UICorner", f).CornerRadius = UDim.new(0, 14)

-- Título
local title = Instance.new("TextLabel", f)
title.Text = "Enter Password"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, -40, 0.15, 0)
title.Position = UDim2.new(0, 20, 0, 20)

-- Input
local input = Instance.new("TextBox", f)
input.PlaceholderText = "Password..."
input.Size = UDim2.new(0.8, 0, 0.15, 0)
input.Position = UDim2.new(0.1, 0, 0.35, 0)
input.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.TextScaled = true
input.Font = Enum.Font.Gotham
Instance.new("UICorner", input).CornerRadius = UDim.new(0, 10)

-- Botón "Continue"
local button = Instance.new("TextButton", f)
button.Text = "Continue"
button.Font = Enum.Font.GothamBold
button.Size = UDim2.new(0.6, 0, 0.15, 0)
button.Position = UDim2.new(0.2, 0, 0.55, 0)
button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextScaled = true

-- Borde azul neón
local uiStroke = Instance.new("UIStroke", button)
uiStroke.Thickness = 2
uiStroke.Color = Color3.fromRGB(0, 255, 255)
uiStroke.Transparency = 0

Instance.new("UICorner", button).CornerRadius = UDim.new(0, 10)

button.MouseButton1Click:Connect(function()
	if input.Text == password then
		g:Destroy()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
	else
		button.Text = "❌ Incorrecta"
		wait(1.5)
		button.Text = "Continue"
	end
end)

-- Botón "Receive Password"
local helpBtn = Instance.new("TextButton", f)
helpBtn.Text = "Receive Password"
helpBtn.Font = Enum.Font.Gotham
helpBtn.Size = UDim2.new(0.6, 0, 0.1, 0)
helpBtn.Position = UDim2.new(0.2, 0, 0.75, 0)
helpBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
helpBtn.TextColor3 = Color3.fromRGB(0, 170, 255)
helpBtn.TextScaled = true
Instance.new("UICorner", helpBtn).CornerRadius = UDim.new(0, 8)

helpBtn.MouseButton1Click:Connect(function()
	setclipboard("https://paste-drop.com/paste/F1VO5jd9k4")
	helpBtn.Text = "✅ Link copied!"
	wait(2)
	helpBtn.Text = "Receive Password"
end)
