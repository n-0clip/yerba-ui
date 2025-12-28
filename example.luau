-- maybe add here a docs
local Yerba = loadstring(game:HttpGet("https://raw.githubusercontent.com/n-0clip/yerba-ui/main/yerba.luau"))()

local Window = Yerba:CreateWindow("Yerba", "v1.4", {
	Width = 620,
	Height = 480
})

local Watermark = Window:CreateWatermark({
	Title = "Yerba",
	Subtitle = "with<3"
})

local KeybindsDisplay = Window:CreateKeybindsDisplay()

local CombatTab = Window:CreateTab("combat")
local VisualsTab = Window:CreateTab("visuals")
local MiscTab = Window:CreateTab("misc")

-- Player list linked to visuals tab
local PlayerList = Window:CreatePlayerList({
	Side = "right",
	Gap = 10,
	Tab = VisualsTab,
	OnSpectate = function(player)
		print("Spectating:", player.Name)
	end,
	OnTeleport = function(player)
		if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
		end
	end
})

local AimbotSection = CombatTab:CreateSection("aimbot", {"main", "settings", "fov"}, "left")

-- Toggle with keybind and side menu example
local AimbotToggle = AimbotSection:CreateToggle({
	Name = "Enable",
	Default = false,
	Subtab = "main",
	Callback = function(value)
		print("Aimbot:", value)
	end
})

-- Add keybind to toggle
local AimbotKeybind = AimbotToggle:CreateKeybind({
	Default = Enum.KeyCode.X,
	Mode = "toggle",
	Callback = function(key)
		print("Aimbot keybind:", key)
	end
})

-- Add side menu to toggle
local AimbotSideMenu = AimbotToggle:CreateSideMenu("Aimbot Settings")
AimbotSideMenu:CreateToggle({
	Name = "Silent Aim",
	Default = false,
	Callback = function(v) print("Silent:", v) end
})
AimbotSideMenu:CreateDropdown({
	Name = "Priority",
	Items = {"Distance", "Health", "Threat"},
	Default = "Distance",
	Callback = function(v) print("Priority:", v) end
})
AimbotSideMenu:CreateSlider({
	Name = "Prediction",
	Min = 0,
	Max = 100,
	Default = 50,
	Callback = function(v) print("Prediction:", v) end
})

local AimbotTarget = AimbotSection:CreateDropdown({
	Name = "Target",
	Items = {"Head", "Torso", "Random"},
	Default = "Head",
	Subtab = "main",
	Callback = function(value)
		print("Target part:", value)
	end
})

local AimbotSmooth = AimbotSection:CreateSlider({
	Name = "Smoothness",
	Min = 0,
	Max = 100,
	Default = 50,
	Increment = 1,
	Subtab = "settings",
	Callback = function(value)
		print("Smoothness:", value)
	end
})

local ShowFOV = AimbotSection:CreateToggle({
	Name = "Show FOV",
	Default = true,
	Subtab = "fov",
	Callback = function(value)
		print("Show FOV:", value)
	end
})

-- Add keybind to ShowFOV toggle
local ShowFOVKeybind = ShowFOV:CreateKeybind({
	Default = Enum.KeyCode.F,
	Mode = "toggle",
	Callback = function(key)
		print("FOV Toggle Key:", key)
	end
})

local FOVSize = AimbotSection:CreateSlider({
	Name = "FOV Size",
	Min = 50,
	Max = 500,
	Default = 150,
	Increment = 5,
	Subtab = "fov",
	Callback = function(value)
		print("FOV Size:", value)
	end
})

local FOVColor = AimbotSection:CreateColorPicker({
	Name = "FOV Color",
	Default = Color3.fromRGB(255, 255, 255),
	Subtab = "fov",
	Callback = function(color)
		print("FOV Color:", color)
	end
})

local TriggerSection = CombatTab:CreateSection("trigger bot", nil, "right")

local TriggerBot = TriggerSection:CreateToggle({
	Name = "Enable",
	Default = false,
	Callback = function(value)
		print("Triggerbot:", value)
	end
})

-- Add keybind with hold mode
TriggerBot:CreateKeybind({
	Default = Enum.KeyCode.T,
	Mode = "hold",
	Callback = function(key)
		print("Trigger key:", key)
	end
})

local TriggerDelay = TriggerSection:CreateSlider({
	Name = "Delay (ms)",
	Min = 0,
	Max = 500,
	Default = 50,
	Increment = 10,
	Callback = function(value)
		print("Trigger Delay:", value)
	end
})

local ESPSection = VisualsTab:CreateSection("esp", {"players", "items", "colors"}, "left")

local PlayerESP = ESPSection:CreateToggle({
	Name = "Players",
	Default = false,
	Subtab = "players",
	Callback = function(value)
		print("Player ESP:", value)
	end
})

PlayerESP:CreateKeybind({
	Default = Enum.KeyCode.P,
	Mode = "toggle"
})

local ShowNames = ESPSection:CreateToggle({
	Name = "Names",
	Default = true,
	Subtab = "players",
	Callback = function(value)
		print("Show Names:", value)
	end
})

local ShowDistance = ESPSection:CreateToggle({
	Name = "Distance",
	Default = true,
	Subtab = "players",
	Callback = function(value)
		print("Show Distance:", value)
	end
})

