-- Script Hub feito por Lkslz
-- Suporte: Discord: lkslz | TikTok: @lukedodev

local UserInputService = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local Credits = Instance.new("TextLabel")

local function makeButton(name, func)
	local Button = Instance.new("TextButton")
	Button.Text = name
	Button.Size = UDim2.new(1, 0, 0, 40)
	Button.BackgroundColor3 = Color3.fromRGB(255, 136, 0)
	Button.TextColor3 = Color3.new(1,1,1)
	Button.Font = Enum.Font.SourceSansBold
	Button.TextSize = 18
	Button.AutoButtonColor = true
	Button.BorderSizePixel = 0
	local ButtonCorner = Instance.new("UICorner")
	ButtonCorner.CornerRadius = UDim.new(0, 6)
	ButtonCorner.Parent = Button
	Button.MouseButton1Click:Connect(func)
	Button.Parent = Frame
end

ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false
ScreenGui.Name = "Lkslz_Hub"

Frame.Size = UDim2.new(0, 260, 0, 460)
Frame.Position = UDim2.new(0, 30, 0.5, -230)
Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Frame

UIPadding.PaddingTop = UDim.new(0, 10)
UIPadding.PaddingLeft = UDim.new(0, 10)
UIPadding.PaddingRight = UDim.new(0, 10)
UIPadding.PaddingBottom = UDim.new(0, 10)
UIPadding.Parent = Frame

Title.Text = "🛠 Script Maker Hub"
Title.Size = UDim2.new(1, 0, 0, 50)
Title.TextColor3 = Color3.new(1, 1, 1)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24
Title.BackgroundTransparency = 1
Title.Parent = Frame

UIListLayout.Parent = Frame
UIListLayout.Padding = UDim.new(0, 8)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Botões (com os nomes originais)
makeButton("🕵️ Simple Spy V3 (Amity)", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
end)

makeButton("🕵️ Remote FinderV2 (mxx_xx3)", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/OreOFDAY12/RemoteSpy/refs/heads/main/README.md"))()
end)

makeButton("🔍 Simple Spy (???)", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LookP/Roblox/refs/heads/main/SimpleSpyMobile.lua"))()
end)

makeButton("♦️ Infinite Yield  (???)", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/latest.lua'))()
end)

makeButton("🔍 Dex Explorer (WeAreDevs)", function()
	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
end)

makeButton("💣 Destroy GUI", function()
	ScreenGui:Destroy()
end)

-- Créditos
Credits.Text = "Feito por Lkslz | Discord: lkslz"
Credits.Size = UDim2.new(1, 0, 0, 25)
Credits.Position = UDim2.new(0, 0, 1, -25)
Credits.TextColor3 = Color3.fromRGB(200, 200, 200)
Credits.BackgroundTransparency = 1
Credits.TextScaled = true
Credits.Font = Enum.Font.Gotham
Credits.Parent = Frame

-- Alternar visibilidade com tecla L
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if not gameProcessed and input.KeyCode == Enum.KeyCode.L then
		Frame.Visible = not Frame.Visible
	end
end)
