
local Instances = {
	TopBarBlocker = Instance.new("ScreenGui"),
	TopBAR = Instance.new("Frame"),
	main = Instance.new("TextButton"),
	player = Instance.new("TextButton"),
	scripts = Instance.new("TextButton"),
	Menus = Instance.new("Folder"),
	main_2 = Instance.new("Frame"),
	Chat = Instance.new("TextButton"),
	LS = Instance.new("TextButton"),
	Rejoin = Instance.new("TextButton"),
	Leave = Instance.new("TextButton"),
	player_2 = Instance.new("Frame"),
	reset = Instance.new("TextButton"),
	resetcamera = Instance.new("TextButton"),
	hitbox = Instance.new("TextButton"),
	scripts_2 = Instance.new("Frame"),
	inf = Instance.new("TextButton"),
	dex = Instance.new("TextButton"),
	ball = Instance.new("TextButton"),
	Flags = Instance.new("Folder"),
	load = Instance.new("BoolValue"),
}

Instances.TopBarBlocker.Name = "TopBarBlocker"
Instances.TopBarBlocker.IgnoreGuiInset = true
Instances.TopBarBlocker.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
Instances.TopBarBlocker.Parent = game:GetService("CoreGui")

Instances.TopBAR.Name = "TopBAR"
Instances.TopBAR.ZIndex = 10
Instances.TopBAR.Size = UDim2.new(1, 0, 0, 36)
Instances.TopBAR.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.TopBAR.Parent = Instances.TopBarBlocker

Instances.main.Name = "main"
Instances.main.AutoButtonColor = true
Instances.main.ZIndex = 11
Instances.main.Size = UDim2.new(0.00797448121, 300, 1, 0)
Instances.main.BackgroundTransparency = 1
Instances.main.TextColor3 = Color3.new(1, 1, 1)
Instances.main.Text = "ROBLOX > "
Instances.main.TextWrapped = true
Instances.main.TextXAlignment = Enum.TextXAlignment.Left
Instances.main.TextScaled = true
Instances.main.Parent = Instances.TopBAR

Instances.player.Name = "player"
Instances.player.AutoButtonColor = true
Instances.player.ZIndex = 11
Instances.player.Size = UDim2.new(-0.223558038, 300, 1, 0)
Instances.player.BackgroundTransparency = 1
Instances.player.Position = UDim2.new(0.382579982, 0, -0.027777778, 0)
Instances.player.TextColor3 = Color3.new(1, 1, 1)
Instances.player.Text = "Player"
Instances.player.TextWrapped = true
Instances.player.TextXAlignment = Enum.TextXAlignment.Left
Instances.player.TextScaled = true
Instances.player.Parent = Instances.TopBAR

Instances.scripts.Name = "scripts"
Instances.scripts.AutoButtonColor = true
Instances.scripts.ZIndex = 11
Instances.scripts.Size = UDim2.new(-0.223558038, 300, 1, 0)
Instances.scripts.BackgroundTransparency = 1
Instances.scripts.Position = UDim2.new(0.588754117, 0, 0, 0)
Instances.scripts.TextColor3 = Color3.new(1, 1, 1)
Instances.scripts.Text = "Scripts"
Instances.scripts.TextWrapped = true
Instances.scripts.TextXAlignment = Enum.TextXAlignment.Left
Instances.scripts.TextScaled = true
Instances.scripts.Parent = Instances.TopBAR

Instances.Menus.Name = "Menus"
Instances.Menus.Parent = Instances.TopBarBlocker

Instances.main_2.Name = "main"
Instances.main_2.Visible = false
Instances.main_2.ZIndex = 10
Instances.main_2.Size = UDim2.new(0, 180, 0, 144)
Instances.main_2.BorderSizePixel = 0
Instances.main_2.Position = UDim2.new(0, 0, 0, 36)
Instances.main_2.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.main_2.Parent = Instances.Menus

