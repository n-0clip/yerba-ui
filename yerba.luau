--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 315 | Scripts: 0 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.Core
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Enabled"] = false;
G2L["1"]["Name"] = [[Core]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.Core.Elements
G2L["2"] = Instance.new("Folder", G2L["1"]);
G2L["2"]["Name"] = [[Elements]];


-- StarterGui.Core.Elements.PlusMenu
G2L["3"] = Instance.new("Folder", G2L["2"]);
G2L["3"]["Name"] = [[PlusMenu]];


-- StarterGui.Core.Elements.PlusMenu.MainFrame
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["ZIndex"] = 2;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["4"]["ClipsDescendants"] = true;
G2L["4"]["Size"] = UDim2.new(0, 208, 0, 215);
G2L["4"]["Position"] = UDim2.new(0.68788, 0, 0.22418, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[MainFrame]];
G2L["4"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Core.Elements.PlusMenu.MainFrame.Tab
G2L["5"] = Instance.new("UIStroke", G2L["4"]);
G2L["5"]["Color"] = Color3.fromRGB(7, 101, 160);
G2L["5"]["Name"] = [[Tab]];


-- StarterGui.Core.Elements.PlusMenu.MainFrame.UICorner
G2L["6"] = Instance.new("UICorner", G2L["4"]);
G2L["6"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Core.Elements.PlusMenu.MainFrame.Buttons
G2L["7"] = Instance.new("Folder", G2L["4"]);
G2L["7"]["Name"] = [[Buttons]];


-- StarterGui.Core.Elements.PlusMenu.MainFrame.Labels
G2L["8"] = Instance.new("Folder", G2L["4"]);
G2L["8"]["Name"] = [[Labels]];


-- StarterGui.Core.Elements.PlusMenu.MainFrame.Upframe
G2L["9"] = Instance.new("Frame", G2L["4"]);
G2L["9"]["ZIndex"] = 3;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 26);
G2L["9"]["ClipsDescendants"] = true;
G2L["9"]["Size"] = UDim2.new(0, 285, 0, 34);
G2L["9"]["Position"] = UDim2.new(-0.04804, 0, -0, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Name"] = [[Upframe]];


-- StarterGui.Core.Elements.PlusMenu.MainFrame.Upframe.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Core.Elements.PlusMenu.MainFrame.Upframe.TabName
G2L["b"] = Instance.new("TextLabel", G2L["9"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 14;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(0, 144, 0, 21);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[aimbot additionals]];
G2L["b"]["Name"] = [[TabName]];
G2L["b"]["Position"] = UDim2.new(0.04253, 0, 0.17945, 0);


-- StarterGui.Core.Elements.PlusMenu.MainFrame.Upframe.TabName.Contextual
G2L["c"] = Instance.new("UIStroke", G2L["b"]);
G2L["c"]["Thickness"] = 1.5;
G2L["c"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["c"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlusMenu.MainFrame.Upframe.Tab
G2L["d"] = Instance.new("UIStroke", G2L["9"]);
G2L["d"]["Color"] = Color3.fromRGB(7, 101, 160);
G2L["d"]["Name"] = [[Tab]];


-- StarterGui.Core.Elements.DropdownMenu
G2L["e"] = Instance.new("Folder", G2L["2"]);
G2L["e"]["Name"] = [[DropdownMenu]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame
G2L["f"] = Instance.new("Frame", G2L["e"]);
G2L["f"]["ZIndex"] = 3;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["f"]["ClipsDescendants"] = true;
G2L["f"]["Size"] = UDim2.new(0, 176, 0, 147);
G2L["f"]["Position"] = UDim2.new(0.68788, 0, 0.49404, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[MainFrame]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.Buttons
G2L["10"] = Instance.new("Folder", G2L["f"]);
G2L["10"]["Name"] = [[Buttons]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.Labels
G2L["11"] = Instance.new("Folder", G2L["f"]);
G2L["11"]["Name"] = [[Labels]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.Upframe
G2L["12"] = Instance.new("Frame", G2L["f"]);
G2L["12"]["ZIndex"] = 3;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 26);
G2L["12"]["ClipsDescendants"] = true;
G2L["12"]["Size"] = UDim2.new(0, 193, 0, 34);
G2L["12"]["Position"] = UDim2.new(-0.04804, 0, -0, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[Upframe]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.Upframe.UICorner
G2L["13"] = Instance.new("UICorner", G2L["12"]);
G2L["13"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.Upframe.TabName
G2L["14"] = Instance.new("TextLabel", G2L["12"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["Size"] = UDim2.new(0, 134, 0, 21);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[dropdown]];
G2L["14"]["Name"] = [[TabName]];
G2L["14"]["Position"] = UDim2.new(0.09009, 0, 0.17945, 0);


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.Upframe.TabName.Contextual
G2L["15"] = Instance.new("UIStroke", G2L["14"]);
G2L["15"]["Thickness"] = 1.5;
G2L["15"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["15"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.Upframe.Tab
G2L["16"] = Instance.new("UIStroke", G2L["12"]);
G2L["16"]["Color"] = Color3.fromRGB(7, 101, 160);
G2L["16"]["Name"] = [[Tab]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.Tab
G2L["17"] = Instance.new("UIStroke", G2L["f"]);
G2L["17"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["17"]["Name"] = [[Tab]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.UICorner
G2L["18"] = Instance.new("UICorner", G2L["f"]);
G2L["18"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.List
G2L["19"] = Instance.new("Frame", G2L["f"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["Size"] = UDim2.new(0, 151, 0, 108);
G2L["19"]["Position"] = UDim2.new(0, 0, 0.26291, 0);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Name"] = [[List]];
G2L["19"]["BackgroundTransparency"] = 1;


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.List.dropdown1
G2L["1a"] = Instance.new("TextButton", G2L["19"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextSize"] = 14;
G2L["1a"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Size"] = UDim2.new(0, 176, 0, 35);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[memory]];
G2L["1a"]["Name"] = [[dropdown1]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.List.dropdown1.Contextual
G2L["1b"] = Instance.new("UIStroke", G2L["1a"]);
G2L["1b"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["1b"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.List.dropdown2
G2L["1c"] = Instance.new("TextButton", G2L["19"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextSize"] = 14;
G2L["1c"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Size"] = UDim2.new(0, 176, 0, 35);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[mouse]];
G2L["1c"]["Name"] = [[dropdown2]];
G2L["1c"]["Position"] = UDim2.new(0, 0, 0.32407, 0);


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.List.dropdown2.Contextual
G2L["1d"] = Instance.new("UIStroke", G2L["1c"]);
G2L["1d"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["1d"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.DropdownMenu.MainFrame.List.UIListLayout
G2L["1e"] = Instance.new("UIListLayout", G2L["19"]);
G2L["1e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Core.Elements.KeybindsFrame
G2L["1f"] = Instance.new("Folder", G2L["2"]);
G2L["1f"]["Name"] = [[KeybindsFrame]];


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds
G2L["20"] = Instance.new("Frame", G2L["1f"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["20"]["ClipsDescendants"] = true;
G2L["20"]["Size"] = UDim2.new(0, 177, 0, 320);
G2L["20"]["Position"] = UDim2.new(0.82772, 0, 0.22497, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Name"] = [[Keybinds]];


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.UICorner
G2L["21"] = Instance.new("UICorner", G2L["20"]);
G2L["21"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Border
G2L["22"] = Instance.new("UIStroke", G2L["20"]);
G2L["22"]["Color"] = Color3.fromRGB(17, 41, 71);
G2L["22"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["22"]["Name"] = [[Border]];


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Slashes
G2L["23"] = Instance.new("Folder", G2L["20"]);
G2L["23"]["Name"] = [[Slashes]];


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Slashes.TextLabel
G2L["24"] = Instance.new("TextLabel", G2L["23"]);
G2L["24"]["TextWrapped"] = true;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 21;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["24"]["TextColor3"] = Color3.fromRGB(55, 63, 72);
G2L["24"]["Size"] = UDim2.new(0, 177, 0, 2);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[]];
G2L["24"]["Position"] = UDim2.new(-0.00068, 0, 0.11137, 0);


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Slashes.TextLabel.UIGradient
G2L["25"] = Instance.new("UIGradient", G2L["24"]);
G2L["25"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(65, 84, 93)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(82, 106, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(65, 84, 93))};


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Name
G2L["26"] = Instance.new("TextLabel", G2L["20"]);
G2L["26"]["TextWrapped"] = true;
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["TextSize"] = 14;
G2L["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(65, 84, 93);
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["26"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Size"] = UDim2.new(0, 176, 0, 34);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[Keybinds]];
G2L["26"]["Name"] = [[Name]];
G2L["26"]["Position"] = UDim2.new(-0, 0, 0, 0);


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Name.UIPadding
G2L["27"] = Instance.new("UIPadding", G2L["26"]);
G2L["27"]["PaddingLeft"] = UDim.new(0, 11);


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Name.Contextual
G2L["28"] = Instance.new("UIStroke", G2L["26"]);
G2L["28"]["Thickness"] = 1.5;
G2L["28"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["28"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Main
G2L["29"] = Instance.new("Frame", G2L["20"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["29"]["Size"] = UDim2.new(0, 176, 0, 281);
G2L["29"]["Position"] = UDim2.new(-0, 0, 0.11977, 0);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Name"] = [[Main]];


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Main.UIListLayout
G2L["2a"] = Instance.new("UIListLayout", G2L["29"]);
G2L["2a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["2a"]["Wraps"] = true;
G2L["2a"]["Padding"] = UDim.new(0, 3);


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Main.TextLabel
G2L["2b"] = Instance.new("TextLabel", G2L["29"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextSize"] = 15;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Size"] = UDim2.new(0, 178, 0, 30);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = [[ [tog] - speed - f]];
G2L["2b"]["Position"] = UDim2.new(-0.01714, 0, 0.00356, 0);


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Main.TextLabel.Contextual
G2L["2c"] = Instance.new("UIStroke", G2L["2b"]);
G2L["2c"]["Thickness"] = 1.5;
G2L["2c"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["2c"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Main.TextLabel
G2L["2d"] = Instance.new("TextLabel", G2L["29"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["TextSize"] = 15;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2d"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["Size"] = UDim2.new(0, 178, 0, 30);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Text"] = [[[alw] - jump - z]];
G2L["2d"]["Position"] = UDim2.new(0, 0, 0.11364, 0);


-- StarterGui.Core.Elements.KeybindsFrame.Keybinds.Main.TextLabel.Contextual
G2L["2e"] = Instance.new("UIStroke", G2L["2d"]);
G2L["2e"]["Thickness"] = 1.5;
G2L["2e"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["2e"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlayersListFrame
G2L["2f"] = Instance.new("Folder", G2L["2"]);
G2L["2f"]["Name"] = [[PlayersListFrame]];


-- StarterGui.Core.Elements.PlayersListFrame.Players
G2L["30"] = Instance.new("Frame", G2L["2f"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["30"]["ClipsDescendants"] = true;
G2L["30"]["Size"] = UDim2.new(0, 270, 0, 470);
G2L["30"]["Position"] = UDim2.new(0.12717, 0, 0.2238, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Name"] = [[Players]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Slashes
G2L["31"] = Instance.new("Folder", G2L["30"]);
G2L["31"]["Name"] = [[Slashes]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Slashes.TextLabel
G2L["32"] = Instance.new("TextLabel", G2L["31"]);
G2L["32"]["TextWrapped"] = true;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["TextSize"] = 21;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["32"]["TextColor3"] = Color3.fromRGB(55, 63, 72);
G2L["32"]["Size"] = UDim2.new(0, 270, 0, 2);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Text"] = [[]];
G2L["32"]["Position"] = UDim2.new(-0.00068, 0, 0.06882, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Slashes.TextLabel.UIGradient
G2L["33"] = Instance.new("UIGradient", G2L["32"]);
G2L["33"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(65, 84, 93)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(82, 106, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(65, 84, 93))};


-- StarterGui.Core.Elements.PlayersListFrame.Players.Containers
G2L["34"] = Instance.new("Folder", G2L["30"]);
G2L["34"]["Name"] = [[Containers]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Containers.Searchbox
G2L["35"] = Instance.new("Folder", G2L["34"]);
G2L["35"]["Name"] = [[Searchbox]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Containers.Searchbox.Searchbox
G2L["36"] = Instance.new("TextBox", G2L["35"]);
G2L["36"]["Name"] = [[Searchbox]];
G2L["36"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["36"]["PlaceholderColor3"] = Color3.fromRGB(154, 151, 154);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["TextWrapped"] = true;
G2L["36"]["TextSize"] = 14;
G2L["36"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["36"]["PlaceholderText"] = [[search]];
G2L["36"]["Size"] = UDim2.new(0, 247, 0, 25);
G2L["36"]["Position"] = UDim2.new(0.0391, 0, 0.08608, 0);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Text"] = [[]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Containers.Searchbox.Searchbox.UICorner
G2L["37"] = Instance.new("UICorner", G2L["36"]);
G2L["37"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Containers.Searchbox.Searchbox.TextBox
G2L["38"] = Instance.new("UIStroke", G2L["36"]);
G2L["38"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["38"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["38"]["Name"] = [[TextBox]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Containers.Searchbox.Searchbox.Contextual
G2L["39"] = Instance.new("UIStroke", G2L["36"]);
G2L["39"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Containers.Searchbox.Searchbox.UIPadding
G2L["3a"] = Instance.new("UIPadding", G2L["36"]);
G2L["3a"]["PaddingLeft"] = UDim.new(0, 28);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Containers.Searchbox.Searchbox.Icon
G2L["3b"] = Instance.new("ImageLabel", G2L["36"]);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["ImageColor3"] = Color3.fromRGB(174, 174, 175);
G2L["3b"]["Image"] = [[rbxassetid://128625562276776]];
G2L["3b"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["BackgroundTransparency"] = 1;
G2L["3b"]["Name"] = [[Icon]];
G2L["3b"]["Position"] = UDim2.new(-0.09843, 0, 0.12, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.List
G2L["3c"] = Instance.new("Frame", G2L["30"]);
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 26);
G2L["3c"]["Size"] = UDim2.new(0, 246, 0, 212);
G2L["3c"]["Position"] = UDim2.new(0.0354, 0, 0.16342, 0);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Name"] = [[List]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.Slashes
G2L["3d"] = Instance.new("Folder", G2L["3c"]);
G2L["3d"]["Name"] = [[Slashes]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.Slashes.TextLabel
G2L["3e"] = Instance.new("TextLabel", G2L["3d"]);
G2L["3e"]["TextWrapped"] = true;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["TextSize"] = 21;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3e"]["TextColor3"] = Color3.fromRGB(55, 63, 72);
G2L["3e"]["Size"] = UDim2.new(0, 247, 0, 2);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Text"] = [[]];
G2L["3e"]["Position"] = UDim2.new(-0.00069, 0, 0.12947, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.Slashes.TextLabel.UIGradient
G2L["3f"] = Instance.new("UIGradient", G2L["3e"]);
G2L["3f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(65, 84, 93)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(82, 106, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(65, 84, 93))};


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.TabName
G2L["40"] = Instance.new("TextLabel", G2L["3c"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["TextSize"] = 14;
G2L["40"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["40"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["40"]["BackgroundTransparency"] = 1;
G2L["40"]["Size"] = UDim2.new(0, 239, 0, 21);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Text"] = [[player list]];
G2L["40"]["Name"] = [[TabName]];
G2L["40"]["Position"] = UDim2.new(0.02619, 0, 0.0079, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.TabName.Contextual
G2L["41"] = Instance.new("UIStroke", G2L["40"]);
G2L["41"]["Thickness"] = 1.5;
G2L["41"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["41"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.UICorner
G2L["42"] = Instance.new("UICorner", G2L["3c"]);
G2L["42"]["CornerRadius"] = UDim.new(0, 1);


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.List
G2L["43"] = Instance.new("UIStroke", G2L["3c"]);
G2L["43"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["43"]["Name"] = [[List]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.Layout
G2L["44"] = Instance.new("ScrollingFrame", G2L["3c"]);
G2L["44"]["Active"] = true;
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["Name"] = [[Layout]];
G2L["44"]["ScrollBarImageTransparency"] = 1;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["44"]["Size"] = UDim2.new(0, 244, 0, 184);
G2L["44"]["ScrollBarImageColor3"] = Color3.fromRGB(168, 168, 168);
G2L["44"]["Position"] = UDim2.new(0, 0, 0.14513, 0);
G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["BackgroundTransparency"] = 1;


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.Layout.UIListLayout
G2L["45"] = Instance.new("UIListLayout", G2L["44"]);



-- StarterGui.Core.Elements.PlayersListFrame.Players.List.Layout.Player_
G2L["46"] = Instance.new("TextButton", G2L["44"]);
G2L["46"]["TextWrapped"] = true;
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["46"]["TextSize"] = 17;
G2L["46"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["46"]["BackgroundTransparency"] = 1;
G2L["46"]["Size"] = UDim2.new(0, 244, 0, 31);
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["Text"] = [[Roblox (Roblox)]];
G2L["46"]["Name"] = [[Player_]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.Layout.Player_.Contextual
G2L["47"] = Instance.new("UIStroke", G2L["46"]);
G2L["47"]["Thickness"] = 1.5;
G2L["47"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["47"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.List.Layout.Player_.UIPadding
G2L["48"] = Instance.new("UIPadding", G2L["46"]);
G2L["48"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Tab
G2L["49"] = Instance.new("UIStroke", G2L["30"]);
G2L["49"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["49"]["Name"] = [[Tab]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.UICorner
G2L["4a"] = Instance.new("UICorner", G2L["30"]);
G2L["4a"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail
G2L["4b"] = Instance.new("Frame", G2L["30"]);
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 26);
G2L["4b"]["Size"] = UDim2.new(0, 246, 0, 121);
G2L["4b"]["Position"] = UDim2.new(0.0354, 0, 0.64675, 0);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Name"] = [[Detail]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Slashes
G2L["4c"] = Instance.new("Folder", G2L["4b"]);
G2L["4c"]["Name"] = [[Slashes]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Slashes.TextLabel
G2L["4d"] = Instance.new("TextLabel", G2L["4c"]);
G2L["4d"]["TextWrapped"] = true;
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["TextSize"] = 21;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4d"]["TextColor3"] = Color3.fromRGB(55, 63, 72);
G2L["4d"]["Size"] = UDim2.new(0, 247, 0, 2);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Text"] = [[]];
G2L["4d"]["Position"] = UDim2.new(-0.00069, 0, 0.22796, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Slashes.TextLabel.UIGradient
G2L["4e"] = Instance.new("UIGradient", G2L["4d"]);
G2L["4e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(65, 84, 93)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(82, 106, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(65, 84, 93))};


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.TabName
G2L["4f"] = Instance.new("TextLabel", G2L["4b"]);
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["TextSize"] = 14;
G2L["4f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4f"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["4f"]["BackgroundTransparency"] = 1;
G2L["4f"]["Size"] = UDim2.new(0, 239, 0, 25);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Text"] = [[detail]];
G2L["4f"]["Name"] = [[TabName]];
G2L["4f"]["Position"] = UDim2.new(0.02619, 0, 0.01755, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.TabName.Contextual
G2L["50"] = Instance.new("UIStroke", G2L["4f"]);
G2L["50"]["Thickness"] = 1.5;
G2L["50"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["50"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.UICorner
G2L["51"] = Instance.new("UICorner", G2L["4b"]);
G2L["51"]["CornerRadius"] = UDim.new(0, 1);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.List
G2L["52"] = Instance.new("UIStroke", G2L["4b"]);
G2L["52"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["52"]["Name"] = [[List]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Labels
G2L["53"] = Instance.new("Folder", G2L["4b"]);
G2L["53"]["Name"] = [[Labels]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Labels.userid
G2L["54"] = Instance.new("TextLabel", G2L["53"]);
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["TextSize"] = 14;
G2L["54"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["54"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["54"]["BackgroundTransparency"] = 1;
G2L["54"]["Size"] = UDim2.new(0, 238, 0, 21);
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Text"] = [[userid:]];
G2L["54"]["Name"] = [[userid]];
G2L["54"]["Position"] = UDim2.new(0.03432, 0, 0.61926, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Labels.userid.Contextual
G2L["55"] = Instance.new("UIStroke", G2L["54"]);
G2L["55"]["Thickness"] = 1.5;
G2L["55"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["55"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Labels.display
G2L["56"] = Instance.new("TextLabel", G2L["53"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextSize"] = 14;
G2L["56"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["56"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["56"]["BackgroundTransparency"] = 1;
G2L["56"]["Size"] = UDim2.new(0, 238, 0, 21);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[display: ]];
G2L["56"]["Name"] = [[display]];
G2L["56"]["Position"] = UDim2.new(0.03432, 0, 0.45926, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Labels.display.Contextual
G2L["57"] = Instance.new("UIStroke", G2L["56"]);
G2L["57"]["Thickness"] = 1.5;
G2L["57"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["57"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Labels.name
G2L["58"] = Instance.new("TextLabel", G2L["53"]);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["TextSize"] = 14;
G2L["58"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["58"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["58"]["BackgroundTransparency"] = 1;
G2L["58"]["Size"] = UDim2.new(0, 238, 0, 21);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Text"] = [[name: ]];
G2L["58"]["Name"] = [[name]];
G2L["58"]["Position"] = UDim2.new(0.03026, 0, 0.29126, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Labels.name.Contextual
G2L["59"] = Instance.new("UIStroke", G2L["58"]);
G2L["59"]["Thickness"] = 1.5;
G2L["59"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["59"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Buttons
G2L["5a"] = Instance.new("Folder", G2L["4b"]);
G2L["5a"]["Name"] = [[Buttons]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Buttons.Button
G2L["5b"] = Instance.new("TextButton", G2L["5a"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["TextSize"] = 17;
G2L["5b"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 26);
G2L["5b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5b"]["Size"] = UDim2.new(0, 100, 0, 25);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Text"] = [[spectate]];
G2L["5b"]["Name"] = [[Button]];
G2L["5b"]["Position"] = UDim2.new(0.03184, 0, 1.06782, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Buttons.Button.Contextual
G2L["5c"] = Instance.new("UIStroke", G2L["5b"]);
G2L["5c"]["Thickness"] = 1.5;
G2L["5c"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["5c"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Buttons.Button.UICorner
G2L["5d"] = Instance.new("UICorner", G2L["5b"]);
G2L["5d"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Buttons.Button.Tab
G2L["5e"] = Instance.new("UIStroke", G2L["5b"]);
G2L["5e"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["5e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["5e"]["Name"] = [[Tab]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Buttons.Button
G2L["5f"] = Instance.new("TextButton", G2L["5a"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["TextSize"] = 17;
G2L["5f"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 26);
G2L["5f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5f"]["Size"] = UDim2.new(0, 100, 0, 25);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Text"] = [[teleport]];
G2L["5f"]["Name"] = [[Button]];
G2L["5f"]["Position"] = UDim2.new(0.54089, 0, 1.06782, 0);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Buttons.Button.Contextual
G2L["60"] = Instance.new("UIStroke", G2L["5f"]);
G2L["60"]["Thickness"] = 1.5;
G2L["60"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["60"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Buttons.Button.UICorner
G2L["61"] = Instance.new("UICorner", G2L["5f"]);
G2L["61"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.Elements.PlayersListFrame.Players.Detail.Buttons.Button.Tab
G2L["62"] = Instance.new("UIStroke", G2L["5f"]);
G2L["62"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["62"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["62"]["Name"] = [[Tab]];


-- StarterGui.Core.Elements.WatermarkFrame
G2L["63"] = Instance.new("Folder", G2L["2"]);
G2L["63"]["Name"] = [[WatermarkFrame]];


-- StarterGui.Core.Elements.WatermarkFrame.Watermark
G2L["64"] = Instance.new("Frame", G2L["63"]);
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["64"]["Size"] = UDim2.new(0, 288, 0, 39);
G2L["64"]["Position"] = UDim2.new(0.40791, 0, 0.16939, 0);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Name"] = [[Watermark]];


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.UICorner
G2L["65"] = Instance.new("UICorner", G2L["64"]);
G2L["65"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.Icon
G2L["66"] = Instance.new("ImageLabel", G2L["64"]);
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["Image"] = [[rbxassetid://74807357385705]];
G2L["66"]["Size"] = UDim2.new(0, 39, 0, 39);
G2L["66"]["ClipsDescendants"] = true;
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["BackgroundTransparency"] = 1;
G2L["66"]["Name"] = [[Icon]];
G2L["66"]["Position"] = UDim2.new(0, 0, -0.01887, 0);


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.Border
G2L["67"] = Instance.new("UIStroke", G2L["64"]);
G2L["67"]["Color"] = Color3.fromRGB(47, 61, 67);
G2L["67"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["67"]["Name"] = [[Border]];


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.Slashes
G2L["68"] = Instance.new("Folder", G2L["64"]);
G2L["68"]["Name"] = [[Slashes]];


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.Slashes.TextLabel
G2L["69"] = Instance.new("TextLabel", G2L["68"]);
G2L["69"]["TextWrapped"] = true;
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["TextSize"] = 21;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(65, 84, 93);
G2L["69"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["69"]["TextColor3"] = Color3.fromRGB(55, 63, 72);
G2L["69"]["BackgroundTransparency"] = 1;
G2L["69"]["Size"] = UDim2.new(0, 12, 0, 39);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Text"] = [[|]];
G2L["69"]["Position"] = UDim2.new(0.13734, 0, 0, 0);


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.Slashes.TextLabel
G2L["6a"] = Instance.new("TextLabel", G2L["68"]);
G2L["6a"]["TextWrapped"] = true;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["TextSize"] = 21;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(65, 84, 93);
G2L["6a"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6a"]["TextColor3"] = Color3.fromRGB(55, 63, 72);
G2L["6a"]["BackgroundTransparency"] = 1;
G2L["6a"]["Size"] = UDim2.new(0, 12, 0, 39);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Text"] = [[|]];
G2L["6a"]["Position"] = UDim2.new(0.43627, 0, 0, 0);


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.Slashes.TextLabel
G2L["6b"] = Instance.new("TextLabel", G2L["68"]);
G2L["6b"]["TextWrapped"] = true;
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["TextSize"] = 21;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(65, 84, 93);
G2L["6b"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6b"]["TextColor3"] = Color3.fromRGB(55, 63, 72);
G2L["6b"]["BackgroundTransparency"] = 1;
G2L["6b"]["Size"] = UDim2.new(0, 12, 0, 39);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Text"] = [[|]];
G2L["6b"]["Position"] = UDim2.new(0.71385, 0, -0.02564, 0);


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.Name
G2L["6c"] = Instance.new("TextLabel", G2L["64"]);
G2L["6c"]["TextWrapped"] = true;
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["TextSize"] = 23;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(65, 84, 93);
G2L["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6c"]["TextColor3"] = Color3.fromRGB(154, 151, 154);
G2L["6c"]["BackgroundTransparency"] = 1;
G2L["6c"]["Size"] = UDim2.new(0, 72, 0, 39);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Text"] = [[Yerba]];
G2L["6c"]["Name"] = [[Name]];
G2L["6c"]["Position"] = UDim2.new(0.18004, 0, 0, 0);


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.Name.Contextual
G2L["6d"] = Instance.new("UIStroke", G2L["6c"]);
G2L["6d"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["6d"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.Creator
G2L["6e"] = Instance.new("TextLabel", G2L["64"]);
G2L["6e"]["TextWrapped"] = true;
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["TextSize"] = 23;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(65, 84, 93);
G2L["6e"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6e"]["TextColor3"] = Color3.fromRGB(154, 151, 154);
G2L["6e"]["BackgroundTransparency"] = 1;
G2L["6e"]["Size"] = UDim2.new(0, 72, 0, 39);
G2L["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6e"]["Text"] = [[with<3]];
G2L["6e"]["Name"] = [[Creator]];
G2L["6e"]["Position"] = UDim2.new(0.47898, 0, 0, 0);


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.Creator.Contextual
G2L["6f"] = Instance.new("UIStroke", G2L["6e"]);
G2L["6f"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["6f"]["Name"] = [[Contextual]];


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.FPS
G2L["70"] = Instance.new("TextLabel", G2L["64"]);
G2L["70"]["TextWrapped"] = true;
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["TextSize"] = 23;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(65, 84, 93);
G2L["70"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["70"]["TextColor3"] = Color3.fromRGB(154, 151, 154);
G2L["70"]["BackgroundTransparency"] = 1;
G2L["70"]["Size"] = UDim2.new(0, 68, 0, 39);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Text"] = [[67 fps]];
G2L["70"]["Name"] = [[FPS]];
G2L["70"]["Position"] = UDim2.new(0.75656, 0, 0, 0);


-- StarterGui.Core.Elements.WatermarkFrame.Watermark.FPS.Contextual
G2L["71"] = Instance.new("UIStroke", G2L["70"]);
G2L["71"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["71"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow
G2L["72"] = Instance.new("Frame", G2L["1"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(12, 15, 13);
G2L["72"]["ClipsDescendants"] = true;
G2L["72"]["Size"] = UDim2.new(0, 610, 0, 470);
G2L["72"]["Position"] = UDim2.new(0.30765, 0, 0.22547, 0);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Name"] = [[MainWindow]];


-- StarterGui.Core.MainWindow.UICorner
G2L["73"] = Instance.new("UICorner", G2L["72"]);
G2L["73"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.Core.MainWindow.Upframe
G2L["74"] = Instance.new("Frame", G2L["72"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
G2L["74"]["ClipsDescendants"] = true;
G2L["74"]["Size"] = UDim2.new(0, 612, 0, 53);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Name"] = [[Upframe]];


-- StarterGui.Core.MainWindow.Upframe.UICorner
G2L["75"] = Instance.new("UICorner", G2L["74"]);
G2L["75"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Core.MainWindow.Upframe.Icon
G2L["76"] = Instance.new("ImageLabel", G2L["74"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["Image"] = [[rbxassetid://74807357385705]];
G2L["76"]["Size"] = UDim2.new(0, 49, 0, 53);
G2L["76"]["ClipsDescendants"] = true;
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["BackgroundTransparency"] = 1;
G2L["76"]["Name"] = [[Icon]];
G2L["76"]["Position"] = UDim2.new(0, 0, -0.01887, 0);


-- StarterGui.Core.MainWindow.Upframe.Containers
G2L["77"] = Instance.new("Folder", G2L["74"]);
G2L["77"]["Name"] = [[Containers]];


-- StarterGui.Core.MainWindow.Upframe.Containers.Searchbox
G2L["78"] = Instance.new("Folder", G2L["77"]);
G2L["78"]["Name"] = [[Searchbox]];


-- StarterGui.Core.MainWindow.Upframe.Containers.Searchbox.Searchbox
G2L["79"] = Instance.new("TextBox", G2L["78"]);
G2L["79"]["Name"] = [[Searchbox]];
G2L["79"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["79"]["PlaceholderColor3"] = Color3.fromRGB(154, 151, 154);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["TextWrapped"] = true;
G2L["79"]["TextSize"] = 14;
G2L["79"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["79"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["79"]["PlaceholderText"] = [[search]];
G2L["79"]["Size"] = UDim2.new(0, 145, 0, 25);
G2L["79"]["Position"] = UDim2.new(0.7391, 0, 0.25523, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Text"] = [[]];


-- StarterGui.Core.MainWindow.Upframe.Containers.Searchbox.Searchbox.UICorner
G2L["7a"] = Instance.new("UICorner", G2L["79"]);
G2L["7a"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.Core.MainWindow.Upframe.Containers.Searchbox.Searchbox.TextBox
G2L["7b"] = Instance.new("UIStroke", G2L["79"]);
G2L["7b"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["7b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["7b"]["Name"] = [[TextBox]];


-- StarterGui.Core.MainWindow.Upframe.Containers.Searchbox.Searchbox.Contextual
G2L["7c"] = Instance.new("UIStroke", G2L["79"]);
G2L["7c"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.Upframe.Containers.Searchbox.Searchbox.UIPadding
G2L["7d"] = Instance.new("UIPadding", G2L["79"]);
G2L["7d"]["PaddingLeft"] = UDim.new(0, 28);


-- StarterGui.Core.MainWindow.Upframe.Containers.Searchbox.Searchbox.Icon
G2L["7e"] = Instance.new("ImageLabel", G2L["79"]);
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["ImageColor3"] = Color3.fromRGB(174, 174, 175);
G2L["7e"]["Image"] = [[rbxassetid://128625562276776]];
G2L["7e"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["BackgroundTransparency"] = 1;
G2L["7e"]["Name"] = [[Icon]];
G2L["7e"]["Position"] = UDim2.new(-0.2, 0, 0.12, 0);


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs
G2L["7f"] = Instance.new("Folder", G2L["77"]);
G2L["7f"]["Name"] = [[Tabs]];


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List
G2L["80"] = Instance.new("Frame", G2L["7f"]);
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["Size"] = UDim2.new(0, 386, 0, 31);
G2L["80"]["Position"] = UDim2.new(0.09443, 0, 0.16981, 0);
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["Name"] = [[List]];
G2L["80"]["BackgroundTransparency"] = 1;


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.Example
G2L["81"] = Instance.new("TextButton", G2L["80"]);
G2L["81"]["TextWrapped"] = true;
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["TextSize"] = 16;
G2L["81"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["81"]["BackgroundTransparency"] = 1;
G2L["81"]["Size"] = UDim2.new(0, 71, 0, 22);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Text"] = [[aimbot]];
G2L["81"]["Name"] = [[Example]];
G2L["81"]["Position"] = UDim2.new(0.01013, 0, 0.1129, 0);


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.Example.Contextual
G2L["82"] = Instance.new("UIStroke", G2L["81"]);
G2L["82"]["Thickness"] = 1.5;
G2L["82"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["82"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.Example
G2L["83"] = Instance.new("TextButton", G2L["80"]);
G2L["83"]["TextWrapped"] = true;
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["TextSize"] = 16;
G2L["83"]["TextColor3"] = Color3.fromRGB(154, 151, 154);
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["83"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["83"]["BackgroundTransparency"] = 1;
G2L["83"]["Size"] = UDim2.new(0, 71, 0, 22);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Text"] = [[visuals]];
G2L["83"]["Name"] = [[Example]];
G2L["83"]["Position"] = UDim2.new(0.24899, 0, 0.16682, 0);


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.Example.Contextual
G2L["84"] = Instance.new("UIStroke", G2L["83"]);
G2L["84"]["Thickness"] = 1.5;
G2L["84"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["84"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.Example
G2L["85"] = Instance.new("TextButton", G2L["80"]);
G2L["85"]["TextWrapped"] = true;
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["TextSize"] = 16;
G2L["85"]["TextColor3"] = Color3.fromRGB(154, 151, 154);
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["85"]["BackgroundTransparency"] = 1;
G2L["85"]["Size"] = UDim2.new(0, 71, 0, 22);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["Text"] = [[misc]];
G2L["85"]["Name"] = [[Example]];
G2L["85"]["Position"] = UDim2.new(0.38987, 0, 0.14516, 0);


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.Example.Contextual
G2L["86"] = Instance.new("UIStroke", G2L["85"]);
G2L["86"]["Thickness"] = 1.5;
G2L["86"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["86"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.UIListLayout
G2L["87"] = Instance.new("UIListLayout", G2L["80"]);
G2L["87"]["Wraps"] = true;
G2L["87"]["Padding"] = UDim.new(0, 6);
G2L["87"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["87"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["87"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.Example
G2L["88"] = Instance.new("TextButton", G2L["80"]);
G2L["88"]["TextWrapped"] = true;
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["TextSize"] = 16;
G2L["88"]["TextColor3"] = Color3.fromRGB(154, 151, 154);
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["88"]["BackgroundTransparency"] = 1;
G2L["88"]["Size"] = UDim2.new(0, 71, 0, 22);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["Text"] = [[settings]];
G2L["88"]["Name"] = [[Example]];
G2L["88"]["Position"] = UDim2.new(0.59877, 0, 0.15, 0);


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.Example.Contextual
G2L["89"] = Instance.new("UIStroke", G2L["88"]);
G2L["89"]["Thickness"] = 1.5;
G2L["89"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["89"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.Example
G2L["8a"] = Instance.new("TextButton", G2L["80"]);
G2L["8a"]["TextWrapped"] = true;
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["TextSize"] = 16;
G2L["8a"]["TextColor3"] = Color3.fromRGB(154, 151, 154);
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8a"]["BackgroundTransparency"] = 1;
G2L["8a"]["Size"] = UDim2.new(0, 71, 0, 22);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Text"] = [[scripts]];
G2L["8a"]["Name"] = [[Example]];
G2L["8a"]["Position"] = UDim2.new(0.73662, 0, 0.14516, 0);


-- StarterGui.Core.MainWindow.Upframe.Containers.Tabs.List.Example.Contextual
G2L["8b"] = Instance.new("UIStroke", G2L["8a"]);
G2L["8b"]["Thickness"] = 1.5;
G2L["8b"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["8b"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.Upframe.Slashes
G2L["8c"] = Instance.new("Folder", G2L["74"]);
G2L["8c"]["Name"] = [[Slashes]];


-- StarterGui.Core.MainWindow.Upframe.Slashes.TextLabel
G2L["8d"] = Instance.new("TextLabel", G2L["8c"]);
G2L["8d"]["TextWrapped"] = true;
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["TextSize"] = 21;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(18, 27, 36);
G2L["8d"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8d"]["TextColor3"] = Color3.fromRGB(61, 67, 76);
G2L["8d"]["BackgroundTransparency"] = 1;
G2L["8d"]["Size"] = UDim2.new(0, 12, 0, 50);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Text"] = [[|]];
G2L["8d"]["Position"] = UDim2.new(0.71219, 0, 0, 0);


-- StarterGui.Core.MainWindow.Upframe.Slashes.TextLabel
G2L["8e"] = Instance.new("TextLabel", G2L["8c"]);
G2L["8e"]["TextWrapped"] = true;
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["TextSize"] = 21;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(18, 27, 36);
G2L["8e"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8e"]["TextColor3"] = Color3.fromRGB(61, 67, 76);
G2L["8e"]["BackgroundTransparency"] = 1;
G2L["8e"]["Size"] = UDim2.new(0, 12, 0, 50);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["Text"] = [[|]];
G2L["8e"]["Position"] = UDim2.new(0.07684, 0, -0.01887, 0);


-- StarterGui.Core.MainWindow.Upframe.TextLabel
G2L["8f"] = Instance.new("TextLabel", G2L["74"]);
G2L["8f"]["TextWrapped"] = true;
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["TextSize"] = 18;
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8f"]["TextColor3"] = Color3.fromRGB(0, 136, 177);
G2L["8f"]["Size"] = UDim2.new(0, 622, 0, 2);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["Text"] = [[]];
G2L["8f"]["Position"] = UDim2.new(0, 0, 0.96364, 0);


-- StarterGui.Core.MainWindow.Upframe.TextLabel.UIGradient
G2L["90"] = Instance.new("UIGradient", G2L["8f"]);
G2L["90"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(65, 84, 93)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(82, 106, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(65, 84, 93))};


-- StarterGui.Core.MainWindow.Upframe.UIGradient
G2L["91"] = Instance.new("UIGradient", G2L["74"]);
G2L["91"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(195, 195, 195)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 162, 162)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(198, 198, 198))};


-- StarterGui.Core.MainWindow.Upframe.TabHover
G2L["92"] = Instance.new("Frame", G2L["74"]);
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["Size"] = UDim2.new(0, 56, 0, 2);
G2L["92"]["Position"] = UDim2.new(0.1058, 0, 0.70813, 0);
G2L["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["Name"] = [[TabHover]];


-- StarterGui.Core.MainWindow.Upframe.TabHover.UIGradient
G2L["93"] = Instance.new("UIGradient", G2L["92"]);
G2L["93"]["Rotation"] = 90;
G2L["93"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(65, 84, 93)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(82, 106, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(65, 84, 93))};


-- StarterGui.Core.MainWindow.Upframe.TabHover.UICorner
G2L["94"] = Instance.new("UICorner", G2L["92"]);
G2L["94"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Core.MainWindow.TabContent
G2L["95"] = Instance.new("Folder", G2L["72"]);
G2L["95"]["Name"] = [[TabContent]];


-- StarterGui.Core.MainWindow.TabContent.aimbot
G2L["96"] = Instance.new("Folder", G2L["95"]);
G2L["96"]["Name"] = [[aimbot]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent
G2L["97"] = Instance.new("Frame", G2L["96"]);
G2L["97"]["ZIndex"] = 3;
G2L["97"]["BorderSizePixel"] = 0;
G2L["97"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["97"]["ClipsDescendants"] = true;
G2L["97"]["Size"] = UDim2.new(0, 292, 0, 133);
G2L["97"]["Position"] = UDim2.new(0.01933, 0, 0.13951, 0);
G2L["97"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["Name"] = [[TabContent]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe
G2L["98"] = Instance.new("Frame", G2L["97"]);
G2L["98"]["ZIndex"] = 3;
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 26);
G2L["98"]["ClipsDescendants"] = true;
G2L["98"]["Size"] = UDim2.new(0, 294, 0, 33);
G2L["98"]["Position"] = UDim2.new(-0.00126, 0, 0.00281, 0);
G2L["98"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["98"]["Name"] = [[Upframe]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.UICorner
G2L["99"] = Instance.new("UICorner", G2L["98"]);
G2L["99"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.TabName
G2L["9a"] = Instance.new("TextLabel", G2L["98"]);
G2L["9a"]["TextWrapped"] = true;
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["TextSize"] = 14;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9a"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["9a"]["BackgroundTransparency"] = 1;
G2L["9a"]["Size"] = UDim2.new(0, 42, 0, 21);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Text"] = [[aimbot]];
G2L["9a"]["Name"] = [[TabName]];
G2L["9a"]["Position"] = UDim2.new(0.02507, 0, 0.18489, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.TabName.Contextual
G2L["9b"] = Instance.new("UIStroke", G2L["9a"]);
G2L["9b"]["Thickness"] = 1.5;
G2L["9b"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["9b"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.Subtabs
G2L["9c"] = Instance.new("Frame", G2L["98"]);
G2L["9c"]["BorderSizePixel"] = 0;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["Size"] = UDim2.new(0, 193, 0, 21);
G2L["9c"]["Position"] = UDim2.new(0.31072, 0, 0.15152, 0);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9c"]["Name"] = [[Subtabs]];
G2L["9c"]["BackgroundTransparency"] = 1;


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.Subtabs.UIListLayout
G2L["9d"] = Instance.new("UIListLayout", G2L["9c"]);
G2L["9d"]["Padding"] = UDim.new(0, 1);
G2L["9d"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["9d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["9d"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.Subtabs.Example
G2L["9e"] = Instance.new("TextButton", G2L["9c"]);
G2L["9e"]["TextWrapped"] = true;
G2L["9e"]["BorderSizePixel"] = 0;
G2L["9e"]["TextSize"] = 14;
G2L["9e"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["9e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9e"]["BackgroundTransparency"] = 1;
G2L["9e"]["Size"] = UDim2.new(0, 59, 0, 33);
G2L["9e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9e"]["Text"] = [[aimbot]];
G2L["9e"]["Name"] = [[Example]];
G2L["9e"]["Position"] = UDim2.new(0.59211, 0, 0.17647, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.Subtabs.Example.Contextual
G2L["9f"] = Instance.new("UIStroke", G2L["9e"]);
G2L["9f"]["Thickness"] = 1.5;
G2L["9f"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["9f"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.Subtabs.Example
G2L["a0"] = Instance.new("TextButton", G2L["9c"]);
G2L["a0"]["TextWrapped"] = true;
G2L["a0"]["BorderSizePixel"] = 0;
G2L["a0"]["TextSize"] = 14;
G2L["a0"]["TextColor3"] = Color3.fromRGB(154, 151, 154);
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a0"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a0"]["BackgroundTransparency"] = 1;
G2L["a0"]["Size"] = UDim2.new(0, 59, 0, 33);
G2L["a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a0"]["Text"] = [[silent]];
G2L["a0"]["Name"] = [[Example]];
G2L["a0"]["Position"] = UDim2.new(0.29036, 0, -0.02381, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.Subtabs.Example.Contextual
G2L["a1"] = Instance.new("UIStroke", G2L["a0"]);
G2L["a1"]["Thickness"] = 1.5;
G2L["a1"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["a1"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.Subtabs.Example
G2L["a2"] = Instance.new("TextButton", G2L["9c"]);
G2L["a2"]["TextWrapped"] = true;
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["TextSize"] = 14;
G2L["a2"]["TextColor3"] = Color3.fromRGB(154, 151, 154);
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a2"]["BackgroundTransparency"] = 1;
G2L["a2"]["Size"] = UDim2.new(0, 81, 0, 33);
G2L["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["Text"] = [[triggerbot]];
G2L["a2"]["Name"] = [[Example]];
G2L["a2"]["Position"] = UDim2.new(0.62176, 0, -0.28571, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.Subtabs.Example.Contextual
G2L["a3"] = Instance.new("UIStroke", G2L["a2"]);
G2L["a3"]["Thickness"] = 1.5;
G2L["a3"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["a3"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Slash
G2L["a4"] = Instance.new("TextLabel", G2L["97"]);
G2L["a4"]["TextWrapped"] = true;
G2L["a4"]["BorderSizePixel"] = 0;
G2L["a4"]["TextSize"] = 18;
G2L["a4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a4"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a4"]["TextColor3"] = Color3.fromRGB(0, 136, 177);
G2L["a4"]["Size"] = UDim2.new(0, 296, 0, 2);
G2L["a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a4"]["Text"] = [[]];
G2L["a4"]["Name"] = [[Slash]];
G2L["a4"]["Position"] = UDim2.new(-0.005, 0, 0.25397, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Slash.UIGradient
G2L["a5"] = Instance.new("UIGradient", G2L["a4"]);
G2L["a5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(65, 84, 93)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(82, 106, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(65, 84, 93))};


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.UICorner
G2L["a6"] = Instance.new("UICorner", G2L["97"]);
G2L["a6"]["CornerRadius"] = UDim.new(0, 1);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Tab
G2L["a7"] = Instance.new("UIStroke", G2L["97"]);
G2L["a7"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["a7"]["Name"] = [[Tab]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels
G2L["a8"] = Instance.new("Folder", G2L["97"]);
G2L["a8"]["Name"] = [[Labels]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["a9"] = Instance.new("TextLabel", G2L["a8"]);
G2L["a9"]["TextWrapped"] = true;
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["TextSize"] = 14;
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a9"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["a9"]["BackgroundTransparency"] = 1;
G2L["a9"]["Size"] = UDim2.new(0, 106, 0, 23);
G2L["a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a9"]["Text"] = [[enable aimbot]];
G2L["a9"]["Name"] = [[Name]];
G2L["a9"]["Position"] = UDim2.new(0, 0, 0.29567, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["aa"] = Instance.new("UIStroke", G2L["a9"]);
G2L["aa"]["Thickness"] = 1.5;
G2L["aa"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["aa"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["ab"] = Instance.new("TextLabel", G2L["a8"]);
G2L["ab"]["TextWrapped"] = true;
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["TextSize"] = 14;
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ab"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["ab"]["BackgroundTransparency"] = 1;
G2L["ab"]["Size"] = UDim2.new(0, 59, 0, 23);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Text"] = [[hit part]];
G2L["ab"]["Name"] = [[Name]];
G2L["ab"]["Position"] = UDim2.new(0.02397, 0, 0.50995, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["ac"] = Instance.new("UIStroke", G2L["ab"]);
G2L["ac"]["Thickness"] = 1.5;
G2L["ac"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["ac"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["ad"] = Instance.new("TextLabel", G2L["a8"]);
G2L["ad"]["TextWrapped"] = true;
G2L["ad"]["BorderSizePixel"] = 0;
G2L["ad"]["TextSize"] = 14;
G2L["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ad"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["ad"]["BackgroundTransparency"] = 1;
G2L["ad"]["Size"] = UDim2.new(0, 62, 0, 23);
G2L["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ad"]["Text"] = [[aim type]];
G2L["ad"]["Name"] = [[Name]];
G2L["ad"]["Position"] = UDim2.new(0.01712, 0, 0.73138, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["ae"] = Instance.new("UIStroke", G2L["ad"]);
G2L["ae"]["Thickness"] = 1.5;
G2L["ae"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["ae"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons
G2L["af"] = Instance.new("Folder", G2L["97"]);
G2L["af"]["Name"] = [[Buttons]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["b0"] = Instance.new("TextButton", G2L["af"]);
G2L["b0"]["BorderSizePixel"] = 0;
G2L["b0"]["TextSize"] = 14;
G2L["b0"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["b0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b0"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["Text"] = [[]];
G2L["b0"]["Name"] = [[Button]];
G2L["b0"]["Position"] = UDim2.new(0.6536, 0, 0.321, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.UICorner
G2L["b1"] = Instance.new("UICorner", G2L["b0"]);
G2L["b1"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Border
G2L["b2"] = Instance.new("UIStroke", G2L["b0"]);
G2L["b2"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["b2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["b2"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["b3"] = Instance.new("TextButton", G2L["af"]);
G2L["b3"]["BorderSizePixel"] = 0;
G2L["b3"]["TextSize"] = 14;
G2L["b3"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["b3"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["b3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b3"]["BackgroundTransparency"] = 1;
G2L["b3"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["b3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b3"]["Text"] = [[+]];
G2L["b3"]["Name"] = [[Button]];
G2L["b3"]["Position"] = UDim2.new(0.89035, 0, 0.32857, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Contextual
G2L["b4"] = Instance.new("UIStroke", G2L["b3"]);
G2L["b4"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["b4"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Keybinds
G2L["b5"] = Instance.new("Folder", G2L["97"]);
G2L["b5"]["Name"] = [[Keybinds]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Keybinds.Keybind
G2L["b6"] = Instance.new("TextButton", G2L["b5"]);
G2L["b6"]["TextWrapped"] = true;
G2L["b6"]["BorderSizePixel"] = 0;
G2L["b6"]["TextSize"] = 14;
G2L["b6"]["TextColor3"] = Color3.fromRGB(129, 129, 129);
G2L["b6"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["b6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b6"]["Size"] = UDim2.new(0, 35, 0, 17);
G2L["b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b6"]["Text"] = [[-]];
G2L["b6"]["Name"] = [[Keybind]];
G2L["b6"]["Position"] = UDim2.new(0.74206, 0, 0.32186, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Keybinds.Keybind.UICorner
G2L["b7"] = Instance.new("UICorner", G2L["b6"]);
G2L["b7"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Keybinds.Keybind.Border
G2L["b8"] = Instance.new("UIStroke", G2L["b6"]);
G2L["b8"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["b8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["b8"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Keybinds.Keybind.Contextual
G2L["b9"] = Instance.new("UIStroke", G2L["b6"]);
G2L["b9"]["Color"] = Color3.fromRGB(22, 22, 22);
G2L["b9"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns
G2L["ba"] = Instance.new("Folder", G2L["97"]);
G2L["ba"]["Name"] = [[Dropdowns]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown
G2L["bb"] = Instance.new("TextButton", G2L["ba"]);
G2L["bb"]["TextWrapped"] = true;
G2L["bb"]["BorderSizePixel"] = 0;
G2L["bb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["bb"]["TextSize"] = 14;
G2L["bb"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["bb"]["TextColor3"] = Color3.fromRGB(129, 129, 129);
G2L["bb"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["bb"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["bb"]["Size"] = UDim2.new(0, 128, 0, 23);
G2L["bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bb"]["Text"] = [[head]];
G2L["bb"]["Name"] = [[Dropdown]];
G2L["bb"]["Position"] = UDim2.new(0.52347, 0, 0.521, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.UICorner
G2L["bc"] = Instance.new("UICorner", G2L["bb"]);
G2L["bc"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.Border
G2L["bd"] = Instance.new("UIStroke", G2L["bb"]);
G2L["bd"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["bd"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["bd"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.UIPadding
G2L["be"] = Instance.new("UIPadding", G2L["bb"]);
G2L["be"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.Plus
G2L["bf"] = Instance.new("TextLabel", G2L["bb"]);
G2L["bf"]["TextWrapped"] = true;
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["TextSize"] = 16;
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bf"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["bf"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["bf"]["BackgroundTransparency"] = 1;
G2L["bf"]["Size"] = UDim2.new(0, 20, 0, 23);
G2L["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["Text"] = [[+]];
G2L["bf"]["Name"] = [[Plus]];
G2L["bf"]["Position"] = UDim2.new(0.82532, 0, -0.04098, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.Plus.Contextual
G2L["c0"] = Instance.new("UIStroke", G2L["bf"]);
G2L["c0"]["Thickness"] = 1.5;
G2L["c0"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["c0"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown
G2L["c1"] = Instance.new("TextButton", G2L["ba"]);
G2L["c1"]["TextWrapped"] = true;
G2L["c1"]["BorderSizePixel"] = 0;
G2L["c1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c1"]["TextSize"] = 14;
G2L["c1"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["c1"]["TextColor3"] = Color3.fromRGB(129, 129, 129);
G2L["c1"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["c1"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c1"]["Size"] = UDim2.new(0, 104, 0, 23);
G2L["c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c1"]["Text"] = [[memory]];
G2L["c1"]["Name"] = [[Dropdown]];
G2L["c1"]["Position"] = UDim2.new(0.60223, 0, 0.74243, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.UICorner
G2L["c2"] = Instance.new("UICorner", G2L["c1"]);
G2L["c2"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.Border
G2L["c3"] = Instance.new("UIStroke", G2L["c1"]);
G2L["c3"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["c3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["c3"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.UIPadding
G2L["c4"] = Instance.new("UIPadding", G2L["c1"]);
G2L["c4"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.Plus
G2L["c5"] = Instance.new("TextLabel", G2L["c1"]);
G2L["c5"]["TextWrapped"] = true;
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["TextSize"] = 16;
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c5"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["c5"]["BackgroundTransparency"] = 1;
G2L["c5"]["Size"] = UDim2.new(0, 20, 0, 23);
G2L["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["Text"] = [[+]];
G2L["c5"]["Name"] = [[Plus]];
G2L["c5"]["Position"] = UDim2.new(0.79252, 0, -0.04098, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.Plus.Contextual
G2L["c6"] = Instance.new("UIStroke", G2L["c5"]);
G2L["c6"]["Thickness"] = 1.5;
G2L["c6"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["c6"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent
G2L["c7"] = Instance.new("Frame", G2L["96"]);
G2L["c7"]["ZIndex"] = 3;
G2L["c7"]["BorderSizePixel"] = 0;
G2L["c7"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["c7"]["ClipsDescendants"] = true;
G2L["c7"]["Size"] = UDim2.new(0, 293, 0, 248);
G2L["c7"]["Position"] = UDim2.new(0.01791, 0, 0.44697, 0);
G2L["c7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c7"]["Name"] = [[TabContent]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe
G2L["c8"] = Instance.new("Frame", G2L["c7"]);
G2L["c8"]["ZIndex"] = 3;
G2L["c8"]["BorderSizePixel"] = 0;
G2L["c8"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 26);
G2L["c8"]["ClipsDescendants"] = true;
G2L["c8"]["Size"] = UDim2.new(0, 296, 0, 33);
G2L["c8"]["Position"] = UDim2.new(-0.00126, 0, 0.00281, 0);
G2L["c8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c8"]["Name"] = [[Upframe]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.UICorner
G2L["c9"] = Instance.new("UICorner", G2L["c8"]);
G2L["c9"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.TabName
G2L["ca"] = Instance.new("TextLabel", G2L["c8"]);
G2L["ca"]["BorderSizePixel"] = 0;
G2L["ca"]["TextSize"] = 14;
G2L["ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ca"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["ca"]["BackgroundTransparency"] = 1;
G2L["ca"]["Size"] = UDim2.new(0, 42, 0, 21);
G2L["ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ca"]["Text"] = [[misc]];
G2L["ca"]["Name"] = [[TabName]];
G2L["ca"]["Position"] = UDim2.new(0.00338, 0, 0.15459, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.TabName.Contextual
G2L["cb"] = Instance.new("UIStroke", G2L["ca"]);
G2L["cb"]["Thickness"] = 1.5;
G2L["cb"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["cb"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Slash
G2L["cc"] = Instance.new("TextLabel", G2L["c7"]);
G2L["cc"]["TextWrapped"] = true;
G2L["cc"]["BorderSizePixel"] = 0;
G2L["cc"]["TextSize"] = 18;
G2L["cc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cc"]["TextColor3"] = Color3.fromRGB(0, 136, 177);
G2L["cc"]["Size"] = UDim2.new(0, 297, 0, 2);
G2L["cc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["cc"]["Text"] = [[]];
G2L["cc"]["Name"] = [[Slash]];
G2L["cc"]["Position"] = UDim2.new(-0.005, 0, 0.13581, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Slash.UIGradient
G2L["cd"] = Instance.new("UIGradient", G2L["cc"]);
G2L["cd"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(65, 84, 93)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(82, 106, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(65, 84, 93))};


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Tab
G2L["ce"] = Instance.new("UIStroke", G2L["c7"]);
G2L["ce"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["ce"]["Name"] = [[Tab]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.UICorner
G2L["cf"] = Instance.new("UICorner", G2L["c7"]);
G2L["cf"]["CornerRadius"] = UDim.new(0, 1);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels
G2L["d0"] = Instance.new("Folder", G2L["c7"]);
G2L["d0"]["Name"] = [[Labels]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["d1"] = Instance.new("TextLabel", G2L["d0"]);
G2L["d1"]["TextWrapped"] = true;
G2L["d1"]["BorderSizePixel"] = 0;
G2L["d1"]["TextSize"] = 14;
G2L["d1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d1"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d1"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["d1"]["BackgroundTransparency"] = 1;
G2L["d1"]["Size"] = UDim2.new(0, 108, 0, 23);
G2L["d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d1"]["Text"] = [[draw fov circle]];
G2L["d1"]["Name"] = [[Name]];
G2L["d1"]["Position"] = UDim2.new(0.01706, 0, 0.17067, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["d2"] = Instance.new("UIStroke", G2L["d1"]);
G2L["d2"]["Thickness"] = 1.5;
G2L["d2"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["d2"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["d3"] = Instance.new("TextLabel", G2L["d0"]);
G2L["d3"]["TextWrapped"] = true;
G2L["d3"]["BorderSizePixel"] = 0;
G2L["d3"]["TextSize"] = 14;
G2L["d3"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d3"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["d3"]["BackgroundTransparency"] = 1;
G2L["d3"]["Size"] = UDim2.new(0, 78, 0, 23);
G2L["d3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d3"]["Text"] = [[smart fov]];
G2L["d3"]["Name"] = [[Name]];
G2L["d3"]["Position"] = UDim2.new(0.02389, 0, 0.28415, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["d4"] = Instance.new("UIStroke", G2L["d3"]);
G2L["d4"]["Thickness"] = 1.5;
G2L["d4"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["d4"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["d5"] = Instance.new("TextLabel", G2L["d0"]);
G2L["d5"]["TextWrapped"] = true;
G2L["d5"]["BorderSizePixel"] = 0;
G2L["d5"]["TextSize"] = 14;
G2L["d5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d5"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["d5"]["BackgroundTransparency"] = 1;
G2L["d5"]["Size"] = UDim2.new(0, 122, 0, 23);
G2L["d5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d5"]["Text"] = [[fov animation]];
G2L["d5"]["Name"] = [[Name]];
G2L["d5"]["Position"] = UDim2.new(0.02395, 0, 0.40074, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["d6"] = Instance.new("UIStroke", G2L["d5"]);
G2L["d6"]["Thickness"] = 1.5;
G2L["d6"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["d6"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["d7"] = Instance.new("TextLabel", G2L["d0"]);
G2L["d7"]["TextWrapped"] = true;
G2L["d7"]["BorderSizePixel"] = 0;
G2L["d7"]["TextSize"] = 14;
G2L["d7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d7"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["d7"]["BackgroundTransparency"] = 1;
G2L["d7"]["Size"] = UDim2.new(0, 121, 0, 23);
G2L["d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d7"]["Text"] = [[aimbot indicator]];
G2L["d7"]["Name"] = [[Name]];
G2L["d7"]["Position"] = UDim2.new(0.0273, 0, 0.51744, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["d8"] = Instance.new("UIStroke", G2L["d7"]);
G2L["d8"]["Thickness"] = 1.5;
G2L["d8"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["d8"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["d9"] = Instance.new("TextLabel", G2L["d0"]);
G2L["d9"]["TextWrapped"] = true;
G2L["d9"]["BorderSizePixel"] = 0;
G2L["d9"]["TextSize"] = 14;
G2L["d9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d9"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["d9"]["BackgroundTransparency"] = 1;
G2L["d9"]["Size"] = UDim2.new(0, 121, 0, 23);
G2L["d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d9"]["Text"] = [[locked line]];
G2L["d9"]["Name"] = [[Name]];
G2L["d9"]["Position"] = UDim2.new(0.0273, 0, 0.63841, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["da"] = Instance.new("UIStroke", G2L["d9"]);
G2L["da"]["Thickness"] = 1.5;
G2L["da"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["da"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker
G2L["db"] = Instance.new("Folder", G2L["c7"]);
G2L["db"]["Name"] = [[ColorPicker]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker
G2L["dc"] = Instance.new("TextButton", G2L["db"]);
G2L["dc"]["TextWrapped"] = true;
G2L["dc"]["BorderSizePixel"] = 0;
G2L["dc"]["TextSize"] = 14;
G2L["dc"]["TextColor3"] = Color3.fromRGB(129, 129, 129);
G2L["dc"]["BackgroundColor3"] = Color3.fromRGB(67, 144, 186);
G2L["dc"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["dc"]["Size"] = UDim2.new(0, 35, 0, 17);
G2L["dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dc"]["Text"] = [[]];
G2L["dc"]["Name"] = [[ColorPicker]];
G2L["dc"]["Position"] = UDim2.new(0.75921, 0, 0.16863, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.UICorner
G2L["dd"] = Instance.new("UICorner", G2L["dc"]);
G2L["dd"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.Border
G2L["de"] = Instance.new("UIStroke", G2L["dc"]);
G2L["de"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["de"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["de"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.Contextual
G2L["df"] = Instance.new("UIStroke", G2L["dc"]);
G2L["df"]["Color"] = Color3.fromRGB(22, 22, 22);
G2L["df"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker
G2L["e0"] = Instance.new("TextButton", G2L["db"]);
G2L["e0"]["TextWrapped"] = true;
G2L["e0"]["BorderSizePixel"] = 0;
G2L["e0"]["TextSize"] = 14;
G2L["e0"]["TextColor3"] = Color3.fromRGB(129, 129, 129);
G2L["e0"]["BackgroundColor3"] = Color3.fromRGB(54, 110, 123);
G2L["e0"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e0"]["Size"] = UDim2.new(0, 35, 0, 17);
G2L["e0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e0"]["Text"] = [[]];
G2L["e0"]["Name"] = [[ColorPicker]];
G2L["e0"]["Position"] = UDim2.new(0.75921, 0, 0.26944, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.UICorner
G2L["e1"] = Instance.new("UICorner", G2L["e0"]);
G2L["e1"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.Border
G2L["e2"] = Instance.new("UIStroke", G2L["e0"]);
G2L["e2"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["e2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["e2"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.Contextual
G2L["e3"] = Instance.new("UIStroke", G2L["e0"]);
G2L["e3"]["Color"] = Color3.fromRGB(22, 22, 22);
G2L["e3"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker
G2L["e4"] = Instance.new("TextButton", G2L["db"]);
G2L["e4"]["TextWrapped"] = true;
G2L["e4"]["BorderSizePixel"] = 0;
G2L["e4"]["TextSize"] = 14;
G2L["e4"]["TextColor3"] = Color3.fromRGB(129, 129, 129);
G2L["e4"]["BackgroundColor3"] = Color3.fromRGB(68, 142, 185);
G2L["e4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e4"]["Size"] = UDim2.new(0, 35, 0, 17);
G2L["e4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e4"]["Text"] = [[]];
G2L["e4"]["Name"] = [[ColorPicker]];
G2L["e4"]["Position"] = UDim2.new(0.82065, 0, 0.5275, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.UICorner
G2L["e5"] = Instance.new("UICorner", G2L["e4"]);
G2L["e5"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.Border
G2L["e6"] = Instance.new("UIStroke", G2L["e4"]);
G2L["e6"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["e6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["e6"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.Contextual
G2L["e7"] = Instance.new("UIStroke", G2L["e4"]);
G2L["e7"]["Color"] = Color3.fromRGB(22, 22, 22);
G2L["e7"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker
G2L["e8"] = Instance.new("TextButton", G2L["db"]);
G2L["e8"]["TextWrapped"] = true;
G2L["e8"]["BorderSizePixel"] = 0;
G2L["e8"]["TextSize"] = 14;
G2L["e8"]["TextColor3"] = Color3.fromRGB(129, 129, 129);
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(67, 142, 189);
G2L["e8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e8"]["Size"] = UDim2.new(0, 35, 0, 17);
G2L["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e8"]["Text"] = [[]];
G2L["e8"]["Name"] = [[ColorPicker]];
G2L["e8"]["Position"] = UDim2.new(0.82065, 0, 0.64847, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.UICorner
G2L["e9"] = Instance.new("UICorner", G2L["e8"]);
G2L["e9"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.Border
G2L["ea"] = Instance.new("UIStroke", G2L["e8"]);
G2L["ea"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["ea"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["ea"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.ColorPicker.ColorPicker.Contextual
G2L["eb"] = Instance.new("UIStroke", G2L["e8"]);
G2L["eb"]["Color"] = Color3.fromRGB(22, 22, 22);
G2L["eb"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns
G2L["ec"] = Instance.new("Folder", G2L["c7"]);
G2L["ec"]["Name"] = [[Dropdowns]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown
G2L["ed"] = Instance.new("TextButton", G2L["ec"]);
G2L["ed"]["TextWrapped"] = true;
G2L["ed"]["BorderSizePixel"] = 0;
G2L["ed"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ed"]["TextSize"] = 14;
G2L["ed"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["ed"]["TextColor3"] = Color3.fromRGB(129, 129, 129);
G2L["ed"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["ed"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ed"]["Size"] = UDim2.new(0, 128, 0, 23);
G2L["ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ed"]["Text"] = [[none]];
G2L["ed"]["Name"] = [[Dropdown]];
G2L["ed"]["Position"] = UDim2.new(0.53712, 0, 0.40003, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.UICorner
G2L["ee"] = Instance.new("UICorner", G2L["ed"]);
G2L["ee"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.Border
G2L["ef"] = Instance.new("UIStroke", G2L["ed"]);
G2L["ef"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["ef"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["ef"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.UIPadding
G2L["f0"] = Instance.new("UIPadding", G2L["ed"]);
G2L["f0"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.Plus
G2L["f1"] = Instance.new("TextLabel", G2L["ed"]);
G2L["f1"]["TextWrapped"] = true;
G2L["f1"]["BorderSizePixel"] = 0;
G2L["f1"]["TextSize"] = 16;
G2L["f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f1"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["f1"]["BackgroundTransparency"] = 1;
G2L["f1"]["Size"] = UDim2.new(0, 20, 0, 23);
G2L["f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f1"]["Text"] = [[+]];
G2L["f1"]["Name"] = [[Plus]];
G2L["f1"]["Position"] = UDim2.new(0.82532, 0, -0.04098, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Dropdowns.Dropdown.Plus.Contextual
G2L["f2"] = Instance.new("UIStroke", G2L["f1"]);
G2L["f2"]["Thickness"] = 1.5;
G2L["f2"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["f2"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons
G2L["f3"] = Instance.new("Folder", G2L["c7"]);
G2L["f3"]["Name"] = [[Buttons]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["f4"] = Instance.new("TextButton", G2L["f3"]);
G2L["f4"]["TextWrapped"] = true;
G2L["f4"]["BorderSizePixel"] = 0;
G2L["f4"]["TextSize"] = 14;
G2L["f4"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f4"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["f4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f4"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f4"]["Text"] = [[]];
G2L["f4"]["Name"] = [[Button]];
G2L["f4"]["Position"] = UDim2.new(0.66748, 0, 0.16887, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.UICorner
G2L["f5"] = Instance.new("UICorner", G2L["f4"]);
G2L["f5"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Border
G2L["f6"] = Instance.new("UIStroke", G2L["f4"]);
G2L["f6"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["f6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["f6"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["f7"] = Instance.new("TextButton", G2L["f3"]);
G2L["f7"]["BorderSizePixel"] = 0;
G2L["f7"]["TextSize"] = 14;
G2L["f7"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["f7"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["f7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f7"]["BackgroundTransparency"] = 1;
G2L["f7"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["f7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f7"]["Text"] = [[+]];
G2L["f7"]["Name"] = [[Button]];
G2L["f7"]["Position"] = UDim2.new(0.9041, 0, 0.16728, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Contextual
G2L["f8"] = Instance.new("UIStroke", G2L["f7"]);
G2L["f8"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["f8"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["f9"] = Instance.new("TextButton", G2L["f3"]);
G2L["f9"]["TextWrapped"] = true;
G2L["f9"]["BorderSizePixel"] = 0;
G2L["f9"]["TextSize"] = 14;
G2L["f9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f9"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["f9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f9"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f9"]["Text"] = [[]];
G2L["f9"]["Name"] = [[Button]];
G2L["f9"]["Position"] = UDim2.new(0.66748, 0, 0.26968, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.UICorner
G2L["fa"] = Instance.new("UICorner", G2L["f9"]);
G2L["fa"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Border
G2L["fb"] = Instance.new("UIStroke", G2L["f9"]);
G2L["fb"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["fb"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["fb"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["fc"] = Instance.new("TextButton", G2L["f3"]);
G2L["fc"]["BorderSizePixel"] = 0;
G2L["fc"]["TextSize"] = 14;
G2L["fc"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["fc"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["fc"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["fc"]["BackgroundTransparency"] = 1;
G2L["fc"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["fc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fc"]["Text"] = [[+]];
G2L["fc"]["Name"] = [[Button]];
G2L["fc"]["Position"] = UDim2.new(0.9041, 0, 0.26809, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Contextual
G2L["fd"] = Instance.new("UIStroke", G2L["fc"]);
G2L["fd"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["fd"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["fe"] = Instance.new("TextButton", G2L["f3"]);
G2L["fe"]["TextWrapped"] = true;
G2L["fe"]["BorderSizePixel"] = 0;
G2L["fe"]["TextSize"] = 14;
G2L["fe"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fe"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["fe"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["fe"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["fe"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fe"]["Text"] = [[]];
G2L["fe"]["Name"] = [[Button]];
G2L["fe"]["Position"] = UDim2.new(0.72891, 0, 0.52774, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.UICorner
G2L["ff"] = Instance.new("UICorner", G2L["fe"]);
G2L["ff"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Border
G2L["100"] = Instance.new("UIStroke", G2L["fe"]);
G2L["100"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["100"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["100"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["101"] = Instance.new("TextButton", G2L["f3"]);
G2L["101"]["TextWrapped"] = true;
G2L["101"]["BorderSizePixel"] = 0;
G2L["101"]["TextSize"] = 14;
G2L["101"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["101"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["101"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["101"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["101"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["101"]["Text"] = [[]];
G2L["101"]["Name"] = [[Button]];
G2L["101"]["Position"] = UDim2.new(0.72891, 0, 0.64871, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.UICorner
G2L["102"] = Instance.new("UICorner", G2L["101"]);
G2L["102"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Border
G2L["103"] = Instance.new("UIStroke", G2L["101"]);
G2L["103"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["103"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["103"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent
G2L["104"] = Instance.new("Frame", G2L["96"]);
G2L["104"]["ZIndex"] = 3;
G2L["104"]["BorderSizePixel"] = 0;
G2L["104"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["104"]["ClipsDescendants"] = true;
G2L["104"]["Size"] = UDim2.new(0, 283, 0, 392);
G2L["104"]["Position"] = UDim2.new(0.51412, 0, 0.13951, 0);
G2L["104"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["104"]["Name"] = [[TabContent]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe
G2L["105"] = Instance.new("Frame", G2L["104"]);
G2L["105"]["ZIndex"] = 3;
G2L["105"]["BorderSizePixel"] = 0;
G2L["105"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 26);
G2L["105"]["ClipsDescendants"] = true;
G2L["105"]["Size"] = UDim2.new(0, 299, 0, 34);
G2L["105"]["Position"] = UDim2.new(-0.00126, 0, -0, 0);
G2L["105"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["105"]["Name"] = [[Upframe]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.UICorner
G2L["106"] = Instance.new("UICorner", G2L["105"]);
G2L["106"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.TabName
G2L["107"] = Instance.new("TextLabel", G2L["105"]);
G2L["107"]["BorderSizePixel"] = 0;
G2L["107"]["TextSize"] = 14;
G2L["107"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["107"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["107"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["107"]["BackgroundTransparency"] = 1;
G2L["107"]["Size"] = UDim2.new(0, 42, 0, 21);
G2L["107"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["107"]["Text"] = [[configs]];
G2L["107"]["Name"] = [[TabName]];
G2L["107"]["Position"] = UDim2.new(0.02915, 0, 0.17945, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Upframe.TabName.Contextual
G2L["108"] = Instance.new("UIStroke", G2L["107"]);
G2L["108"]["Thickness"] = 1.5;
G2L["108"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["108"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Slash
G2L["109"] = Instance.new("TextLabel", G2L["104"]);
G2L["109"]["TextWrapped"] = true;
G2L["109"]["BorderSizePixel"] = 0;
G2L["109"]["TextSize"] = 18;
G2L["109"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["109"]["FontFace"] = Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["109"]["TextColor3"] = Color3.fromRGB(0, 136, 177);
G2L["109"]["Size"] = UDim2.new(0, 293, 0, 2);
G2L["109"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["109"]["Text"] = [[]];
G2L["109"]["Name"] = [[Slash]];
G2L["109"]["Position"] = UDim2.new(-0.00126, 0, 0.08895, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Slash.UIGradient
G2L["10a"] = Instance.new("UIGradient", G2L["109"]);
G2L["10a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(65, 84, 93)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(82, 106, 117)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(65, 84, 93))};


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Tab
G2L["10b"] = Instance.new("UIStroke", G2L["104"]);
G2L["10b"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["10b"]["Name"] = [[Tab]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.UICorner
G2L["10c"] = Instance.new("UICorner", G2L["104"]);
G2L["10c"]["CornerRadius"] = UDim.new(0, 1);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.MultiDropdowns
G2L["10d"] = Instance.new("Folder", G2L["104"]);
G2L["10d"]["Name"] = [[MultiDropdowns]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.MultiDropdowns.MultiDropdown
G2L["10e"] = Instance.new("TextButton", G2L["10d"]);
G2L["10e"]["TextWrapped"] = true;
G2L["10e"]["BorderSizePixel"] = 0;
G2L["10e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10e"]["TextSize"] = 14;
G2L["10e"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["10e"]["TextColor3"] = Color3.fromRGB(129, 129, 129);
G2L["10e"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["10e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10e"]["Size"] = UDim2.new(0, 104, 0, 23);
G2L["10e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10e"]["Text"] = [[none]];
G2L["10e"]["Name"] = [[MultiDropdown]];
G2L["10e"]["Position"] = UDim2.new(0.5987, 0, 0.456, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.MultiDropdowns.MultiDropdown.UICorner
G2L["10f"] = Instance.new("UICorner", G2L["10e"]);
G2L["10f"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.MultiDropdowns.MultiDropdown.Border
G2L["110"] = Instance.new("UIStroke", G2L["10e"]);
G2L["110"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["110"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["110"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.MultiDropdowns.MultiDropdown.UIPadding
G2L["111"] = Instance.new("UIPadding", G2L["10e"]);
G2L["111"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.MultiDropdowns.MultiDropdown.Plus
G2L["112"] = Instance.new("TextLabel", G2L["10e"]);
G2L["112"]["TextWrapped"] = true;
G2L["112"]["BorderSizePixel"] = 0;
G2L["112"]["TextSize"] = 16;
G2L["112"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["112"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["112"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["112"]["BackgroundTransparency"] = 1;
G2L["112"]["Size"] = UDim2.new(0, 20, 0, 23);
G2L["112"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["112"]["Text"] = [[+]];
G2L["112"]["Name"] = [[Plus]];
G2L["112"]["Position"] = UDim2.new(0.79252, 0, -0.04098, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.MultiDropdowns.MultiDropdown.Plus.Contextual
G2L["113"] = Instance.new("UIStroke", G2L["112"]);
G2L["113"]["Thickness"] = 1.5;
G2L["113"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["113"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels
G2L["114"] = Instance.new("Folder", G2L["104"]);
G2L["114"]["Name"] = [[Labels]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["115"] = Instance.new("TextLabel", G2L["114"]);
G2L["115"]["TextWrapped"] = true;
G2L["115"]["BorderSizePixel"] = 0;
G2L["115"]["TextSize"] = 14;
G2L["115"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["115"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["115"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["115"]["BackgroundTransparency"] = 1;
G2L["115"]["Size"] = UDim2.new(0, 79, 0, 23);
G2L["115"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["115"]["Text"] = [[smoothness]];
G2L["115"]["Name"] = [[Name]];
G2L["115"]["Position"] = UDim2.new(0.01767, 0, 0.11728, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["116"] = Instance.new("UIStroke", G2L["115"]);
G2L["116"]["Thickness"] = 1.5;
G2L["116"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["116"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["117"] = Instance.new("TextLabel", G2L["114"]);
G2L["117"]["TextWrapped"] = true;
G2L["117"]["BorderSizePixel"] = 0;
G2L["117"]["TextSize"] = 14;
G2L["117"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["117"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["117"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["117"]["BackgroundTransparency"] = 1;
G2L["117"]["Size"] = UDim2.new(0, 95, 0, 23);
G2L["117"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["117"]["Text"] = [[aimbot offset]];
G2L["117"]["Name"] = [[Name]];
G2L["117"]["Position"] = UDim2.new(0.02601, 0, 0.18009, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["118"] = Instance.new("UIStroke", G2L["117"]);
G2L["118"]["Thickness"] = 1.5;
G2L["118"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["118"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["119"] = Instance.new("TextLabel", G2L["114"]);
G2L["119"]["TextWrapped"] = true;
G2L["119"]["BorderSizePixel"] = 0;
G2L["119"]["TextSize"] = 14;
G2L["119"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["119"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["119"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["119"]["BackgroundTransparency"] = 1;
G2L["119"]["Size"] = UDim2.new(0, 80, 0, 23);
G2L["119"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["119"]["Text"] = [[prediction]];
G2L["119"]["Name"] = [[Name]];
G2L["119"]["Position"] = UDim2.new(0.0212, 0, 0.2429, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["11a"] = Instance.new("UIStroke", G2L["119"]);
G2L["11a"]["Thickness"] = 1.5;
G2L["11a"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["11a"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["11b"] = Instance.new("TextLabel", G2L["114"]);
G2L["11b"]["TextWrapped"] = true;
G2L["11b"]["BorderSizePixel"] = 0;
G2L["11b"]["TextSize"] = 14;
G2L["11b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11b"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["11b"]["BackgroundTransparency"] = 1;
G2L["11b"]["Size"] = UDim2.new(0, 92, 0, 23);
G2L["11b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11b"]["Text"] = [[target strafe]];
G2L["11b"]["Name"] = [[Name]];
G2L["11b"]["Position"] = UDim2.new(0.03407, 0, 0.38109, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["11c"] = Instance.new("UIStroke", G2L["11b"]);
G2L["11c"]["Thickness"] = 1.5;
G2L["11c"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["11c"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["11d"] = Instance.new("TextLabel", G2L["114"]);
G2L["11d"]["TextWrapped"] = true;
G2L["11d"]["BorderSizePixel"] = 0;
G2L["11d"]["TextSize"] = 14;
G2L["11d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11d"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["11d"]["BackgroundTransparency"] = 1;
G2L["11d"]["Size"] = UDim2.new(0, 85, 0, 23);
G2L["11d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11d"]["Text"] = [[aimbot shake]];
G2L["11d"]["Name"] = [[Name]];
G2L["11d"]["Position"] = UDim2.new(0.03407, 0, 0.30823, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["11e"] = Instance.new("UIStroke", G2L["11d"]);
G2L["11e"]["Thickness"] = 1.5;
G2L["11e"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["11e"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name
G2L["11f"] = Instance.new("TextLabel", G2L["114"]);
G2L["11f"]["TextWrapped"] = true;
G2L["11f"]["BorderSizePixel"] = 0;
G2L["11f"]["TextSize"] = 14;
G2L["11f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11f"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["11f"]["BackgroundTransparency"] = 1;
G2L["11f"]["Size"] = UDim2.new(0, 92, 0, 23);
G2L["11f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11f"]["Text"] = [[aimbot checks]];
G2L["11f"]["Name"] = [[Name]];
G2L["11f"]["Position"] = UDim2.new(0.03661, 0, 0.45751, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Labels.Name.Contextual
G2L["120"] = Instance.new("UIStroke", G2L["11f"]);
G2L["120"]["Thickness"] = 1.5;
G2L["120"]["Color"] = Color3.fromRGB(33, 31, 33);
G2L["120"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons
G2L["121"] = Instance.new("Folder", G2L["104"]);
G2L["121"]["Name"] = [[Buttons]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["122"] = Instance.new("TextButton", G2L["121"]);
G2L["122"]["BorderSizePixel"] = 0;
G2L["122"]["TextSize"] = 14;
G2L["122"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["122"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["122"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["122"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["122"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["122"]["Text"] = [[]];
G2L["122"]["Name"] = [[Button]];
G2L["122"]["Position"] = UDim2.new(0.84001, 0, 0.13005, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.UICorner
G2L["123"] = Instance.new("UICorner", G2L["122"]);
G2L["123"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Border
G2L["124"] = Instance.new("UIStroke", G2L["122"]);
G2L["124"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["124"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["124"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["125"] = Instance.new("TextButton", G2L["121"]);
G2L["125"]["BorderSizePixel"] = 0;
G2L["125"]["TextSize"] = 14;
G2L["125"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["125"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["125"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["125"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["125"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["125"]["Text"] = [[]];
G2L["125"]["Name"] = [[Button]];
G2L["125"]["Position"] = UDim2.new(0.84001, 0, 0.19537, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.UICorner
G2L["126"] = Instance.new("UICorner", G2L["125"]);
G2L["126"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Border
G2L["127"] = Instance.new("UIStroke", G2L["125"]);
G2L["127"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["127"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["127"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["128"] = Instance.new("TextButton", G2L["121"]);
G2L["128"]["BorderSizePixel"] = 0;
G2L["128"]["TextSize"] = 14;
G2L["128"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["128"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["128"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["128"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["128"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["128"]["Text"] = [[]];
G2L["128"]["Name"] = [[Button]];
G2L["128"]["Position"] = UDim2.new(0.84001, 0, 0.25567, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.UICorner
G2L["129"] = Instance.new("UICorner", G2L["128"]);
G2L["129"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Border
G2L["12a"] = Instance.new("UIStroke", G2L["128"]);
G2L["12a"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["12a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["12a"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["12b"] = Instance.new("TextButton", G2L["121"]);
G2L["12b"]["BorderSizePixel"] = 0;
G2L["12b"]["TextSize"] = 14;
G2L["12b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12b"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["12b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12b"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["12b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12b"]["Text"] = [[]];
G2L["12b"]["Name"] = [[Button]];
G2L["12b"]["Position"] = UDim2.new(0.84001, 0, 0.38884, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.UICorner
G2L["12c"] = Instance.new("UICorner", G2L["12b"]);
G2L["12c"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Border
G2L["12d"] = Instance.new("UIStroke", G2L["12b"]);
G2L["12d"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["12d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["12d"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button
G2L["12e"] = Instance.new("TextButton", G2L["121"]);
G2L["12e"]["BorderSizePixel"] = 0;
G2L["12e"]["TextSize"] = 14;
G2L["12e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12e"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["12e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12e"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["12e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12e"]["Text"] = [[]];
G2L["12e"]["Name"] = [[Button]];
G2L["12e"]["Position"] = UDim2.new(0.84001, 0, 0.321, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.UICorner
G2L["12f"] = Instance.new("UICorner", G2L["12e"]);
G2L["12f"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Button.Border
G2L["130"] = Instance.new("UIStroke", G2L["12e"]);
G2L["130"]["Color"] = Color3.fromRGB(43, 43, 43);
G2L["130"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["130"]["Name"] = [[Border]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Plus
G2L["131"] = Instance.new("TextButton", G2L["121"]);
G2L["131"]["BorderSizePixel"] = 0;
G2L["131"]["TextSize"] = 14;
G2L["131"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["131"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["131"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["131"]["BackgroundTransparency"] = 1;
G2L["131"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["131"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["131"]["Text"] = [[+]];
G2L["131"]["Name"] = [[Plus]];
G2L["131"]["Position"] = UDim2.new(0.9094, 0, 0.12708, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Plus.Contextual
G2L["132"] = Instance.new("UIStroke", G2L["131"]);
G2L["132"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["132"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Plus
G2L["133"] = Instance.new("TextButton", G2L["121"]);
G2L["133"]["BorderSizePixel"] = 0;
G2L["133"]["TextSize"] = 14;
G2L["133"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["133"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["133"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["133"]["BackgroundTransparency"] = 1;
G2L["133"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["133"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["133"]["Text"] = [[+]];
G2L["133"]["Name"] = [[Plus]];
G2L["133"]["Position"] = UDim2.new(0.9094, 0, 0.1924, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Plus.Contextual
G2L["134"] = Instance.new("UIStroke", G2L["133"]);
G2L["134"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["134"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Plus
G2L["135"] = Instance.new("TextButton", G2L["121"]);
G2L["135"]["BorderSizePixel"] = 0;
G2L["135"]["TextSize"] = 14;
G2L["135"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["135"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["135"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["135"]["BackgroundTransparency"] = 1;
G2L["135"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["135"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["135"]["Text"] = [[+]];
G2L["135"]["Name"] = [[Plus]];
G2L["135"]["Position"] = UDim2.new(0.9094, 0, 0.2527, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Plus.Contextual
G2L["136"] = Instance.new("UIStroke", G2L["135"]);
G2L["136"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["136"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Plus
G2L["137"] = Instance.new("TextButton", G2L["121"]);
G2L["137"]["BorderSizePixel"] = 0;
G2L["137"]["TextSize"] = 14;
G2L["137"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["137"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["137"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["137"]["BackgroundTransparency"] = 1;
G2L["137"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["137"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["137"]["Text"] = [[+]];
G2L["137"]["Name"] = [[Plus]];
G2L["137"]["Position"] = UDim2.new(0.9094, 0, 0.38587, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Plus.Contextual
G2L["138"] = Instance.new("UIStroke", G2L["137"]);
G2L["138"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["138"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Plus
G2L["139"] = Instance.new("TextButton", G2L["121"]);
G2L["139"]["BorderSizePixel"] = 0;
G2L["139"]["TextSize"] = 14;
G2L["139"]["TextColor3"] = Color3.fromRGB(191, 187, 191);
G2L["139"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
G2L["139"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["139"]["BackgroundTransparency"] = 1;
G2L["139"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["139"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["139"]["Text"] = [[+]];
G2L["139"]["Name"] = [[Plus]];
G2L["139"]["Position"] = UDim2.new(0.9094, 0, 0.31803, 0);


-- StarterGui.Core.MainWindow.TabContent.aimbot.TabContent.Buttons.Plus.Contextual
G2L["13a"] = Instance.new("UIStroke", G2L["139"]);
G2L["13a"]["Color"] = Color3.fromRGB(26, 26, 26);
G2L["13a"]["Name"] = [[Contextual]];


-- StarterGui.Core.MainWindow.Window
G2L["13b"] = Instance.new("UIStroke", G2L["72"]);
G2L["13b"]["Color"] = Color3.fromRGB(17, 41, 71);
G2L["13b"]["Name"] = [[Window]];

return G2L["1"], require;
