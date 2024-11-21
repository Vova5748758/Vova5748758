wait (2)--загрузка

local screenGui = Instance.new("ScreenGui")
--задний фон
local frame = Instance.new("Frame")
--кнопка
local button = Instance.new("TextButton")

-- Настройка заднего фона
frame.Size = UDim2.new(1, 0, 1, 0)  -- Занимает весь экран 
frame.BackgroundColor3 = Color3.new(1, 1, 1)  --цвет (белый)
frame.Parent = screenGui

-- кнопка
button.Size = UDim2.new(0.2, 0, 0.1, 0)  -- Размер кнопки
button.Position = UDim2.new(0.5, -50, 0.5, -25)  -- Центрирование кнопки
button.Text = "текст"
button.Parent = frame

-- Добавление действия на кнопку
button.MouseButton1Click:Connect(function()
    print("Кнопка нажата!")
end)

screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

--мой бот - @Scripthackbot (ТГК)
--@Scripthackbot
--подержи донатом акк CDTY0898
--за ранее спасибо!