local ShowHealth = ESPSection:CreateToggle({
	Name = "Health",
	Default = true,
	Subtab = "players",
	Callback = function(value)
		print("Show Health:", value)
	end
})

local ItemESP = ESPSection:CreateToggle({
	Name = "Items",
	Default = false,
	Subtab = "items",
	Callback = function(value)
		print("Item ESP:", value)
	end
})

local WeaponESP = ESPSection:CreateToggle({
	Name = "Weapons",
	Default = false,
	Subtab = "items",
	Callback = function(value)
		print("Weapon ESP:", value)
	end
})

local BoxColor = ESPSection:CreateColorPicker({
	Name = "Box Color",
	Default = Color3.fromRGB(255, 0, 0),
	Subtab = "colors",
	Callback = function(color)
		print("Box Color:", color)
	end
})

local NameColor = ESPSection:CreateColorPicker({
	Name = "Name Color",
	Default = Color3.fromRGB(255, 255, 255),
	Subtab = "colors",
	Callback = function(color)
		print("Name Color:", color)
	end
})

local ChamsSection = VisualsTab:CreateSection("chams", nil, "right")

local ChamsEnabled = ChamsSection:CreateToggle({
	Name = "Enable",
	Default = false,
	Callback = function(value)
		print("Chams:", value)
	end
})

ChamsEnabled:CreateKeybind({
	Default = Enum.KeyCode.C,
	Mode = "toggle"
})

local ChamsColor = ChamsSection:CreateColorPicker({
	Name = "Color",
	Default = Color3.fromRGB(0, 255, 0),
	Callback = function(color)
		print("Chams Color:", color)
	end
})

local ChamsTransparency = ChamsSection:CreateSlider({
	Name = "Transparency",
	Min = 0,
	Max = 100,
	Default = 50,
	Increment = 1,
	Callback = function(value)
		print("Transparency:", value / 100)
	end
})

local MovementSection = MiscTab:CreateSection("movement", nil, "left")

local SpeedHack = MovementSection:CreateToggle({
	Name = "Speed",
	Default = false,
	Callback = function(value)
		print("Speed Hack:", value)
		if value then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
		else
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end
	end
})

SpeedHack:CreateKeybind({
	Default = Enum.KeyCode.V,
	Mode = "toggle"
})

local SpeedValue = MovementSection:CreateSlider({
	Name = "Speed Value",
	Min = 16,
	Max = 200,
	Default = 32,
	Increment = 1,
	Callback = function(value)
		if SpeedHack.Value then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
		end
	end
})

local InfiniteJump = MovementSection:CreateToggle({
	Name = "Infinite Jump",
	Default = false,
	Callback = function(value)
		print("Infinite Jump:", value)
	end
})

local UtilitySection = MiscTab:CreateSection("utility", nil, "right")

local AntiAFK = UtilitySection:CreateToggle({
	Name = "Anti AFK",
	Default = false,
	Callback = function(value)
		print("Anti AFK:", value)
	end
})

local FullBright = UtilitySection:CreateToggle({
	Name = "Full Bright",
	Default = false,
	Callback = function(value)
		print("Full Bright:", value)
		if value then
			game.Lighting.Brightness = 2
			game.Lighting.ClockTime = 14
			game.Lighting.FogEnd = 100000
			game.Lighting.GlobalShadows = false
			game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		else
			game.Lighting.Brightness = 1
			game.Lighting.ClockTime = 12
			game.Lighting.FogEnd = 100000
			game.Lighting.GlobalShadows = true
			game.Lighting.OutdoorAmbient = Color3.fromRGB(127, 127, 127)
		end
	end
})

local PlayerNameBox = UtilitySection:CreateTextbox({
	Name = "Player Name",
	Default = "",
	Placeholder = "Enter name...",
	Callback = function(text, enterPressed)
		if enterPressed then
			print("Looking for player:", text)
		end
	end
})

local TeleportBtn = UtilitySection:CreateButton({
	Name = "Teleport to Player",
	Callback = function()
		local playerName = PlayerNameBox.Value
		local targetPlayer = game.Players:FindFirstChild(playerName)
		if targetPlayer and targetPlayer.Character then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 
				targetPlayer.Character.HumanoidRootPart.CFrame
			print("Teleported to:", playerName)
		else
			print("Player not found:", playerName)
		end
	end
})

local InfoSection = MiscTab:CreateSection("Info", nil, "left")

local info = InfoSection:CreateParagraph({
	Title = "About",
	Content = "This is a cool script made with Yerba UI library."
})

local bind = InfoSection:CreateKeybind({
	Name = "Toggle UI",
	Default = Enum.KeyCode.RightShift,
	Callback = function(key)
		print("Key pressed:", key)
	end
})

task.wait(2)
info:SetContent("Loading complete!")

local InfoLabel = UtilitySection:CreateLabel("Made with Yerba UI v1.4")

-- Add keybinds to display
KeybindsDisplay:AddKeybind("Aimbot", "X", "tog")
KeybindsDisplay:AddKeybind("ESP", "P", "tog")
KeybindsDisplay:AddKeybind("Trigger", "T", "hld")

print("Yerba UI v" .. Yerba.Version .. " loaded successfully!")
