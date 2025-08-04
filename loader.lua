local password = "talleres1"
local g = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))

local f = Instance.new("Frame", g)
f.Size = UDim2.new(0, 400, 0, 250)
f.Position = UDim2.new(0.5, -200, 0.5, -125)
f.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("UICorner", f).CornerRadius = UDim.new(0, 14)

-- Texto título
local title = Instance.new("TextLabel", f)
title.Text = "Enter Password"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, -40, 0.15, 0)
title.Position = UDim2.new(0, 20, 0, 30)

-- Input
local input = Instance.new("TextBox", f)
input.PlaceholderText = "Password..."
input.Size = UDim2.new(0.8, 0, 0.15, 0)
input.Position = UDim2.new(0.1, 0, 0.45, 0)
input.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.TextScaled = true
input.Font = Enum.Font.Gotham
Instance.new("UICorner", input).CornerRadius = UDim.new(0, 10)

-- Botón
local button = Instance.new("TextButton", f)
button.Text = "Ingresar"
button.Font = Enum.Font.GothamBold
button.Size = UDim2.new(0.6, 0, 0.15, 0)
button.Position = UDim2.new(0.2, 0, 0.7, 0)
button.BackgroundColor3 = Color3.fromRGB(0, 132, 255)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextScaled = true
Instance.new("UICorner", button).CornerRadius = UDim.new(0, 10)

button.MouseButton1Click:Connect(function()
	if input.Text == password then
		g:Destroy()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
	else
		button.Text = "❌ Incorrecta"
		wait(1.5)
		button.Text = "Ingresar"
	end
end)