Instances.Chat.Name = "Chat"
Instances.Chat.AutoButtonColor = true
Instances.Chat.ZIndex = 11
Instances.Chat.Size = UDim2.new(0, 180, 0, 29)
Instances.Chat.BorderColor3 = Color3.new(0, 0, 0)
Instances.Chat.BorderSizePixel = 0
Instances.Chat.Position = UDim2.new(-0.00239223894, 0, -0.00464948034, 0)
Instances.Chat.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.Chat.TextColor3 = Color3.new(0, 1, 0)
Instances.Chat.Text = "Chat has crashed! :("
Instances.Chat.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.Chat.TextWrapped = true
Instances.Chat.TextScaled = true
Instances.Chat.Parent = Instances.main_2

Instances.LS.Name = "LS"
Instances.LS.AutoButtonColor = true
Instances.LS.ZIndex = 11
Instances.LS.Size = UDim2.new(0, 180, 0, 29)
Instances.LS.BorderColor3 = Color3.new(0, 0, 0)
Instances.LS.BorderSizePixel = 0
Instances.LS.Position = UDim2.new(-0.00239223894, 0, 0.196739405, 0)
Instances.LS.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.LS.TextColor3 = Color3.new(0, 1, 0)
Instances.LS.Text = "Leaderboard has crashed! :("
Instances.LS.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.LS.TextWrapped = true
Instances.LS.TextScaled = true
Instances.LS.Parent = Instances.main_2

Instances.Rejoin.Name = "Rejoin"
Instances.Rejoin.AutoButtonColor = true
Instances.Rejoin.ZIndex = 11
Instances.Rejoin.Size = UDim2.new(0, 180, 0, 29)
Instances.Rejoin.BorderColor3 = Color3.new(0, 0, 0)
Instances.Rejoin.BorderSizePixel = 0
Instances.Rejoin.Position = UDim2.new(-0.00239223894, 0, 0.599517167, 0)
Instances.Rejoin.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.Rejoin.TextColor3 = Color3.new(0, 1, 0)
Instances.Rejoin.Text = "Rejoin"
Instances.Rejoin.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.Rejoin.TextWrapped = true
Instances.Rejoin.TextScaled = true
Instances.Rejoin.Parent = Instances.main_2

Instances.Leave.Name = "Leave"
Instances.Leave.AutoButtonColor = true
Instances.Leave.ZIndex = 11
Instances.Leave.Size = UDim2.new(0, 180, 0, 29)
Instances.Leave.BorderColor3 = Color3.new(0, 0, 0)
Instances.Leave.BorderSizePixel = 0
Instances.Leave.Position = UDim2.new(-0.00239223894, 0, 0.793961644, 0)
Instances.Leave.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.Leave.TextColor3 = Color3.new(0, 1, 0)
Instances.Leave.Text = "Leave Game"
Instances.Leave.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.Leave.TextWrapped = true
Instances.Leave.TextScaled = true
Instances.Leave.Parent = Instances.main_2

Instances.player_2.Name = "player"
Instances.player_2.Visible = false
Instances.player_2.ZIndex = 10
Instances.player_2.Size = UDim2.new(0, 180, 0, 85)
Instances.player_2.BorderSizePixel = 0
Instances.player_2.Position = UDim2.new(0, 305, 0, 36)
Instances.player_2.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.player_2.Parent = Instances.Menus

Instances.reset.Name = "reset"
Instances.reset.AutoButtonColor = true
Instances.reset.ZIndex = 11
Instances.reset.Size = UDim2.new(0, 180, 0, 29)
Instances.reset.BorderColor3 = Color3.new(0, 0, 0)
Instances.reset.BorderSizePixel = 0
Instances.reset.Position = UDim2.new(-0.00239223894, 0, -0.00464948034, 0)
Instances.reset.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.reset.TextColor3 = Color3.new(0, 1, 0)
Instances.reset.Text = "Reset Character"
Instances.reset.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.reset.TextWrapped = true
Instances.reset.TextScaled = true
Instances.reset.Parent = Instances.player_2

Instances.resetcamera.Name = "resetcamera"
Instances.resetcamera.AutoButtonColor = true
Instances.resetcamera.ZIndex = 11
Instances.resetcamera.Size = UDim2.new(0, 180, 0, 29)
Instances.resetcamera.BorderColor3 = Color3.new(0, 0, 0)
Instances.resetcamera.BorderSizePixel = 0
Instances.resetcamera.Position = UDim2.new(-0.00239223894, 0, 0.326151043, 0)
Instances.resetcamera.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.resetcamera.TextColor3 = Color3.new(0, 1, 0)
Instances.resetcamera.Text = "Reset Camera"
Instances.resetcamera.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.resetcamera.TextWrapped = true
Instances.resetcamera.TextScaled = true
Instances.resetcamera.Parent = Instances.player_2

