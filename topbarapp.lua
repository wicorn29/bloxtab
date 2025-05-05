-- Services
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local MarketplaceService = game:GetService("MarketplaceService")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SoundService = game:GetService("SoundService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local Camera = workspace.CurrentCamera

-- Constants
local UI_HEIGHT = 36
local MAX_ZINDEX = 999999999
local RESET_SOUND_ID = 8550978769  -- Sound ID for reset camera sound

-- Destroy old UI
local oldUI = CoreGui:FindFirstChild("TopBarBlocker")
if oldUI then
	oldUI:Destroy()
end

-- Create new UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TopBarBlocker"
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
screenGui.Parent = CoreGui

-- Black top bar background
local blackBar = Instance.new("Frame")
blackBar.BackgroundColor3 = Color3.new(0, 0, 0)
blackBar.BorderSizePixel = 0
blackBar.Size = UDim2.new(1, 0, 0, UI_HEIGHT)
blackBar.Position = UDim2.new(0, 0, 0, 0)
blackBar.ZIndex = MAX_ZINDEX
blackBar.Parent = screenGui

-- Mac-style top bar
local macTopBar = Instance.new("Frame")
macTopBar.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
macTopBar.Size = UDim2.new(1, 0, 0, UI_HEIGHT)
macTopBar.Position = UDim2.new(0, 0, 0, 0)
macTopBar.ZIndex = MAX_ZINDEX + 1
macTopBar.Parent = screenGui

-- Get game name
local success, gameName = pcall(function()
	return MarketplaceService:GetProductInfo(game.PlaceId).Name
end)
gameName = success and gameName or "Unknown"

-- Menu toggle button
local titleButton = Instance.new("TextButton")
titleButton.Text = "ROBLOX > " .. gameName
titleButton.TextColor3 = Color3.new(1, 1, 1)
titleButton.TextSize = 16
titleButton.BackgroundTransparency = 1
titleButton.Position = UDim2.new(0, 8, 0, 0)
titleButton.Size = UDim2.new(0, 300, 1, 0)
titleButton.TextXAlignment = Enum.TextXAlignment.Left
titleButton.ZIndex = MAX_ZINDEX + 2
titleButton.Parent = macTopBar

-- Dropdown menu
local dropdownMenu = Instance.new("Frame")
dropdownMenu.Size = UDim2.new(0, 180, 0, 150)
dropdownMenu.Position = UDim2.new(0, 8, 0, UI_HEIGHT)
dropdownMenu.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
dropdownMenu.BorderSizePixel = 0
dropdownMenu.Visible = false
dropdownMenu.ZIndex = MAX_ZINDEX + 3
dropdownMenu.Parent = screenGui

-- Character menu
local characterMenu = Instance.new("Frame")
characterMenu.Size = UDim2.new(0, 180, 0, 150)
characterMenu.Position = UDim2.new(0, 200, 0, UI_HEIGHT)
characterMenu.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
characterMenu.BorderSizePixel = 0
characterMenu.Visible = false
characterMenu.ZIndex = MAX_ZINDEX + 3
characterMenu.Parent = screenGui

-- Utility to create menu buttons with auto-scaling
local function createMenuButton(text, order, parent)
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(1, 0, 0, 30)
	btn.Position = UDim2.new(0, 0, 0, (order - 1) * 30)
	btn.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
	btn.Text = text
	btn.TextColor3 = Color3.new(1, 1, 1)
	btn.TextSize = 14
	btn.TextWrapped = true
	btn.TextXAlignment = Enum.TextXAlignment.Center
	btn.TextYAlignment = Enum.TextYAlignment.Center
	btn.BorderSizePixel = 0
	btn.ZIndex = parent.ZIndex + 1

	-- Add TextSizeConstraint to prevent text overflow
	local constraint = Instance.new("UITextSizeConstraint")
	constraint.MaxTextSize = 14
	constraint.MinTextSize = 8
	constraint.Parent = btn

	btn.Parent = parent
	return btn
end

-- Dropdown menu buttons
local leaveClicks = 0
local rejoinClicks = 0

local leaveButton = createMenuButton("Leave", 1, dropdownMenu)
leaveButton.MouseButton1Click:Connect(function()
	leaveClicks += 1
	if leaveClicks >= 10 then
		game:Shutdown()
	else
		leaveButton.Text = "Leave (" .. (10 - leaveClicks) .. " more)"
	end
end)

local rejoinButton = createMenuButton("Rejoin", 2, dropdownMenu)
rejoinButton.MouseButton1Click:Connect(function()
	rejoinClicks += 1
	if rejoinClicks >= 5 then
		TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Player)
	else
		rejoinButton.Text = "Rejoin (" .. (5 - rejoinClicks) .. " more)"
	end
end)

