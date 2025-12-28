--[[
    Creator: n-0clip
    GitHub: https://github.com/n-0clip/yerba-ui
    
    Hotkey: RightShift - Toggle UI
--]]

local Yerba = loadstring(game:HttpGet("https://raw.githubusercontent.com/n-0clip/yerba-ui/main/yerba.luau"))()

local Window = Yerba:CreateWindow("My Script", "v1.0", {
	Width = 620,
	Height = 480,
    Logo = "rbxassetid://95816097006870"
})

local Watermark = Window:CreateWatermark({
	Title = "My Script",
	Subtitle = "Premium"
})

local KeybindsDisplay = Window:CreateKeybindsDisplay()

local CombatTab = Window:CreateTab("Combat")
local VisualsTab = Window:CreateTab("Visuals")
local PlayerTab = Window:CreateTab("Player")
local MiscTab = Window:CreateTab("Misc")
local SettingsTab = Window:CreateTab("Settings")

local PlayerList = Window:CreatePlayerList({
	Side = "right",
	Gap = 10,
	Tab = PlayerTab,
	OnSpectate = function(player)
		if player.Character and player.Character:FindFirstChild("Humanoid") then
			workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
		end
	end,
	OnTeleport = function(player)
		if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 
				player.Character.HumanoidRootPart.CFrame
		end
	end
})

local AimbotSection = CombatTab:CreateSection("Aimbot", {"Main", "Settings", "FOV"}, "left")
local WeaponsSection = CombatTab:CreateSection("Weapons", {"General", "Recoil"}, "right")
local RageSection = CombatTab:CreateSection("Rage", nil, "left")
local AntiAimSection = CombatTab:CreateSection("Anti Aim", nil, "right")

local ESPSection = VisualsTab:CreateSection("ESP", {"Players", "World", "Colors"}, "left")
local ChamsSection = VisualsTab:CreateSection("Chams", {"Settings", "Colors"}, "right")
local WorldSection = VisualsTab:CreateSection("World", nil, "left")
local EffectsSection = VisualsTab:CreateSection("Effects", nil, "right")

local MovementSection = PlayerTab:CreateSection("Movement", {"Speed", "Fly"}, "left")
local CharacterSection = PlayerTab:CreateSection("Character", nil, "right")
local TeleportSection = PlayerTab:CreateSection("Teleport", nil, "left")
local BToolsSection = PlayerTab:CreateSection("BTools", nil, "right")

local UtilitySection = MiscTab:CreateSection("Utility", nil, "left")
local ServerSection = MiscTab:CreateSection("Server", nil, "right")
local FunSection = MiscTab:CreateSection("Fun", nil, "left")
local AutoSection = MiscTab:CreateSection("Auto Farm", nil, "right")

local ThemeSection = SettingsTab:CreateSection("Theme", nil, "left")
local ConfigSection = SettingsTab:CreateSection("Config", nil, "right")
local InfoSection = SettingsTab:CreateSection("Info", nil, "left")

local AimbotEnabled = AimbotSection:CreateToggle({
	Name = "Enable Aimbot",
	Default = false,
	Subtab = "Main",
	Callback = function(enabled)
		print("Aimbot:", enabled)
	end
})

local AimbotKey = AimbotEnabled:CreateKeybind({
	Default = Enum.KeyCode.X,
	Mode = "toggle",
	Callback = function(key)
		print("Aimbot key:", key.Name)
	end
})

local AimbotMenu = AimbotEnabled:CreateSideMenu("Aimbot Settings")

AimbotMenu:CreateToggle({
	Name = "Silent Aim",
	Default = false,
	Callback = function(enabled)
		print("Silent Aim:", enabled)
	end
})

AimbotMenu:CreateToggle({
	Name = "Visible Check",
	Default = true,
	Callback = function(enabled)
		print("Visible Check:", enabled)
	end
})

AimbotMenu:CreateToggle({
	Name = "Team Check",
	Default = true,
	Callback = function(enabled)
		print("Team Check:", enabled)
	end
})

