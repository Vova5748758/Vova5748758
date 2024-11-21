local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local closeButton = Instance.new("TextButton")
local speedUpButton = Instance.new("TextButton")
local slowDownButton = Instance.new("TextButton")
local jumpHigherButton = Instance.new("TextButton")
local jumpLowerButton = Instance.new("TextButton")
local infiniteJumpButton = Instance.new("TextButton")

local infiniteJumpEnabled = false
local isVisible = true  -- Переменная для отслеживания видимости элементов

-- Настройка Frame
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 0.4
frame.Parent = screenGui

-- Настройка кнопки закрытия
closeButton.Size = UDim2.new(0.1, 0, 0.1, 0)
closeButton.Position = UDim2.new(0, 0, 0, 0)
closeButton.Text = "-"
closeButton.TextColor3 = Color3.new(0, 0, 0)
closeButton.BackgroundColor3 = Color3.new(1, 0, 0)
closeButton.TextScaled = true
closeButton.Parent = frame

-- Настройка других кнопок
infiniteJumpButton.Size = UDim2.new(0.3, 0, 0.1, 0)
infiniteJumpButton.Position = UDim2.new(0.15, 0, 0.4, -25)
infiniteJumpButton.Text = "Бесконечный прыжок"
infiniteJumpButton.TextColor3 = Color3.new(0, 0, 0)
infiniteJumpButton.BackgroundColor3 = Color3.new(0.5, 0, 1)
infiniteJumpButton.TextScaled = true
infiniteJumpButton.Parent = frame

jumpHigherButton.Size = UDim2.new(0.3, 0, 0.1, 0)
jumpHigherButton.Position = UDim2.new(0.25, -37.5, 0.1, 0)
jumpHigherButton.Text = "Увеличить прыжок"
jumpHigherButton.TextColor3 = Color3.new(0, 0, 0)
jumpHigherButton.BackgroundColor3 = Color3.new(1, 1, 0)
jumpHigherButton.TextScaled = true
jumpHigherButton.Parent = frame

jumpLowerButton.Size = UDim2.new(0.3, 0, 0.1, 0)
jumpLowerButton.Position = UDim2.new(0.65, -37.5, 0.1, 0)
jumpLowerButton.Text = "Уменьшить прыжок"
jumpLowerButton.TextColor3 = Color3.new(0, 0, 0)
jumpLowerButton.BackgroundColor3 = Color3.new(1, 0.5, 0)
jumpLowerButton.TextScaled = true
jumpLowerButton.Parent = frame

speedUpButton.Size = UDim2.new(0.3, 0, 0.1, 0)
speedUpButton.Position = UDim2.new(0.5, -75, 0.4, -25)
speedUpButton.Text = "Увеличить скорость"
speedUpButton.TextColor3 = Color3.new(0, 0, 0)
speedUpButton.BackgroundColor3 = Color3.new(0, 1, 0)
speedUpButton.TextScaled = true
speedUpButton.Parent = frame

slowDownButton.Size = UDim2.new(0.3, 0, 0.1, 0)
slowDownButton.Position = UDim2.new(0.5, -75, 0.5, 10)
slowDownButton.Text = "Замедлить скорость"
slowDownButton.TextColor3 = Color3.new(0, 0, 0)
slowDownButton.BackgroundColor3 = Color3.new(0, 0, 1)
slowDownButton.TextScaled = true
slowDownButton.Parent = frame

-- Обработчики событий для кнопок
closeButton.MouseButton1Click:Connect(function()
    isVisible = not isVisible
    frame.Visible = isVisible
    -- Закрыть все кнопки кроме кнопки закрытия
    for _, button in pairs(frame:GetChildren()) do
        if button:IsA("TextButton") and button ~= closeButton then
            button.Visible = isVisible
        end
    end
end)

-- Остальные обработчики кнопок вроде speedUpButton, jumpHigherButton и т.д. остаются прежними...

screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Показать экран через 1 секунду
wait(1)
frame.Visible = true