local chatButton = createMenuButton("Toggle Chat", 3, dropdownMenu)
chatButton.MouseButton1Click:Connect(function()
	local enabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat)
	StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, not enabled)
	chatButton.Text = (not enabled and "Hide" or "Show") .. " Chat"
end)

local leaderboardButton = createMenuButton("Toggle Leaderboard", 4, dropdownMenu)
leaderboardButton.MouseButton1Click:Connect(function()
	local enabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
	StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, not enabled)
	leaderboardButton.Text = (not enabled and "Hide" or "Show") .. " Leaderboard"
end)

-- Character menu buttons
local resetCharacterButton = createMenuButton("Reset Character", 1, characterMenu)
resetCharacterButton.MouseButton1Click:Connect(function()
	-- Reset the player's character (health 0)
	local character = Player.Character
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.Health = 0 -- "Kill" the character
		end
	end
end)

local resetCameraButton = createMenuButton("Reset Camera", 2, characterMenu)
resetCameraButton.MouseButton1Click:Connect(function()
	-- Reset camera to default (not in cutscene, menu, etc.)
	Camera.CameraType = Enum.CameraType.Custom
	Camera.CameraSubject = Player.Character.Humanoid

	-- Play the reset camera sound AFTER the camera is reset
	wait(0.1)  -- Small delay to ensure camera is reset
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://" .. RESET_SOUND_ID
	sound.Parent = Camera
	sound:Play()
end)

-- Update toggle text based on state
local function updateMenuStates()
	if dropdownMenu.Visible then
		local chatEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat)
		local listEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
		chatButton.Text = (chatEnabled and "Hide" or "Show") .. " Chat"
		leaderboardButton.Text = (listEnabled and "Hide" or "Show") .. " Leaderboard"
	end
end

-- Toggle dropdown
local function toggleDropdown()
	dropdownMenu.Visible = not dropdownMenu.Visible
	updateMenuStates()
end

-- Toggle character menu
local function toggleCharacterMenu()
	characterMenu.Visible = not characterMenu.Visible
end

-- Clicking outside to close open menus
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and not gameProcessed then
		local mousePos = input.Position
		if dropdownMenu.Visible and not dropdownMenu.AbsolutePosition:PointInRect(mousePos) and not titleButton.AbsolutePosition:PointInRect(mousePos) then
			dropdownMenu.Visible = false
		end
		if characterMenu.Visible and not characterMenu.AbsolutePosition:PointInRect(mousePos) and not titleButton.AbsolutePosition:PointInRect(mousePos) then
			characterMenu.Visible = false
		end
	end
end)

-- ESC key to open the game menu
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.Escape and not gameProcessed then
		toggleDropdown()
	end
end)

-- L key for leave button
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.L and not gameProcessed and dropdownMenu.Visible then
		leaveButton.MouseButton1Click:Fire()
	end
end)

-- R key for rejoin button
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.R and not gameProcessed and dropdownMenu.Visible then
		rejoinButton.MouseButton1Click:Fire()
	end
end)

-- Force GUI on top
RunService.Heartbeat:Connect(function()
	screenGui.ZIndex = MAX_ZINDEX
end)

-- Persistent menu across sessions (recreate menu if lost)
Player.CharacterAdded:Connect(function()
	-- Ensure menu remains visible when respawning
	if not dropdownMenu.Visible then
		dropdownMenu.Visible = true
	end
end)

-- Remove default top bar
local function removeCoreGuis()
	local topBar = CoreGui:FindFirstChild("TopBarApp")
	if topBar then topBar:Destroy() end
end

removeCoreGuis()
RunService.Heartbeat:Connect(removeCoreGuis)

-- Create button to toggle character menu
local characterButton = Instance.new("TextButton")
characterButton.Text = "Character"
characterButton.TextColor3 = Color3.new(1, 1, 1)
characterButton.TextSize = 16
characterButton.BackgroundTransparency = 1
characterButton.Position = UDim2.new(0, 300, 0, 0)
characterButton.Size = UDim2.new(0, 180, 1, 0)
characterButton.TextXAlignment = Enum.TextXAlignment.Left
characterButton.ZIndex = MAX_ZINDEX + 2
characterButton.Parent = macTopBar

characterButton.MouseButton1Click:Connect(toggleCharacterMenu)

-- Toggle menu when clicked
titleButton.MouseButton1Click:Connect(toggleDropdown)