AimbotMenu:CreateDropdown({
	Name = "Priority",
	Items = {"Distance", "Health", "Threat", "FOV"},
	Default = "Distance",
	Callback = function(selected)
		print("Priority:", selected)
	end
})

AimbotMenu:CreateSlider({
	Name = "Prediction",
	Min = 0,
	Max = 100,
	Default = 50,
	Increment = 5,
	Callback = function(value)
		print("Prediction:", value)
	end
})

AimbotMenu:CreateSlider({
	Name = "Hit Chance",
	Min = 0,
	Max = 100,
	Default = 100,
	Increment = 1,
	Callback = function(value)
		print("Hit Chance:", value)
	end
})

KeybindsDisplay:AddKeybind("Aimbot", "X", "tog")

local TriggerBot = AimbotSection:CreateToggle({
	Name = "Trigger Bot",
	Default = false,
	Subtab = "Main",
	Callback = function(enabled)
		print("TriggerBot:", enabled)
	end
})

TriggerBot:CreateKeybind({
	Default = Enum.KeyCode.T,
	Mode = "hold",
	Callback = function(key)
		print("TriggerBot:", key.Name)
	end
})

local TriggerMenu = TriggerBot:CreateSideMenu("Trigger Settings")

TriggerMenu:CreateSlider({
	Name = "Delay (ms)",
	Min = 0,
	Max = 500,
	Default = 50,
	Increment = 10,
	Callback = function(value)
		print("Trigger Delay:", value)
	end
})

TriggerMenu:CreateToggle({
	Name = "Head Only",
	Default = false,
	Callback = function(enabled)
		print("Head Only:", enabled)
	end
})

KeybindsDisplay:AddKeybind("Trigger", "T", "hld")

local TargetPart = AimbotSection:CreateDropdown({
	Name = "Target Part",
	Items = {"Head", "Torso", "Closest", "Random"},
	Default = "Head",
	Subtab = "Main",
	Callback = function(selected)
		print("Target Part:", selected)
	end
})

local AimType = AimbotSection:CreateDropdown({
	Name = "Aim Type",
	Items = {"Mouse", "Camera", "Silent"},
	Default = "Mouse",
	Subtab = "Main",
	Callback = function(selected)
		print("Aim Type:", selected)
	end
})

local Smoothness = AimbotSection:CreateSlider({
	Name = "Smoothness",
	Min = 1,
	Max = 100,
	Default = 50,
	Increment = 1,
	Subtab = "Settings",
	Callback = function(value)
		print("Smoothness:", value)
	end
})

local MaxDistance = AimbotSection:CreateSlider({
	Name = "Max Distance",
	Min = 100,
	Max = 2000,
	Default = 500,
	Increment = 50,
	Subtab = "Settings",
	Callback = function(value)
		print("Max Distance:", value)
	end
})

local HitboxParts = AimbotSection:CreateMultiDropdown({
	Name = "Hitbox Expand",
	Items = {"Head", "UpperTorso", "LowerTorso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"},
	Default = {"Head", "UpperTorso"},
	Subtab = "Settings",
	Callback = function(selected)
		print("Hitbox:", table.concat(selected, ", "))
	end
})

local ShowFOV = AimbotSection:CreateToggle({
	Name = "Show FOV Circle",
	Default = true,
	Subtab = "FOV",
	Callback = function(enabled)
		print("Show FOV:", enabled)
	end
})

local FOVSize = AimbotSection:CreateSlider({
	Name = "FOV Size",
	Min = 50,
	Max = 500,
	Default = 150,
	Increment = 10,
	Subtab = "FOV",
	Callback = function(value)
		print("FOV Size:", value)
	end
})

local FOVColor = AimbotSection:CreateColorPicker({
	Name = "FOV Color",
	Default = Color3.fromRGB(255, 255, 255),
	Subtab = "FOV",
	Callback = function(color)
		print("FOV Color:", color)
	end
})

local FOVFilled = AimbotSection:CreateToggle({
	Name = "FOV Filled",
	Default = false,
	Subtab = "FOV",
	Callback = function(enabled)
		print("FOV Filled:", enabled)
	end
})

