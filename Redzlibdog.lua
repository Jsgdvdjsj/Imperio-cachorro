-- 🐶 DOG HUB SYSTEM // SUPER LOADING FUTURISTA
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")
local LocalPlayer = Players.LocalPlayer

-- Criar GUI principal
local gui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
gui.Name = "DogHub_FutureLoad"
gui.ResetOnSpawn = false

-- Fundo animado com transparência escura
local bg = Instance.new("Frame", gui)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
bg.BackgroundTransparency = 0.15

-- Som digital de boot
local sound = Instance.new("Sound", gui)
sound.SoundId = "rbxassetid://6026984224" -- som digital
sound.Volume = 0.5
sound:Play()

-- Texto Central
local title = Instance.new("TextLabel", bg)
title.Size = UDim2.new(1, 0, 0.15, 0)
title.Position = UDim2.new(0, 0, 0.25, 0)
title.BackgroundTransparency = 1
title.Text = "🐾 DOG HUB SYSTEM v4.7"
title.Font = Enum.Font.Arcade
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(0, 255, 127)
title.TextStrokeTransparency = 0.4

-- Barra de progresso com brilho
local holder = Instance.new("Frame", bg)
holder.Size = UDim2.new(0.6, 0, 0.05, 0)
holder.Position = UDim2.new(0.2, 0, 0.55, 0)
holder.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
holder.BorderSizePixel = 0

Instance.new("UICorner", holder).CornerRadius = UDim.new(0, 20)

local bar = Instance.new("Frame", holder)
bar.Size = UDim2.new(0, 0, 1, 0)
bar.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
bar.BorderSizePixel = 0
Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 20)
bar.Parent = holder

-- Luz pulsante por trás do texto
local pulse = Instance.new("Frame", title)
pulse.Size = UDim2.new(1, 0, 1, 0)
pulse.Position = UDim2.new(0, 0, 0, 0)
pulse.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
pulse.BackgroundTransparency = 0.9
pulse.ZIndex = 0

Instance.new("UICorner", pulse).CornerRadius = UDim.new(1, 0)

-- Animação do brilho
task.spawn(function()
	while gui do
		TweenService:Create(pulse, TweenInfo.new(0.5), { BackgroundTransparency = 0.7 }):Play()
		wait(0.5)
		TweenService:Create(pulse, TweenInfo.new(0.5), { BackgroundTransparency = 0.9 }):Play()
		wait(0.5)
	end
end)

-- Partículas falsas (efeito digital descendo)
for i = 1, 20 do
	local pixel = Instance.new("Frame", bg)
	pixel.Size = UDim2.new(0, 2, 0, 10)
	pixel.Position = UDim2.new(math.random(), 0, math.random(), 0)
	pixel.BackgroundColor3 = Color3.fromRGB(0, 255, 127)
	pixel.BackgroundTransparency = 0.4
	pixel.BorderSizePixel = 0

	coroutine.wrap(function()
		while gui and pixel do
			TweenService:Create(pixel, TweenInfo.new(1), {
				Position = UDim2.new(pixel.Position.X.Scale, 0, 1.2, 0)
			}):Play()
			wait(math.random(1, 3))
			pixel.Position = UDim2.new(math.random(), 0, -0.1, 0)
		end
	end)()
end

-- Carregando a barra
TweenService:Create(bar, TweenInfo.new(10, Enum.EasingStyle.Linear), {
	Size = UDim2.new(1, 0, 1, 0)
}):Play()

-- Encerrar e executar
task.delay(10, function()
	gui:Destroy()

	print("🐾 Dog Hub System iniciado com sucesso.")

	-- Script final aqui (troque pela sua URL ou função)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jsgdvdjsj/Imperio-cachorro/refs/heads/main/Height.lua"))()
end)
