--[[
    YERBA UI v1.4 - Complete Example Guide
    
    Creator: n-0clip
    GitHub: https://github.com/n-0clip/yerba-ui
    
    Load: local Yerba = loadstring(game:HttpGet("https://raw.githubusercontent.com/n-0clip/yerba-ui/main/yerba.luau"))()
    
    Hotkey: RightShift - Toggle UI
--]]

local Yerba = loadstring(game:HttpGet("https://raw.githubusercontent.com/n-0clip/yerba-ui/main/yerba.luau"))()


--[[
    CreateWindow(title, subtitle, options)
    
    Parameters:
    • title (string) - Window title
    • subtitle (string) - Version text
    • options (table)
        - Width (number) - Default: 620
        - Height (number) - Default: 480
    
    Returns: Window object
]]

local Window = Yerba:CreateWindow("My Script", "v1.0", {
    Width = 620,
    Height = 480
})


--[[
    CreateWatermark(options)
    
    Parameters:
    • Title (string) - Main title
    • Subtitle (string) - Secondary text
    
    Methods:
    • SetTitle(text) - Update title
    • SetSubtitle(text) - Update subtitle
    • Toggle(visible) - Show/hide
]]

local Watermark = Window:CreateWatermark({
    Title = "My Script",
    Subtitle = "Premium"
})


--[[
    CreateKeybindsDisplay()
    
    Methods:
    • AddKeybind(name, key, mode) - Add to display
        - mode: "tog" or "hld"
        - Returns: {Remove(), Update(key, mode)}
    • Toggle(visible) - Show/hide
]]

local KeybindsDisplay = Window:CreateKeybindsDisplay()


--[[
    CreateTab(name)
    
    Parameters:
    • name (string) - Tab name in topbar
    
    Returns: Tab object
]]

local CombatTab = Window:CreateTab("Combat")
local VisualsTab = Window:CreateTab("Visuals")
local PlayerTab = Window:CreateTab("Player")
local MiscTab = Window:CreateTab("Misc")


--[[
    CreatePlayerList(options)
    
    Parameters:
    • Side (string) - "left" or "right"
    • Gap (number) - Distance from window
    • Tab (Tab) - Show only on this tab
    • OnSpectate (function) - Spectate callback
    • OnTeleport (function) - Teleport callback
    
    Methods:
    • Refresh() - Refresh list
    • Toggle(visible) - Show/hide
    • SetSide(side) - Change position
    • SetTab(tab) - Link to tab
    • GetSelected() - Get selected player
]]

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


--[[
    CreateSection(name, subtabs, side)
    
    Parameters:
    • name (string) - Section header
    • subtabs (table/nil) - Array of subtab names
    • side (string/nil) - "left", "right", or nil for auto
    
    Returns: Section object
]]

local AimbotSection = CombatTab:CreateSection("Aimbot", {"Main", "Settings", "FOV"}, "left")
local WeaponsSection = CombatTab:CreateSection("Weapons", nil, "right")

local ESPSection = VisualsTab:CreateSection("ESP", {"Players", "World"}, "left")
local ChamsSection = VisualsTab:CreateSection("Chams", nil, "right")

local MovementSection = PlayerTab:CreateSection("Movement", nil, "left")
local CharacterSection = PlayerTab:CreateSection("Character", nil, "right")

local UtilitySection = MiscTab:CreateSection("Utility", nil, "left")
local InfoSection = MiscTab:CreateSection("Info", nil, "right")


--[[
    CreateToggle(options)
    
    Parameters:
    • Name (string) - Toggle label
    • Default (boolean) - Initial state
    • Subtab (string) - Target subtab
    • Callback (function) - Called with (enabled)
    
    Methods:
    • Set(value) - Set state
    • Get() - Get state
    • CreateKeybind(options) - Add keybind
    • CreateSideMenu(name) - Add side menu
]]

local AimbotEnabled = AimbotSection:CreateToggle({
    Name = "Enable Aimbot",
    Default = false,
    Subtab = "Main",
    Callback = function(enabled)
        print("Aimbot:", enabled)
    end
})


--[[
    Toggle:CreateKeybind(options)
    
    Parameters:
    • Default (Enum.KeyCode) - Default key
    • Mode (string) - "toggle" or "hold"
    • Callback (function) - Called with (key)
    
    Methods:
    • Set(key) - Change key
    • SetMode(mode) - Change mode
]]

local AimbotKey = AimbotEnabled:CreateKeybind({
    Default = Enum.KeyCode.X,
    Mode = "toggle",
    Callback = function(key)
        print("Aimbot key:", key.Name)
    end
})

KeybindsDisplay:AddKeybind("Aimbot", "X", "tog")


--[[
    Toggle:CreateSideMenu(name)
    
    Parameters:
    • name (string) - Menu header
    
    Returns: SideMenu with methods:
    • CreateToggle(options)
    • CreateDropdown(options)
    • CreateSlider(options)
]]

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