local NoRecoil = WeaponsSection:CreateToggle({
	Name = "No Recoil",
	Default = false,
	Subtab = "General",
	Callback = function(enabled)
		print("No Recoil:", enabled)
	end
})

local NoSpread = WeaponsSection:CreateToggle({
	Name = "No Spread",
	Default = false,
	Subtab = "General",
	Callback = function(enabled)
		print("No Spread:", enabled)
	end
})

local InfiniteAmmo = WeaponsSection:CreateToggle({
	Name = "Infinite Ammo",
	Default = false,
	Subtab = "General",
	Callback = function(enabled)
		print("Infinite Ammo:", enabled)
	end
})

local RapidFire = WeaponsSection:CreateToggle({
	Name = "Rapid Fire",
	Default = false,
	Subtab = "General",
	Callback = function(enabled)
		print("Rapid Fire:", enabled)
	end
})

local AutoReload = WeaponsSection:CreateToggle({
	Name = "Auto Reload",
	Default = false,
	Subtab = "General",
	Callback = function(enabled)
		print("Auto Reload:", enabled)
	end
})

local RecoilX = WeaponsSection:CreateSlider({
	Name = "Recoil X",
	Min = 0,
	Max = 100,
	Default = 0,
	Increment = 5,
	Subtab = "Recoil",
	Callback = function(value)
		print("Recoil X:", value)
	end
})

local RecoilY = WeaponsSection:CreateSlider({
	Name = "Recoil Y",
	Min = 0,
	Max = 100,
	Default = 0,
	Increment = 5,
	Subtab = "Recoil",
	Callback = function(value)
		print("Recoil Y:", value)
	end
})

local RageBot = RageSection:CreateToggle({
	Name = "Rage Bot",
	Default = false,
	Callback = function(enabled)
		print("Rage Bot:", enabled)
	end
})

RageBot:CreateKeybind({
	Default = Enum.KeyCode.R,
	Mode = "toggle"
})

local AutoShoot = RageSection:CreateToggle({
	Name = "Auto Shoot",
	Default = false,
	Callback = function(enabled)
		print("Auto Shoot:", enabled)
	end
})

local AutoWall = RageSection:CreateToggle({
	Name = "Auto Wall",
	Default = false,
	Callback = function(enabled)
		print("Auto Wall:", enabled)
	end
})

local MinDamage = RageSection:CreateSlider({
	Name = "Min Damage",
	Min = 1,
	Max = 100,
	Default = 10,
	Increment = 1,
	Callback = function(value)
		print("Min Damage:", value)
	end
})

local AntiAimEnabled = AntiAimSection:CreateToggle({
	Name = "Enable Anti Aim",
	Default = false,
	Callback = function(enabled)
		print("Anti Aim:", enabled)
	end
})

local AntiAimType = AntiAimSection:CreateDropdown({
	Name = "Type",
	Items = {"Spin", "Jitter", "Random", "Static"},
	Default = "Spin",
	Callback = function(selected)
		print("Anti Aim Type:", selected)
	end
})

local SpinSpeed = AntiAimSection:CreateSlider({
	Name = "Spin Speed",
	Min = 1,
	Max = 50,
	Default = 10,
	Increment = 1,
	Callback = function(value)
		print("Spin Speed:", value)
	end
})

local PlayerESP = ESPSection:CreateToggle({
	Name = "Player ESP",
	Default = false,
	Subtab = "Players",
	Callback = function(enabled)
		print("Player ESP:", enabled)
	end
})

PlayerESP:CreateKeybind({
	Default = Enum.KeyCode.E,
	Mode = "toggle"
})

local ESPMenu = PlayerESP:CreateSideMenu("ESP Settings")

ESPMenu:CreateToggle({
	Name = "Team Check",
	Default = true,
	Callback = function(enabled)
		print("ESP Team Check:", enabled)
	end
})

ESPMenu:CreateToggle({
	Name = "Show Self",
	Default = false,
	Callback = function(enabled)
		print("Show Self:", enabled)
	end
})