Instances.hitbox.Name = "hitbox"
Instances.hitbox.AutoButtonColor = true
Instances.hitbox.ZIndex = 11
Instances.hitbox.Size = UDim2.new(0, 180, 0, 29)
Instances.hitbox.BorderColor3 = Color3.new(0, 0, 0)
Instances.hitbox.BorderSizePixel = 0
Instances.hitbox.Position = UDim2.new(0.00165032281, 0, 0.663470805, 0)
Instances.hitbox.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.hitbox.TextColor3 = Color3.new(0, 1, 0)
Instances.hitbox.Text = "Show Hitbox"
Instances.hitbox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.hitbox.TextWrapped = true
Instances.hitbox.TextScaled = true
Instances.hitbox.Parent = Instances.player_2

Instances.scripts_2.Name = "scripts"
Instances.scripts_2.Visible = false
Instances.scripts_2.ZIndex = 10
Instances.scripts_2.Size = UDim2.new(0, 180, 0, 85)
Instances.scripts_2.BorderSizePixel = 0
Instances.scripts_2.Position = UDim2.new(0, 493, 0, 36)
Instances.scripts_2.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.scripts_2.Parent = Instances.Menus

Instances.inf.Name = "inf"
Instances.inf.AutoButtonColor = true
Instances.inf.ZIndex = 11
Instances.inf.Size = UDim2.new(0, 180, 0, 29)
Instances.inf.BorderColor3 = Color3.new(0, 0, 0)
Instances.inf.BorderSizePixel = 0
Instances.inf.Position = UDim2.new(-0.00239223894, 0, -0.00464948034, 0)
Instances.inf.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.inf.TextColor3 = Color3.new(0, 1, 0)
Instances.inf.Text = "Infinite Yield"
Instances.inf.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.inf.TextWrapped = true
Instances.inf.TextScaled = true
Instances.inf.Parent = Instances.scripts_2

Instances.dex.Name = "dex"
Instances.dex.AutoButtonColor = true
Instances.dex.ZIndex = 11
Instances.dex.Size = UDim2.new(0, 180, 0, 29)
Instances.dex.BorderColor3 = Color3.new(0, 0, 0)
Instances.dex.BorderSizePixel = 0
Instances.dex.Position = UDim2.new(-0.00390523276, 0, 0.33405906, 0)
Instances.dex.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.dex.TextColor3 = Color3.new(0, 1, 0)
Instances.dex.Text = "Dex"
Instances.dex.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.dex.TextWrapped = true
Instances.dex.TextScaled = true
Instances.dex.Parent = Instances.scripts_2

Instances.ball.Name = "ball"
Instances.ball.AutoButtonColor = true
Instances.ball.ZIndex = 11
Instances.ball.Size = UDim2.new(0, 180, 0, 29)
Instances.ball.BorderColor3 = Color3.new(0, 0, 0)
Instances.ball.BorderSizePixel = 0
Instances.ball.Position = UDim2.new(-0.00390523276, 0, 0.6517061, 0)
Instances.ball.BackgroundColor3 = Color3.new(0, 0, 0)
Instances.ball.TextColor3 = Color3.new(0, 1, 0)
Instances.ball.Text = "Ball Roll (for debugging)"
Instances.ball.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Instances.ball.TextWrapped = true
Instances.ball.TextScaled = true
Instances.ball.Parent = Instances.scripts_2

Instances.Flags.Name = "Flags"
Instances.Flags.Parent = Instances.TopBarBlocker

