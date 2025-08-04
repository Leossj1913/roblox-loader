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

-- Botó