ESPMenu:CreateSlider({
	Name = "Max Distance",
	Min = 100,
	Max = 5000,
	Default = 2000,
	Increment = 100,
	Callback = function(value)
		print("ESP Distance:", value)
	end
})

KeybindsDisplay:AddKeybind("ESP", "E", "tog")

local ESPFeatures = ESPSection:CreateMultiDropdown({
	Name = "Features",
	Items = {"Box", "Name", "Health", "Distance", "Weapon", "Skeleton", "Tracers", "HeadDot"},
	Default = {"Box", "Name", "Health"},
	Subtab = "Players",
	Callback = function(selected)
		print("ESP Features:", table.concat(selected, ", "))
	end
})

local BoxType = ESPSection:CreateDropdown({
	Name = "Box Type",
	Items = {"2D", "3D", "Corner"},
	Default = "2D",
	Subtab = "Players",
	Callback = function(selected)
		print("Box Type:", selected)
	end
})

local HealthBarPos = ESPSection:CreateDropdown({
	Name = "Health Bar",
	Items = {"Left", "Right", "Top", "Bottom", "None"},
	Default = "Left",
	Subtab = "Players",
	Callback = function(selected)
		print("Health Bar:", selected)
	end
})

local ItemESP = ESPSection:CreateToggle({
	Name = "Item ESP",
	Default = false,
	Subtab = "World",
	Callback = function(enabled)
		print("Item ESP:", enabled)
	end
})

local WeaponESP = ESPSection:CreateToggle({
	Name = "Weapon ESP",
	Default = false,
	Subtab = "World",
	Callback = function(enabled)
		print("Weapon ESP:", enabled)
	end
})

local VehicleESP = ESPSection:CreateToggle({
	Name = "Vehicle ESP",
	Default = false,
	Subtab = "World",
	Callback = function(enabled)
		print("Vehicle ESP:", enabled)
	end
})

local NPCESP = ESPSection:CreateToggle({
	Name = "NPC ESP",
	Default = false,
	Subtab = "World",
	Callback = function(enabled)
		print("NPC ESP:", enabled)
	end
})

local ObjectFilter = ESPSection:CreateMultiDropdown({
	Name = "Object Filter",
	Items = {"Weapons", "Ammo", "Health", "Armor", "Keys", "Money"},
	Default = {"Weapons", "Health"},
	Subtab = "World",
	Callback = function(selected)
		print("Object Filter:", table.concat(selected, ", "))
	end
})

local BoxColor = ESPSection:CreateColorPicker({
	Name = "Box Color",
	Default = Color3.fromRGB(255, 0, 0),
	Subtab = "Colors",
	Callback = function(color)
		print("Box Color:", color)
	end
})

local NameColor = ESPSection:CreateColorPicker({
	Name = "Name Color",
	Default = Color3.fromRGB(255, 255, 255),
	Subtab = "Colors",
	Callback = function(color)
		print("Name Color:", color)
	end
})

local TracerColor = ESPSection:CreateColorPicker({
	Name = "Tracer Color",
	Default = Color3.fromRGB(0, 255, 0),
	Subtab = "Colors",
	Callback = function(color)
		print("Tracer Color:", color)
	end
})

local TeamColor = ESPSection:CreateToggle({
	Name = "Use Team Colors",
	Default = false,
	Subtab = "Colors",
	Callback = function(enabled)
		print("Team Colors:", enabled)
	end
})

local ChamsEnabled = ChamsSection:CreateToggle({
	Name = "Enable Chams",
	Default = false,
	Subtab = "Settings",
	Callback = function(enabled)
		print("Chams:", enabled)
	end
})

ChamsEnabled:CreateKeybind({
	Default = Enum.KeyCode.C,
	Mode = "toggle"
})

KeybindsDisplay:AddKeybind("Chams", "C", "tog")

local ChamsType = ChamsSection:CreateDropdown({
	Name = "Chams Type",
	Items = {"Flat", "Shaded", "ForceField", "Glass"},
	Default = "Flat",
	Subtab = "Settings",
	Callback = function(selected)
		print("Chams Type:", selected)
	end
})