Instances.load.Name = "load"
Instances.load.Parent = Instances.Flags

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.main)
	local Players = game:GetService("Players")
	local MarketplaceService = game:GetService("MarketplaceService")
	
	local player = Players.LocalPlayer
	local textButton = script.Parent
	
	-- Get the game name
	local success, gameInfo = pcall(function()
		return MarketplaceService:GetProductInfo(game.PlaceId)
	end)
	
	if success and gameInfo and gameInfo.Name then
		textButton.Text = "ROBLOX > " .. gameInfo.Name
	else
		textButton.Text = "ROBLOX > [Unknown Game]"
	end
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.Chat)
	local StarterGui = game:GetService("StarterGui")
	local TextChatService = game:GetService("TextChatService")
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	
	local player = Players.LocalPlayer
	local button = script.Parent
	
	-- Cache the original button color
	local originalColor = button.BackgroundColor3
	local forceColor = Color3.fromRGB(255, 100, 100)
	
	-- State flags
	local canToggle = true
	
	-- Check if chat is enabled for legacy chat
	local function isLegacyChatVisible()
		local success, result = pcall(function()
			return StarterGui:GetCore("ChatActive")
		end)
		return success and result or false
	end
	
	-- Check if chat is enabled for TextChatService
	local function isTextChatVisible()
		local success, result = pcall(function()
			return TextChatService.ChatEnabled
		end)
		return success and result or false
	end
	
	-- Check if chat is disabled by the game (using SetCoreGuiEnabled for legacy chat)
	local function isChatDisabled()
		local success, result = pcall(function()
			return StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat)
		end)
		return success and not result  -- Returns true if chat is disabled
	end
	
	-- Set chat visibility for legacy chat
	local function setLegacyChatVisible(state)
		local success = pcall(function()
			StarterGui:SetCore("ChatActive", state)
		end)
		return success
	end
	
	-- Set chat visibility for TextChatService
	local function setTextChatVisible(state)
		local success = pcall(function()
			TextChatService.ChatEnabled = state
		end)
		return success
	end
	
	-- Force enable chat by setting CoreGuiEnabled to true
	local function forceEnableChat()
		local success = pcall(function()
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
		end)
		return success
	end
	
	-- Update the button's text and color based on the chat state
	local function updateButton()
		local visible = isLegacyChatVisible() or isTextChatVisible()
		local disabled = isChatDisabled()
	
		if disabled then
			button.Text = "Force Enable Chat"
			button.BackgroundColor3 = forceColor
			canToggle = false  -- Disabling toggle if chat is forced off
		elseif visible then
			button.Text = "Hide Chat"
			button.BackgroundColor3 = originalColor
		else
			button.Text = "Show Chat"
			button.BackgroundColor3 = originalColor
		end
	end
	
	-- Attempt to force-enable chat if disabled
	local function onClick()
		if not canToggle then
			-- Force enable the chat if it's been disabled by the game
			if forceEnableChat() then
				canToggle = true
				updateButton()  -- Refresh the button state
			end
		else
			-- Toggle chat visibility for legacy or text chat
			local currentLegacy = isLegacyChatVisible()
			local currentText = isTextChatVisible()
			local success = false
	
			if currentLegacy then
				success = setLegacyChatVisible(false)
			elseif currentText then
				success = setTextChatVisible(false)
			else
				-- Try to show the chat based on its current state
				if not currentLegacy then
					success = setLegacyChatVisible(true)
				elseif not currentText then
					success = setTextChatVisible(true)
				end
			end
	
			if success then
				updateButton()
			end
		end
	end
	
	-- Keep checking and updating UI state every frame
	RunService.RenderStepped:Connect(function()
		updateButton()
	end)
	
	-- Connect button click to toggle or force-enable chat
	button.MouseButton1Click:Connect(onClick)
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.LS)
	-- LocalScript inside the leaderboardButton (TextButton)
	local leaderboardButton = script.Parent
	local StarterGui = game:GetService("StarterGui")
	local RunService = game:GetService("RunService")
	
	-- Function to update the button text based on current visibility
	local function updateText()
		local enabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
		leaderboardButton.Text = (enabled and "Hide" or "Show") .. " Leaderboard"
	end
	
	-- Click to toggle visibility
	leaderboardButton.MouseButton1Click:Connect(function()
		local enabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, not enabled)
	end)
	
	-- Continuously update the button text
	RunService.RenderStepped:Connect(updateText)
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.Rejoin)
	-- Script for a "Rejoin Game" button
	
	local button = script.Parent -- Assume this script is inside the button
	local player = game.Players.LocalPlayer -- Get the local player
	local flags = button.Parent.Parent.Parent.Flags
	local load = flags.load
	
	local hasConfirmed = false -- Track if the player has confirmed
	
	local function onButtonClicked()
		if hasConfirmed then
			-- Player confirmed, rejoin the game
			load.Value = true
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, player)
		else
			-- Change the button text and background color
			button.Text = "You sure?"
			button.BackgroundColor3 = Color3.fromRGB(255, 100, 100) -- Mild red color
			hasConfirmed = true -- Mark that the player has confirmed
		end
	end
	
	button.MouseButton1Click:Connect(onButtonClicked)
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.Leave)
	-- Script for a "Leave Game" button
	
	local button = script.Parent -- Assume this script is inside the button
	local player = game.Players.LocalPlayer -- Get the local player
	local flags = button.Parent.Parent.Parent.Flags
	local load = flags.load
	
	local hasConfirmed = false -- Track if the player has confirmed
	
	local function onButtonClicked()
		if hasConfirmed then
			-- Player confirmed, shut down the game
			load.Value = true
			game:Shutdown() -- Spooky command!
		else
			-- Change the button text and background color
			button.Text = "You sure?"
			button.BackgroundColor3 = Color3.fromRGB(255, 100, 100) -- Mild red color
			hasConfirmed = true -- Mark that the player has confirmed
		end
	end
	
	button.MouseButton1Click:Connect(onButtonClicked)
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.reset)
	-- LocalScript for Reset Character Button
	local button = script.Parent -- Assume the script is under the button
	local player = game.Players.LocalPlayer
	
	button.MouseButton1Click:Connect(function()
		-- Kill the player's character to reset it
		if player.Character then
			player.Character:BreakJoints() -- Force kill the character
		end
	end)
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.resetcamera)
	-- LocalScript for Reset Camera Button
	local button = script.Parent -- Assume the script is under the button
	local player = game.Players.LocalPlayer
	local camera = game.Workspace.CurrentCamera
	
	button.MouseButton1Click:Connect(function()
		-- Reset camera to default position (set to the player's character position)
		if player.Character then
			camera.CameraType = Enum.CameraType.Custom
			camera.CFrame = player.Character.HumanoidRootPart.CFrame -- Set to the root part of the character
		end
	end)
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.hitbox)
	-- LocalScript for Show/Hide Hitbox Button
	local button = script.Parent -- Assume the script is under the button
	local player = game.Players.LocalPlayer
	local rootPart = player.Character and player.Character:WaitForChild("HumanoidRootPart")
	
	button.MouseButton1Click:Connect(function()
		-- Toggle the visibility of the player's root part (hitbox)
		if rootPart then
			if rootPart.Transparency == 0 then
				rootPart.Transparency = 1 -- Hide the hitbox
				rootPart.CanCollide = false -- Disable collision
				button.Text = "Show Hitbox" -- Change the button text to "Show Hitbox"
			else
				rootPart.Transparency = 0 -- Show the hitbox
				rootPart.CanCollide = true -- Enable collision
				button.Text = "Hide Hitbox" -- Change the button text to "Hide Hitbox"
			end
		end
	end)
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.inf)
	local button = script.Parent
	
	local function onButtonClick()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
	
	
	button.MouseButton1Click:Connect(onButtonClick)
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.dex)
	local button = script.Parent
	
	local function onButtonClick()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
	end
	
	
	button.MouseButton1Click:Connect(onButtonClick)
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.ball)
	local button = script.Parent
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local Camera = workspace.CurrentCamera
	local Players = game:GetService("Players")
	
	local SPEED_MULTIPLIER = 30
	local JUMP_POWER = 60
	local JUMP_GAP = 0.3
	
	button.MouseButton1Click:Connect(function()
		local player = Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local humanoid = character:WaitForChild("Humanoid")
		local ball = character:WaitForChild("HumanoidRootPart")
	
		-- Remove collisions
		for _, part in ipairs(character:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = false
			end
		end
	
		-- Set root part to a ball
		ball.Shape = Enum.PartType.Ball
		ball.Size = Vector3.new(5, 5, 5)
		ball.CanCollide = true
		humanoid.PlatformStand = true
	
		local params = RaycastParams.new()
		params.FilterType = Enum.RaycastFilterType.Blacklist
		params.FilterDescendantsInstances = {character}
	
		-- Movement loop
		local connection
		connection = RunService.RenderStepped:Connect(function(delta)
			if UserInputService:GetFocusedTextBox() then return end
	
			if UserInputService:IsKeyDown(Enum.KeyCode.W) then
				ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
			end
			if UserInputService:IsKeyDown(Enum.KeyCode.A) then
				ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
			end
			if UserInputService:IsKeyDown(Enum.KeyCode.S) then
				ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
			end
			if UserInputService:IsKeyDown(Enum.KeyCode.D) then
				ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
			end
		end)
	
		-- Jumping
		UserInputService.JumpRequest:Connect(function()
			local result = workspace:Raycast(
				ball.Position,
				Vector3.new(0, -((ball.Size.Y / 2) + JUMP_GAP), 0),
				params
			)
			if result then
				ball.Velocity += Vector3.new(0, JUMP_POWER, 0)
			end
		end)
	
		-- Set camera to follow ball
		Camera.CameraSubject = ball
	
		-- Clean up on death
		humanoid.Died:Connect(function()
			if connection then connection:Disconnect() end
		end)
	end)
end)()