AimbotMenu:CreateDropdown({
    Name = "Priority",
    Items = {"Distance", "Health", "Threat"},
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


-- Toggle with Keybind + SideMenu combined

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
        print("TriggerBot holding:", key.Name)
    end
})

local TriggerMenu = TriggerBot:CreateSideMenu("Trigger Settings")
TriggerMenu:CreateSlider({
    Name = "Delay (ms)",
    Min = 0,
    Max = 500,
    Default = 50
})

KeybindsDisplay:AddKeybind("Trigger", "T", "hld")


--[[
    CreateDropdown(options)
    
    Parameters:
    • Name (string) - Dropdown label
    • Items (table) - Array of options
    • Default (string) - Initial selection
    • Subtab (string) - Target subtab
    • Callback (function) - Called with (selected)
    
    Methods:
    • Set(value) - Set selection
    • Refresh(newItems) - Update items
]]

local TargetPart = AimbotSection:CreateDropdown({
    Name = "Target Part",
    Items = {"Head", "Torso", "Closest"},
    Default = "Head",
    Subtab = "Main",
    Callback = function(selected)
        print("Target Part:", selected)
    end
})


--[[
    CreateMultiDropdown(options)
    
    Parameters:
    • Name (string) - Dropdown label
    • Items (table) - Array of options
    • Default (table) - Pre-selected items
    • Subtab (string) - Target subtab
    • Callback (function) - Called with (selectedArray)
    
    Methods:
    • Set(values) - Set selection array
    • Get() - Get selected array
]]

local HitboxParts = AimbotSection:CreateMultiDropdown({
    Name = "Hitbox Expand",
    Items = {"Head", "UpperTorso", "LowerTorso", "LeftArm", "RightArm"},
    Default = {"Head", "UpperTorso"},
    Subtab = "Settings",
    Callback = function(selected)
        print("Selected parts:", table.concat(selected, ", "))
    end
})


--[[
    CreateSlider(options)
    
    Parameters:
    • Name (string) - Slider label
    • Min (number) - Minimum value
    • Max (number) - Maximum value
    • Default (number) - Initial value
    • Increment (number) - Step size
    • Subtab (string) - Target subtab
    • Callback (function) - Called with (value)
    
    Methods:
    • Set(value) - Set value
]]

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


--[[
    CreateColorPicker(options)
    
    Parameters:
    • Name (string) - Label
    • Default (Color3) - Initial color
    • Subtab (string) - Target subtab
    • Callback (function) - Called with (color)
    
    Methods:
    • Set(color) - Set color
]]

local FOVColor = AimbotSection:CreateColorPicker({
    Name = "FOV Color",
    Default = Color3.fromRGB(255, 255, 255),
    Subtab = "FOV",
    Callback = function(color)
        print("FOV Color:", color)
    end
})


-- ESP Examples

local PlayerESP = ESPSection:CreateToggle({
    Name = "Player ESP",
    Default = false,
    Subtab = "Players",
    Callback = function(enabled)
        print("Player ESP:", enabled)
    end
})

PlayerESP:CreateKeybind({Default = Enum.KeyCode.E, Mode = "toggle"})
KeybindsDisplay:AddKeybind("ESP", "E", "tog")

local ESPFeatures = ESPSection:CreateMultiDropdown({
    Name = "Features",
    Items = {"Box", "Name", "Health", "Distance", "Weapon", "Skeleton"},
    Default = {"Box", "Name", "Health"},
    Subtab = "Players",
    Callback = function(selected)
        print("ESP Features:", table.concat(selected, ", "))
    end
})