local ChamsTransparency = ChamsSection:CreateSlider({
	Name = "Transparency",
	Min = 0,
	Max = 100,
	Default = 30,
	Increment = 5,
	Subtab = "Settings",
	Callback = function(value)
		print("Chams Transparency:", value / 100)
	end
})

local ChamsTeamCheck = ChamsSection:CreateToggle({
	Name = "Team Check",
	Default = true,
	Subtab = "Settings",
	Callback = function(enabled)
		print("Chams Team Check:", enabled)
	end
})

local VisibleColor = ChamsSection:CreateColorPicker({
	Name = "Visible Color",
	Default = Color3.fromRGB(0, 255, 0),
	Subtab = "Colors",
	Callback = function(color)
		print("Visible Color:", color)
	end
})

local HiddenColor = ChamsSection:CreateColorPicker({
	Name = "Hidden Color",
	Default = Color3.fromRGB(255, 0, 0),
	Subtab = "Colors",
	Callback = function(color)
		print("Hidden Color:", color)
	end
})

local FullBright = WorldSection:CreateToggle({
	Name = "Full Bright",
	Default = false,
	Callback = function(enabled)
		if enabled then
			game.Lighting.Brightness = 2
			game.Lighting.ClockTime = 14
			game.Lighting.FogEnd = 100000
			game.Lighting.GlobalShadows = false
		else
			game.Lighting.Brightness = 1
			game.Lighting.ClockTime = 12
			game.Lighting.FogEnd = 100000
			game.Lighting.GlobalShadows = true
		end
	end
})

local NoFog = WorldSection:CreateToggle({
	Name = "No Fog",
	Default = false,
	Callback = function(enabled)
		if enabled then
			game.Lighting.FogEnd = 999999
		else
			game.Lighting.FogEnd = 100000
		end
	end
})

local NoParticles = WorldSection:CreateToggle({
	Name = "No Particles",
	Default = false,
	Callback = function(enabled)
		print("No Particles:", enabled)
	end
})

local DayTime = WorldSection:CreateSlider({
	Name = "Time of Day",
	Min = 0,
	Max = 24,
	Default = 12,
	Increment = 1,
	Callback = function(value)
		game.Lighting.ClockTime = value
	end
})

local Ambient = WorldSection:CreateColorPicker({
	Name = "Ambient Color",
	Default = Color3.fromRGB(127, 127, 127),
	Callback = function(color)
		game.Lighting.Ambient = color
	end
})

local ThirdPerson = EffectsSection:CreateToggle({
	Name = "Third Person",
	Default = false,
	Callback = function(enabled)
		print("Third Person:", enabled)
	end
})

local FOVChanger = EffectsSection:CreateSlider({
	Name = "Field of View",
	Min = 30,
	Max = 120,
	Default = 70,
	Increment = 5,
	Callback = function(value)
		workspace.CurrentCamera.FieldOfView = value
	end
})

local Crosshair = EffectsSection:CreateToggle({
	Name = "Custom Crosshair",
	Default = false,
	Callback = function(enabled)
		print("Crosshair:", enabled)
	end
})

local CrosshairColor = EffectsSection:CreateColorPicker({
	Name = "Crosshair Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(color)
		print("Crosshair Color:", color)
	end
})

local CrosshairSize = EffectsSection:CreateSlider({
	Name = "Crosshair Size",
	Min = 1,
	Max = 20,
	Default = 5,
	Increment = 1,
	Callback = function(value)
		print("Crosshair Size:", value)
	end
})

local SpeedEnabled = MovementSection:CreateToggle({
	Name = "Speed Hack",
	Default = false,
	Subtab = "Speed",
	Callback = function(enabled)
		if enabled then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
		else
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end
	end
})

SpeedEnabled:CreateKeybind({
	Default = Enum.KeyCode.V,
	Mode = "toggle"
})

KeybindsDisplay:AddKeybind("Speed", "V", "tog")

local SpeedValue = MovementSection:CreateSlider({
	Name = "Speed Value",
	Min = 16,
	Max = 200,
	Default = 50,
	Increment = 1,
	Subtab = "Speed",
	Callback = function(value)
		if SpeedEnabled:Get() then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
		end
	end
})