coroutine.wrap(function()
	local script = Instance.new("LocalScript", Instances.TopBarBlocker)
	
	
	
	
	local CoreGui = game:GetService("CoreGui")
	local Players = game:GetService("Players")
	local UserInputService = game:GetService("UserInputService")
	
	-- Wait for the LocalPlayer to be available
	local player = Players.LocalPlayer
	while not player do
		player = Players.LocalPlayer
		wait(0.1) -- Wait for a brief moment and try again
	end
	
	local mouse = player:GetMouse()
	
	local function removeCoreGuis()
		-- Wait for the "TopBarApp" to exist in CoreGui
		local topBar = CoreGui:WaitForChild("TopBarApp", 10) -- Waits for up to 10 seconds
	
		-- If the "TopBarApp" exists, destroy it
		if topBar then
			topBar:Destroy()
		else
			warn("TopBarApp not found within the timeout period.")
		end
	end
	
	removeCoreGuis()
	
	local gui = script.Parent
	local topBar = gui:WaitForChild("TopBAR")
	local menus = gui:WaitForChild("Menus")
	local flags = gui:WaitForChild("Flags")
	
	-- Toggle visibility of corresponding menu when a button is clicked
	for _, button in ipairs(topBar:GetChildren()) do
		if button:IsA("TextButton") or button:IsA("ImageButton") then
			button.MouseButton1Click:Connect(function()
				local menuFrame = menus:FindFirstChild(button.Name)
				if menuFrame and menuFrame:IsA("Frame") then
					menuFrame.Visible = not menuFrame.Visible
				else
					warn("No matching frame for button:", button.Name)
				end
			end)
		end
	end
	
	-- FlagsManager module (inline)
	local FlagsManager = {}
	FlagsManager.__index = FlagsManager
	
	function FlagsManager.new(flagsFolder)
		local self = setmetatable({}, FlagsManager)
		self.flags = flagsFolder
		self.connections = {}
		return self
	end
	
	function FlagsManager:bindBool(flagName, onTrue, onFalse)
		local flag = self.flags:WaitForChild(flagName)
		if not flag:IsA("BoolValue") then
			error("Flag '" .. flagName .. "' must be a BoolValue")
		end
	
		-- Initial state
		if flag.Value then
			onTrue()
		else
			onFalse()
		end
	
		-- Bind listener
		local conn = flag:GetPropertyChangedSignal("Value"):Connect(function()
			if flag.Value then
				onTrue()
			else
				onFalse()
			end
		end)
	
		self.connections[flagName] = conn
	end
	
	function FlagsManager:destroy()
		for _, conn in pairs(self.connections) do
			conn:Disconnect()
		end
		self.connections = {}
	end
	
	-- Cursor image ID you uploaded
	local cursorImageId = "rbxassetid://103112866728788"
	
	-- Create and use FlagsManager
	local flagManager = FlagsManager.new(flags)
	
	flagManager:bindBool("load", function()
		UserInputService.MouseIconEnabled = true
		UserInputService.MouseIcon = cursorImageId
	end, function()
		UserInputService.MouseIcon = ""
	end)
end)()