local BoxColor = ESPSection:CreateColorPicker({
    Name = "Box Color",
    Default = Color3.fromRGB(255, 0, 0),
    Subtab = "Players",
    Callback = function(color)
        print("Box Color:", color)
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

local ESPDistance = ESPSection:CreateSlider({
    Name = "Max Distance",
    Min = 100,
    Max = 2000,
    Default = 1000,
    Increment = 50,
    Subtab = "World",
    Callback = function(value)
        print("ESP Distance:", value)
    end
})


-- Chams Examples

local ChamsEnabled = ChamsSection:CreateToggle({
    Name = "Enable Chams",
    Default = false,
    Callback = function(enabled)
        print("Chams:", enabled)
    end
})

local ChamsColor = ChamsSection:CreateColorPicker({
    Name = "Visible Color",
    Default = Color3.fromRGB(0, 255, 0),
    Callback = function(color)
        print("Chams Color:", color)
    end
})

local ChamsTransparency = ChamsSection:CreateSlider({
    Name = "Transparency",
    Min = 0,
    Max = 100,
    Default = 30,
    Increment = 5,
    Callback = function(value)
        print("Chams Transparency:", value / 100)
    end
})


-- Movement Examples

local SpeedEnabled = MovementSection:CreateToggle({
    Name = "Speed Hack",
    Default = false,
    Callback = function(enabled)
        if enabled then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
})

SpeedEnabled:CreateKeybind({Default = Enum.KeyCode.V, Mode = "toggle"})
KeybindsDisplay:AddKeybind("Speed", "V", "tog")

local SpeedValue = MovementSection:CreateSlider({
    Name = "Speed Value",
    Min = 16,
    Max = 200,
    Default = 50,
    Increment = 1,
    Callback = function(value)
        if SpeedEnabled:Get() then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end
    end
})

local FlyEnabled = MovementSection:CreateToggle({
    Name = "Fly",
    Default = false,
    Callback = function(enabled)
        print("Fly:", enabled)
    end
})

FlyEnabled:CreateKeybind({Default = Enum.KeyCode.F, Mode = "toggle"})

local FlySpeed = MovementSection:CreateSlider({
    Name = "Fly Speed",
    Min = 10,
    Max = 500,
    Default = 100,
    Increment = 10,
    Callback = function(value)
        print("Fly Speed:", value)
    end
})


-- Character Examples

local InfiniteJump = CharacterSection:CreateToggle({
    Name = "Infinite Jump",
    Default = false,
    Callback = function(enabled)
        print("Infinite Jump:", enabled)
    end
})

local NoClip = CharacterSection:CreateToggle({
    Name = "NoClip",
    Default = false,
    Callback = function(enabled)
        print("NoClip:", enabled)
    end
})

NoClip:CreateKeybind({Default = Enum.KeyCode.N, Mode = "hold"})
KeybindsDisplay:AddKeybind("NoClip", "N", "hld")

local GodMode = CharacterSection:CreateToggle({
    Name = "God Mode",
    Default = false,
    Callback = function(enabled)
        print("God Mode:", enabled)
    end
})


--[[
    CreateTextbox(options)
    
    Parameters:
    • Name (string) - Textbox label
    • Default (string) - Initial text
    • Placeholder (string) - Placeholder text
    • Subtab (string) - Target subtab
    • Callback (function) - Called with (text, enterPressed)
    
    Methods:
    • Set(value) - Set text
]]

local PlayerName = UtilitySection:CreateTextbox({
    Name = "Player Name",
    Default = "",
    Placeholder = "Enter name...",
    Callback = function(text, enterPressed)
        if enterPressed then
            print("Searching for:", text)
        end
    end
})


--[[
    CreateButton(options)
    
    Parameters:
    • Name (string) - Button text
    • Subtab (string) - Target subtab
    • Callback (function) - Called on click
    
    Methods:
    • SetText(text) - Update text
    • SetCallback(callback) - Update callback
]]

local TeleportButton = UtilitySection:CreateButton({
    Name = "Teleport to Player",
    Callback = function()
        local targetName = PlayerName.Value
        local targetPlayer = game.Players:FindFirstChild(targetName)
        
        if targetPlayer and targetPlayer.Character then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 
                targetPlayer.Character.HumanoidRootPart.CFrame
            print("Teleported to:", targetName)
        else
            print("Player not found:", targetName)
        end
    end
})

local RejoinButton = UtilitySection:CreateButton({
    Name = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
})


--[[
    CreateLabel(text, subtab)
    
    Parameters:
    • text (string) - Label text
    • subtab (string) - Target subtab
    
    Methods:
    • Set(text) - Update text
]]

local StatusLabel = UtilitySection:CreateLabel("Status: Idle")

local AntiAFK = UtilitySection:CreateToggle({
    Name = "Anti AFK",
    Default = false,
    Callback = function(enabled)
        if enabled then
            StatusLabel:Set("Status: Anti-AFK Active")
        else
            StatusLabel:Set("Status: Idle")
        end
    end
})


--[[
    CreateParagraph(options)
    
    Parameters:
    • Title (string) - Paragraph title
    • Content (string) - Paragraph text
    • Subtab (string) - Target subtab
    
    Methods:
    • SetTitle(text) - Update title
    • SetContent(text) - Update content
]]

local AboutParagraph = InfoSection:CreateParagraph({
    Title = "About This Script",
    Content = "This script was created using Yerba UI v1.4.\n\nFeatures advanced combat, visuals, and utility functions.\n\nUse responsibly!"
})

local CreditsParagraph = InfoSection:CreateParagraph({
    Title = "Credits",
    Content = "UI Library: n-0clip\nScript: Your Name"
})


--[[
    CreateKeybind(options) - Standalone
    
    Parameters:
    • Name (string) - Keybind label
    • Default (Enum.KeyCode) - Default key
    • Subtab (string) - Target subtab
    • Callback (function) - Called with (key)
    
    Methods:
    • Set(key) - Change key
]]

local UIToggleKeybind = InfoSection:CreateKeybind({
    Name = "Toggle UI",
    Default = Enum.KeyCode.RightShift,
    Callback = function(key)
        print("UI Toggle key:", key.Name)
    end
})