local SpeedMethod = MovementSection:CreateDropdown({
	Name = "Speed Method",
	Items = {"WalkSpeed", "CFrame", "Velocity"},
	Default = "WalkSpeed",
	Subtab = "Speed",
	Callback = function(selected)
		print("Speed Method:", selected)
	end
})

local FlyEnabled = MovementSection:CreateToggle({
	Name = "Fly",
	Default = false,
	Subtab = "Fly",
	Callback = function(enabled)
		print("Fly:", enabled)
	end
})

FlyEnabled:CreateKeybind({
	Default = Enum.KeyCode.F,
	Mode = "toggle"
})

KeybindsDisplay:AddKeybind("Fly", "F", "tog")

local FlySpeed = MovementSection:CreateSlider({
	Name = "Fly Speed",
	Min = 10,
	Max = 500,
	Default = 100,
	Increment = 10,
	Subtab = "Fly",
	Callback = function(value)
		print("Fly Speed:", value)
	end
})

local FlyMethod = MovementSection:CreateDropdown({
	Name = "Fly Method",
	Items = {"BodyVelocity", "CFrame", "Platform"},
	Default = "BodyVelocity",
	Subtab = "Fly",
	Callback = function(selected)
		print("Fly Method:", selected)
	end
})

local InfiniteJump = CharacterSection:CreateToggle({
	Name = "Infinite Jump",
	Default = false,
	Callback = function(enabled)
		print("Infinite Jump:", enabled)
	end
})

InfiniteJump:CreateKeybind({
	Default = Enum.KeyCode.J,
	Mode = "toggle"
})

local NoClip = CharacterSection:CreateToggle({
	Name = "NoClip",
	Default = false,
	Callback = function(enabled)
		print("NoClip:", enabled)
	end
})

NoClip:CreateKeybind({
	Default = Enum.KeyCode.N,
	Mode = "hold"
})

KeybindsDisplay:AddKeybind("NoClip", "N", "hld")

local GodMode = CharacterSection:CreateToggle({
	Name = "God Mode",
	Default = false,
	Callback = function(enabled)
		print("God Mode:", enabled)
	end
})

local NoFallDamage = CharacterSection:CreateToggle({
	Name = "No Fall Damage",
	Default = false,
	Callback = function(enabled)
		print("No Fall Damage:", enabled)
	end
})

local NoRagdoll = CharacterSection:CreateToggle({
	Name = "No Ragdoll",
	Default = false,
	Callback = function(enabled)
		print("No Ragdoll:", enabled)
	end
})

local JumpPower = CharacterSection:CreateSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 200,
	Default = 50,
	Increment = 5,
	Callback = function(value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	end
})

local Gravity = CharacterSection:CreateSlider({
	Name = "Gravity",
	Min = 0,
	Max = 500,
	Default = 196,
	Increment = 10,
	Callback = function(value)
		workspace.Gravity = value
	end
})

local PlayerName = TeleportSection:CreateTextbox({
	Name = "Player Name",
	Default = "",
	Placeholder = "Enter name...",
	Callback = function(text, enterPressed)
		if enterPressed then
			print("Searching:", text)
		end
	end
})

local TeleportButton = TeleportSection:CreateButton({
	Name = "Teleport to Player",
	Callback = function()
		local targetName = PlayerName.Value
		local targetPlayer = game.Players:FindFirstChild(targetName)

		if targetPlayer and targetPlayer.Character then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 
				targetPlayer.Character.HumanoidRootPart.CFrame
		end
	end
})

local SavePosition = TeleportSection:CreateButton({
	Name = "Save Position",
	Callback = function()
		print("Position saved!")
	end
})

local LoadPosition = TeleportSection:CreateButton({
	Name = "Load Position",
	Callback = function()
		print("Position loaded!")
	end
})

local TeleportLocations = TeleportSection:CreateDropdown({
	Name = "Locations",
	Items = {"Spawn", "Shop", "Arena", "Safe Zone", "Boss"},
	Default = "Spawn",
	Callback = function(selected)
		print("Selected location:", selected)
	end
})

local TeleportToLocation = TeleportSection:CreateButton({
	Name = "Teleport to Location",
	Callback = function()
		print("Teleporting to location...")
	end
})

local DeleteTool = BToolsSection:CreateToggle({
	Name = "Delete Tool",
	Default = false,
	Callback = function(enabled)
		print("Delete Tool:", enabled)
	end
})

local CloneTool = BToolsSection:CreateToggle({
	Name = "Clone Tool",
	Default = false,
	Callback = function(enabled)
		print("Clone Tool:", enabled)
	end
})

local MoveTool = BToolsSection:CreateToggle({
	Name = "Move Tool",
	Default = false,
	Callback = function(enabled)
		print("Move Tool:", enabled)
	end
})

local ClickTP = BToolsSection:CreateToggle({
	Name = "Click Teleport",
	Default = false,
	Callback = function(enabled)
		print("Click TP:", enabled)
	end
})

ClickTP:CreateKeybind({
	Default = Enum.KeyCode.Q,
	Mode = "hold"
})

local AntiAFK = UtilitySection:CreateToggle({
	Name = "Anti AFK",
	Default = false,
	Callback = function(enabled)
		print("Anti AFK:", enabled)
	end
})

local FreeCamera = UtilitySection:CreateToggle({
	Name = "Free Camera",
	Default = false,
	Callback = function(enabled)
		print("Free Camera:", enabled)
	end
})

FreeCamera:CreateKeybind({
	Default = Enum.KeyCode.P,
	Mode = "toggle"
})

local MouseUnlock = UtilitySection:CreateToggle({
	Name = "Mouse Unlock",
	Default = false,
	Callback = function(enabled)
		print("Mouse Unlock:", enabled)
	end
})

local HideName = UtilitySection:CreateToggle({
	Name = "Hide Name",
	Default = false,
	Callback = function(enabled)
		print("Hide Name:", enabled)
	end
})

local SpamChat = UtilitySection:CreateToggle({
	Name = "Chat Spam",
	Default = false,
	Callback = function(enabled)
		print("Chat Spam:", enabled)
	end
})

local SpamMessage = UtilitySection:CreateTextbox({
	Name = "Spam Message",
	Default = "",
	Placeholder = "Message...",
	Callback = function(text)
		print("Spam Message:", text)
	end
})

local RejoinButton = ServerSection:CreateButton({
	Name = "Rejoin Server",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
})

local ServerHop = ServerSection:CreateButton({
	Name = "Server Hop",
	Callback = function()
		print("Server hopping...")
	end
})

local CopyServerID = ServerSection:CreateButton({
	Name = "Copy Server ID",
	Callback = function()
		setclipboard(game.JobId)
		print("Server ID copied!")
	end
})

local ServerInfo = ServerSection:CreateLabel("Players: 0/0")

local PlayerCount = ServerSection:CreateLabel("Ping: 0ms")

local SpinBot = FunSection:CreateToggle({
	Name = "Spin Bot",
	Default = false,
	Callback = function(enabled)
		print("Spin Bot:", enabled)
	end
})

local SpinSpeed = FunSection:CreateSlider({
	Name = "Spin Speed",
	Min = 1,
	Max = 50,
	Default = 10,
	Increment = 1,
	Callback = function(value)
		print("Spin Speed:", value)
	end
})

local HeadSize = FunSection:CreateToggle({
	Name = "Big Head",
	Default = false,
	Callback = function(enabled)
		print("Big Head:", enabled)
	end
})

local Invisible = FunSection:CreateToggle({
	Name = "Invisible",
	Default = false,
	Callback = function(enabled)
		print("Invisible:", enabled)
	end
})

local Fling = FunSection:CreateToggle({
	Name = "Fling",
	Default = false,
	Callback = function(enabled)
		print("Fling:", enabled)
	end
})

Fling:CreateKeybind({
	Default = Enum.KeyCode.G,
	Mode = "hold"
})

local AutoFarm = AutoSection:CreateToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(enabled)
		print("Auto Farm:", enabled)
	end
})

AutoFarm:CreateKeybind({
	Default = Enum.KeyCode.B,
	Mode = "toggle"
})

local AutoFarmMenu = AutoFarm:CreateSideMenu("Farm Settings")

AutoFarmMenu:CreateToggle({
	Name = "Auto Collect",
	Default = true,
	Callback = function(enabled)
		print("Auto Collect:", enabled)
	end
})

AutoFarmMenu:CreateToggle({
	Name = "Auto Sell",
	Default = false,
	Callback = function(enabled)
		print("Auto Sell:", enabled)
	end
})

AutoFarmMenu:CreateSlider({
	Name = "Delay (ms)",
	Min = 0,
	Max = 1000,
	Default = 100,
	Increment = 50,
	Callback = function(value)
		print("Farm Delay:", value)
	end
})

local FarmTarget = AutoSection:CreateDropdown({
	Name = "Farm Target",
	Items = {"Coins", "Gems", "Items", "Kills", "All"},
	Default = "All",
	Callback = function(selected)
		print("Farm Target:", selected)
	end
})

local AutoQuest = AutoSection:CreateToggle({
	Name = "Auto Quest",
	Default = false,
	Callback = function(enabled)
		print("Auto Quest:", enabled)
	end
})

local AutoBuy = AutoSection:CreateToggle({
	Name = "Auto Buy",
	Default = false,
	Callback = function(enabled)
		print("Auto Buy:", enabled)
	end
})

local AccentColor = ThemeSection:CreateColorPicker({
	Name = "Accent Color",
	Default = Color3.fromRGB(67, 144, 186),
	Callback = function(color)
		print("Accent Color:", color)
	end
})

local BackgroundColor = ThemeSection:CreateColorPicker({
	Name = "Background Color",
	Default = Color3.fromRGB(12, 15, 13),
	Callback = function(color)
		print("Background Color:", color)
	end
})

local UIScale = ThemeSection:CreateSlider({
	Name = "UI Scale",
	Min = 50,
	Max = 150,
	Default = 100,
	Increment = 5,
	Callback = function(value)
		print("UI Scale:", value / 100)
	end
})

local ConfigName = ConfigSection:CreateTextbox({
	Name = "Config Name",
	Default = "default",
	Placeholder = "Config name...",
	Callback = function(text)
		print("Config Name:", text)
	end
})

local SaveConfig = ConfigSection:CreateButton({
	Name = "Save Config",
	Callback = function()
		print("Config saved!")
	end
})

local LoadConfig = ConfigSection:CreateButton({
	Name = "Load Config",
	Callback = function()
		print("Config loaded!")
	end
})

local DeleteConfig = ConfigSection:CreateButton({
	Name = "Delete Config",
	Callback = function()
		print("Config deleted!")
	end
})

local ConfigList = ConfigSection:CreateDropdown({
	Name = "Config List",
	Items = {"default", "rage", "legit", "hvh"},
	Default = "default",
	Callback = function(selected)
		print("Selected config:", selected)
	end
})

local AutoLoad = ConfigSection:CreateToggle({
	Name = "Auto Load Config",
	Default = false,
	Callback = function(enabled)
		print("Auto Load:", enabled)
	end
})

local AboutParagraph = InfoSection:CreateParagraph({
	Title = "About",
	Content = "Yerba UI v1.4\n\nA modern, feature-rich UI library for Roblox scripts.\n\nCreated by n-0clip"
})

local HotkeyInfo = InfoSection:CreateParagraph({
	Title = "Hotkeys",
	Content = "RightShift - Toggle UI\nCheck keybinds display for more"
})

local UIToggle = InfoSection:CreateKeybind({
	Name = "Toggle UI",
	Default = Enum.KeyCode.RightShift,
	Callback = function(key)
		print("UI Toggle:", key.Name)
	end
})

local UnloadScript = InfoSection:CreateButton({
	Name = "Unload Script",
	Callback = function()
		Window:Destroy()
	end
})

print("Script loaded successfully!")
print("Press RightShift to toggle UI")
