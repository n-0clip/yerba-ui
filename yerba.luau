--[[
    		yerba interface

    creator: n-0clip
    original: yerba external

        ver: 1.3
    - The ui library

--]]

local Yerba = {}
Yerba.__index = Yerba

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer

local Fonts = {
	ComicNeue = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Inconsolata = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	SourceSans = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}

local Theme = {
	Background = Color3.fromRGB(12, 15, 13),
	Secondary = Color3.fromRGB(18, 18, 18),
	Tertiary = Color3.fromRGB(24, 24, 24),
	TopBar = Color3.fromRGB(32, 32, 32),
	Accent = Color3.fromRGB(82, 106, 117),
	AccentDark = Color3.fromRGB(65, 84, 93),
	AccentBlue = Color3.fromRGB(7, 101, 160),
	Border = Color3.fromRGB(43, 43, 43),
	BorderAccent = Color3.fromRGB(17, 41, 71),
	Text = Color3.fromRGB(191, 187, 191),
	TextDark = Color3.fromRGB(154, 151, 154),
	TextDarker = Color3.fromRGB(129, 129, 129),
	Divider = Color3.fromRGB(61, 67, 76),
	TabFrame = Color3.fromRGB(28, 28, 26),
	Stroke = Color3.fromRGB(33, 31, 33),
	Blue = Color3.fromRGB(67, 144, 186),
	Enabled = Color3.fromRGB(67, 144, 186),
	Disabled = Color3.fromRGB(24, 24, 24),
	Hover = Color3.fromRGB(35, 35, 35)
}

local function Create(instanceType, properties, children)
	local instance = Instance.new(instanceType)
	for prop, value in pairs(properties or {}) do
		instance[prop] = value
	end
	for _, child in pairs(children or {}) do
		child.Parent = instance
	end
	return instance
end

local function Tween(instance, properties, duration, easingStyle, easingDirection)
	local tween = TweenService:Create(
		instance,
		TweenInfo.new(duration or 0.2, easingStyle or Enum.EasingStyle.Quad, easingDirection or Enum.EasingDirection.Out),
		properties
	)
	tween:Play()
	return tween
end

local function AddCorner(parent, radius)
	return Create("UICorner", {
		CornerRadius = UDim.new(0, radius or 6),
		Parent = parent
	})
end

local function AddStroke(parent, color, thickness, mode)
	return Create("UIStroke", {
		Color = color or Theme.Border,
		Thickness = thickness or 1,
		ApplyStrokeMode = mode or Enum.ApplyStrokeMode.Border,
		Parent = parent
	})
end

local function AddContextualStroke(parent)
	return Create("UIStroke", {
		Name = "Contextual",
		Color = Theme.Stroke,
		Thickness = 1.5,
		Parent = parent
	})
end

local function AddGradientLine(parent, position, size)
	local line = Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		Size = size or UDim2.new(1, 0, 0, 2),
		Position = position or UDim2.new(0, 0, 1, -2),
		Parent = parent
	})
	Create("UIGradient", {
		Color = ColorSequence.new{
			ColorSequenceKeypoint.new(0, Theme.AccentDark),
			ColorSequenceKeypoint.new(0.5, Theme.Accent),
			ColorSequenceKeypoint.new(1, Theme.AccentDark)
		},
		Parent = line
	})
	return line
end

function Yerba:CreateWindow(title, subtitle)
	local Window = {}
	Window.Tabs = {}
	Window.ActiveTab = nil
	Window.OpenDropdowns = {}
	Window.OpenColorPickers = {}
	Window.OpenPlusMenus = {}
	Window.OpenKeybindMenus = {}
	Window.Visible = true

	local WINDOW_WIDTH = 620
	local WINDOW_HEIGHT = 480
	local TOPBAR_HEIGHT = 50
	local SECTION_WIDTH = 290
	local SECTION_GAP = 10
	local CONTENT_PADDING = 12

	local function CloseAllDropdowns()
		for _, dropdown in pairs(Window.OpenDropdowns) do
			if dropdown.Close then dropdown.Close() end
		end
		Window.OpenDropdowns = {}
	end

	local function CloseAllColorPickers()
		for _, picker in pairs(Window.OpenColorPickers) do
			if picker.Close then picker.Close() end
		end
		Window.OpenColorPickers = {}
	end

	local function CloseAllPlusMenus()
		for _, menu in pairs(Window.OpenPlusMenus) do
			if menu.Close then menu.Close() end
		end
		Window.OpenPlusMenus = {}
	end

	local function CloseAllKeybindMenus()
		for _, menu in pairs(Window.OpenKeybindMenus) do
			if menu.Close then menu.Close() end
		end
		Window.OpenKeybindMenus = {}
	end

	local function CloseAllPopups()
		CloseAllDropdowns()
		CloseAllColorPickers()
		CloseAllPlusMenus()
		CloseAllKeybindMenus()
	end

	local ScreenGui = Create("ScreenGui", {
		Name = "YerbaUI",
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		ResetOnSpawn = false,
		Parent = LocalPlayer:WaitForChild("PlayerGui")
	})

	local MainWindow = Create("Frame", {
		Name = "MainWindow",
		BackgroundColor3 = Theme.Background,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.new(0, WINDOW_WIDTH, 0, WINDOW_HEIGHT),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Parent = ScreenGui
	})
	AddCorner(MainWindow, 6)
	AddStroke(MainWindow, Theme.BorderAccent)

	local WindowScale = Create("UIScale", {
		Name = "Scale",
		Scale = 1,
		Parent = MainWindow
	})

	local TopBar = Create("Frame", {
		Name = "Upframe",
		BackgroundColor3 = Theme.TopBar,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Size = UDim2.new(1, 0, 0, TOPBAR_HEIGHT),
		Parent = MainWindow
	})
	AddCorner(TopBar, 6)
	AddGradientLine(TopBar, UDim2.new(0, 0, 1, -2), UDim2.new(1, 0, 0, 2))

	Create("ImageLabel", {
		Name = "Icon",
		BackgroundTransparency = 1,
		Image = "rbxassetid://74807357385705",
		Size = UDim2.new(0, 45, 0, 45),
		Position = UDim2.new(0, 3, 0.5, -22),
		Parent = TopBar
	})

	Create("Frame", {
		Name = "Divider",
		BackgroundColor3 = Theme.Divider,
		BorderSizePixel = 0,
		Size = UDim2.new(0, 1, 0, 30),
		Position = UDim2.new(0, 52, 0.5, -15),
		Parent = TopBar
	})

	local TabContainer = Create("Frame", {
		Name = "Tabs",
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 360, 0, 30),
		Position = UDim2.new(0, 60, 0.5, -15),
		Parent = TopBar
	})

	Create("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Padding = UDim.new(0, 8),
		SortOrder = Enum.SortOrder.LayoutOrder,
		Parent = TabContainer
	})

	local TabHover = Create("Frame", {
		Name = "TabHover",
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
		Size = UDim2.new(0, 50, 0, 2),
		Position = UDim2.new(0, 60, 0, 40),
		Parent = TopBar
	})
	AddCorner(TabHover, 2)
	Create("UIGradient", {
		Rotation = 90,
		Color = ColorSequence.new{
			ColorSequenceKeypoint.new(0, Theme.AccentDark),
			ColorSequenceKeypoint.new(0.5, Theme.Accent),
			ColorSequenceKeypoint.new(1, Theme.AccentDark)
		},
		Parent = TabHover
	})

	Create("Frame", {
		Name = "Divider",
		BackgroundColor3 = Theme.Divider,
		BorderSizePixel = 0,
		Size = UDim2.new(0, 1, 0, 30),
		Position = UDim2.new(0, 440, 0.5, -15),
		Parent = TopBar
	})

	local SearchFrame = Create("Frame", {
		Name = "Searchbox",
		BackgroundColor3 = Theme.Tertiary,
		Size = UDim2.new(0, 150, 0, 26),
		Position = UDim2.new(0, 455, 0.5, -13),
		Parent = TopBar
	})
	AddCorner(SearchFrame, 5)
	AddStroke(SearchFrame, Theme.Border)

	Create("ImageLabel", {
		Name = "Icon",
		BackgroundTransparency = 1,
		ImageColor3 = Color3.fromRGB(174, 174, 175),
		Image = "rbxassetid://128625562276776",
		Size = UDim2.new(0, 16, 0, 16),
		Position = UDim2.new(0, 6, 0.5, -8),
		Parent = SearchFrame
	})

	Create("TextBox", {
		Name = "Input",
		BackgroundTransparency = 1,
		FontFace = Fonts.Inconsolata,
		PlaceholderText = "search",
		PlaceholderColor3 = Theme.TextDark,
		Text = "",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(1, -30, 1, 0),
		Position = UDim2.new(0, 26, 0, 0),
		Parent = SearchFrame
	})

	local ContentArea = Create("Frame", {
		Name = "Content",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -CONTENT_PADDING*2, 1, -TOPBAR_HEIGHT - CONTENT_PADDING),
		Position = UDim2.new(0, CONTENT_PADDING, 0, TOPBAR_HEIGHT + CONTENT_PADDING/2),
		ClipsDescendants = true,
		Parent = MainWindow
	})

	local TabPages = Create("Folder", {
		Name = "TabContent",
		Parent = ContentArea
	})

	local dragging, dragInput, dragStart, startPos

	TopBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = MainWindow.Position
			CloseAllPopups()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	TopBar.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - dragStart
			MainWindow.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y
			)
		end
	end)

	local function ToggleWindow(show)
		Window.Visible = show
		CloseAllPopups()

		if show then
			MainWindow.Visible = true
			WindowScale.Scale = 0.9
			MainWindow.BackgroundTransparency = 0.5
			Tween(WindowScale, {Scale = 1}, 0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
			Tween(MainWindow, {BackgroundTransparency = 0}, 0.2)
		else
			Tween(WindowScale, {Scale = 0.9}, 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
			Tween(MainWindow, {BackgroundTransparency = 0.5}, 0.2)
			task.delay(0.2, function()
				if not Window.Visible then
					MainWindow.Visible = false
				end
			end)
		end
	end

	local function CreatePlusMenu(options)
		local PlusMenu = {}
		PlusMenu.Open = false

		local MenuFrame = Create("Frame", {
			Name = "PlusMenu",
			BackgroundColor3 = Theme.Secondary,
			BackgroundTransparency = 0.3,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 180, 0, 0),
			ClipsDescendants = true,
			Visible = false,
			ZIndex = 100,
			Parent = ScreenGui
		})
		AddCorner(MenuFrame, 6)
		AddStroke(MenuFrame, Theme.AccentBlue)

		local MenuHeader = Create("Frame", {
			Name = "Upframe",
			BackgroundColor3 = Theme.TabFrame,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 16, 0, 33),
			Position = UDim2.new(-0.04, 0, 0, 0),
			ZIndex = 101,
			Parent = MenuFrame
		})
		AddCorner(MenuHeader, 6)
		AddStroke(MenuHeader, Theme.AccentBlue)

		local MenuTitle = Create("TextLabel", {
			Name = "TabName",
			BackgroundTransparency = 1,
			FontFace = Fonts.Inconsolata,
			Text = options.Name or "additionals",
			TextColor3 = Theme.Text,
			TextSize = 14,
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0.04, 0, 0, 0),
			ZIndex = 102,
			Parent = MenuHeader
		})
		AddContextualStroke(MenuTitle)

		local MenuContent = Create("Frame", {
			Name = "Content",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -10, 1, -40),
			Position = UDim2.new(0, 5, 0, 38),
			ZIndex = 101,
			Parent = MenuFrame
		})

		Create("UIListLayout", {
			Padding = UDim.new(0, 5),
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = MenuContent
		})

		local InfoLabel = Create("TextLabel", {
			Name = "Info",
			BackgroundTransparency = 1,
			FontFace = Fonts.Inconsolata,
			Text = "additional settings",
			TextColor3 = Theme.TextDark,
			TextSize = 12,
			Size = UDim2.new(1, 0, 0, 20),
			ZIndex = 102,
			Parent = MenuContent
		})

		function PlusMenu.Open_()
			if PlusMenu.Open then return end

			CloseAllPopups()
			PlusMenu.Open = true
			table.insert(Window.OpenPlusMenus, PlusMenu)

			local btnPos = options.Button.AbsolutePosition
			MenuFrame.Position = UDim2.new(0, btnPos.X - 160, 0, btnPos.Y + 20)
			MenuFrame.Size = UDim2.new(0, 180, 0, 0)
			MenuFrame.Visible = true
			Tween(MenuFrame, {Size = UDim2.new(0, 180, 0, 70)}, 0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
		end

		function PlusMenu.Close()
			if not PlusMenu.Open then return end
			PlusMenu.Open = false
			Tween(MenuFrame, {Size = UDim2.new(0, 180, 0, 0)}, 0.15)
			task.delay(0.15, function()
				MenuFrame.Visible = false
			end)
		end

		PlusMenu.Frame = MenuFrame

		return PlusMenu
	end

	function Window:CreateTab(name)
		local Tab = {}
		Tab.Name = name
		Tab.Sections = {}

		local TabButton = Create("TextButton", {
			Name = name,
			BackgroundTransparency = 1,
			FontFace = Fonts.Inconsolata,
			Text = name,
			TextColor3 = #Window.Tabs == 0 and Theme.Text or Theme.TextDark,
			TextSize = 16,
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(0, 0, 0, 22),
			Parent = TabContainer
		})
		Create("UIPadding", {
			PaddingLeft = UDim.new(0, 5),
			PaddingRight = UDim.new(0, 5),
			Parent = TabButton
		})
		AddContextualStroke(TabButton)

		local TabPage = Create("Frame", {
			Name = name,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = #Window.Tabs == 0,
			Parent = TabPages
		})

		local LeftColumn = Create("Frame", {
			Name = "Left",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, SECTION_WIDTH, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			Parent = TabPage
		})
		Create("UIListLayout", {
			Padding = UDim.new(0, SECTION_GAP),
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = LeftColumn
		})

		local RightColumn = Create("Frame", {
			Name = "Right",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, SECTION_WIDTH, 1, 0),
			Position = UDim2.new(1, -SECTION_WIDTH, 0, 0),
			Parent = TabPage
		})
		Create("UIListLayout", {
			Padding = UDim.new(0, SECTION_GAP),
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = RightColumn
		})

		Tab.Button = TabButton
		Tab.Page = TabPage
		Tab.LeftColumn = LeftColumn
		Tab.RightColumn = RightColumn

		TabButton.MouseButton1Click:Connect(function()
			CloseAllPopups()

			for _, t in pairs(Window.Tabs) do
				t.Button.TextColor3 = Theme.TextDark
				t.Page.Visible = false
			end
			TabButton.TextColor3 = Theme.Text
			TabPage.Visible = true

			task.defer(function()
				local btnPos = TabButton.AbsolutePosition
				local containerPos = TabContainer.AbsolutePosition
				Tween(TabHover, {
					Position = UDim2.new(0, btnPos.X - containerPos.X + 60, 0, 40),
					Size = UDim2.new(0, TabButton.AbsoluteSize.X, 0, 2)
				}, 0.2)
			end)

			Window.ActiveTab = Tab
		end)

		function Tab:CreateSection(sectionName, subtabs, side)
			local Section = {}
			Section.Name = sectionName
			Section.Elements = {}
			Section.Subtabs = subtabs or {}
			Section.CurrentSubtab = subtabs and subtabs[1] or "main"
			Section.SubtabContents = {}

			side = side or (#Tab.Sections % 2 == 0 and "left" or "right")
			local parentColumn = side == "left" and LeftColumn or RightColumn

			local SectionFrame = Create("Frame", {
				Name = sectionName,
				BackgroundColor3 = Theme.Secondary,
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Size = UDim2.new(1, 0, 0, 120),
				LayoutOrder = #Tab.Sections,
				Parent = parentColumn
			})
			AddCorner(SectionFrame, 6)
			AddStroke(SectionFrame, Theme.Border)

			local Header = Create("Frame", {
				Name = "Upframe",
				BackgroundColor3 = Theme.TabFrame,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 32),
				Parent = SectionFrame
			})
			AddCorner(Header, 6)

			local TitleLabel = Create("TextLabel", {
				Name = "TabName",
				BackgroundTransparency = 1,
				FontFace = Fonts.Inconsolata,
				Text = sectionName,
				TextColor3 = Theme.Text,
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				Size = UDim2.new(0, 70, 1, 0),
				Position = UDim2.new(0, 8, 0, 0),
				Parent = Header
			})
			AddContextualStroke(TitleLabel)

			local SubtabContainer = nil
			local SubtabButtons = {}

			if subtabs and #subtabs > 0 then
				SubtabContainer = Create("Frame", {
					Name = "Subtabs",
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 200, 1, 0),
					Position = UDim2.new(1, -205, 0, 0),
					ClipsDescendants = false,
					Parent = Header
				})

				local totalWidth = 0
				local buttonWidths = {}

				for _, subtabName in ipairs(subtabs) do
					local textSize = game:GetService("TextService"):GetTextBoundsAsync(
						Create("GetTextBoundsParams", {
							Text = subtabName,
							Font = Fonts.Inconsolata,
							Size = 13,
							Width = 1000
						})
					)
					local width = textSize.X + 16
					table.insert(buttonWidths, width)
					totalWidth = totalWidth + width
				end

				local spacing = 8
				totalWidth = totalWidth + (spacing * (#subtabs - 1))

				local currentX = 200
				for i = #subtabs, 1, -1 do
					local subtabName = subtabs[i]
					local width = buttonWidths[i]
					currentX = currentX - width

					local SubtabButton = Create("TextButton", {
						Name = subtabName,
						BackgroundTransparency = 1,
						FontFace = Fonts.Inconsolata,
						Text = subtabName,
						TextColor3 = i == 1 and Theme.Text or Theme.TextDark,
						TextSize = 13,
						Size = UDim2.new(0, width, 0, 28),
						Position = UDim2.new(0, currentX, 0.5, -14),
						Parent = SubtabContainer
					})
					AddContextualStroke(SubtabButton)

					SubtabButtons[subtabName] = SubtabButton
					currentX = currentX - spacing

					SubtabButton.MouseButton1Click:Connect(function()
						CloseAllPopups()

						for n, btn in pairs(SubtabButtons) do
							btn.TextColor3 = Theme.TextDark
						end
						SubtabButton.TextColor3 = Theme.Text

						for n, data in pairs(Section.SubtabContents) do
							data.Content.Visible = (n == subtabName)
						end
						Section.CurrentSubtab = subtabName
					end)
				end
			end

			AddGradientLine(Header, UDim2.new(0, 0, 1, -1), UDim2.new(1, 0, 0, 1))

			local ContentHolder = Create("Frame", {
				Name = "Content",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, -36),
				Position = UDim2.new(0, 0, 0, 34),
				ClipsDescendants = true,
				Parent = SectionFrame
			})

			Section.Frame = SectionFrame
			Section.ContentHolder = ContentHolder

			local function CreateSubtabContent(subtabName)
				local ContentScroll = Create("ScrollingFrame", {
					Name = subtabName,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, -6, 1, 0),
					Position = UDim2.new(0, 3, 0, 0),
					CanvasSize = UDim2.new(0, 0, 0, 0),
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					ScrollBarThickness = 2,
					ScrollBarImageColor3 = Theme.Accent,
					ScrollBarImageTransparency = 0.5,
					Visible = subtabName == Section.CurrentSubtab,
					Parent = ContentHolder
				})

				local ContentLayout = Create("UIListLayout", {
					Padding = UDim.new(0, 4),
					SortOrder = Enum.SortOrder.LayoutOrder,
					Parent = ContentScroll
				})

				Create("UIPadding", {
					PaddingTop = UDim.new(0, 4),
					PaddingLeft = UDim.new(0, 4),
					PaddingRight = UDim.new(0, 4),
					PaddingBottom = UDim.new(0, 4),
					Parent = ContentScroll
				})

				return ContentScroll, ContentLayout
			end

			if subtabs and #subtabs > 0 then
				for i, subtabName in ipairs(subtabs) do
					local content, layout = CreateSubtabContent(subtabName)
					Section.SubtabContents[subtabName] = {Content = content, Layout = layout}
				end
				Section.Content = Section.SubtabContents[subtabs[1]].Content
				Section.Layout = Section.SubtabContents[subtabs[1]].Layout
			else
				local content, layout = CreateSubtabContent("main")
				Section.SubtabContents["main"] = {Content = content, Layout = layout}
				Section.Content = content
				Section.Layout = layout
			end

			local function UpdateSectionSize()
				local currentContent = Section.SubtabContents[Section.CurrentSubtab]
				if currentContent then
					local contentHeight = currentContent.Layout.AbsoluteContentSize.Y + 8
					local newHeight = math.clamp(contentHeight + 42, 80, 220)
					SectionFrame.Size = UDim2.new(1, 0, 0, newHeight)
				end
			end

			for _, data in pairs(Section.SubtabContents) do
				data.Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(UpdateSectionSize)
			end
			task.defer(UpdateSectionSize)

			local function GetCurrentContent()
				return Section.SubtabContents[Section.CurrentSubtab].Content
			end

			function Section:CreateToggle(options)
				options = options or {}
				local toggleName = options.Name or "Toggle"
				local default = options.Default or false
				local callback = options.Callback or function() end
				local subtab = options.Subtab or Section.CurrentSubtab

				local Toggle = {}
				Toggle.Value = default
				Toggle.Keybind = nil
				Toggle.Mode = "toggle"

				local parentContent = Section.SubtabContents[subtab] and Section.SubtabContents[subtab].Content or GetCurrentContent()

				local ToggleFrame = Create("Frame", {
					Name = toggleName,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 22),
					Parent = parentContent
				})

				local Label = Create("TextLabel", {
					Name = "Name",
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = toggleName,
					TextColor3 = Theme.Text,
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(1, -95, 1, 0),
					Parent = ToggleFrame
				})
				AddContextualStroke(Label)

				local Checkbox = Create("TextButton", {
					Name = "Button",
					BackgroundColor3 = default and Theme.Enabled or Theme.Disabled,
					BorderSizePixel = 0,
					Text = "",
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(1, -90, 0.5, -9),
					Parent = ToggleFrame
				})
				AddCorner(Checkbox, 5)
				local CheckboxStroke = AddStroke(Checkbox, Theme.Border)

				local KeybindBtn = Create("TextButton", {
					Name = "Keybind",
					BackgroundColor3 = Theme.Tertiary,
					FontFace = Fonts.Inconsolata,
					Text = "-",
					TextColor3 = Theme.TextDarker,
					TextSize = 13,
					Size = UDim2.new(0, 32, 0, 18),
					Position = UDim2.new(1, -65, 0.5, -9),
					Parent = ToggleFrame
				})
				AddCorner(KeybindBtn, 5)
				local KeybindStroke = AddStroke(KeybindBtn, Theme.Border)

				local PlusBtn = Create("TextButton", {
					Name = "Plus",
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = "+",
					TextColor3 = Theme.Text,
					TextSize = 16,
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(1, -25, 0.5, -9),
					Parent = ToggleFrame
				})
				AddContextualStroke(PlusBtn)

				local KeybindModeMenu = Create("Frame", {
					Name = "KeybindModes",
					BackgroundColor3 = Theme.Secondary,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 80, 0, 0),
					ClipsDescendants = true,
					Visible = false,
					ZIndex = 100,
					Parent = ScreenGui
				})
				AddCorner(KeybindModeMenu, 6)
				AddStroke(KeybindModeMenu, Theme.AccentBlue)

				local ModeContent = Create("Frame", {
					Name = "Content",
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -6, 1, -6),
					Position = UDim2.new(0, 3, 0, 3),
					ZIndex = 101,
					Parent = KeybindModeMenu
				})

				Create("UIListLayout", {
					Padding = UDim.new(0, 3),
					SortOrder = Enum.SortOrder.LayoutOrder,
					Parent = ModeContent
				})

				local keybindModes = {"toggle", "hold", "always"}
				local modeButtons = {}

				for _, mode in ipairs(keybindModes) do
					local ModeBtn = Create("TextButton", {
						Name = mode,
						BackgroundColor3 = Toggle.Mode == mode and Theme.Blue or Theme.Tertiary,
						FontFace = Fonts.Inconsolata,
						Text = mode,
						TextColor3 = Theme.Text,
						TextSize = 12,
						Size = UDim2.new(1, 0, 0, 22),
						ZIndex = 102,
						Parent = ModeContent
					})
					AddCorner(ModeBtn, 5)
					AddStroke(ModeBtn, Theme.Border)

					modeButtons[mode] = ModeBtn

					ModeBtn.MouseEnter:Connect(function()
						if Toggle.Mode ~= mode then
							Tween(ModeBtn, {BackgroundColor3 = Theme.Hover}, 0.1)
						end
					end)
					ModeBtn.MouseLeave:Connect(function()
						if Toggle.Mode ~= mode then
							Tween(ModeBtn, {BackgroundColor3 = Theme.Tertiary}, 0.1)
						end
					end)

					ModeBtn.MouseButton1Click:Connect(function()
						Toggle.Mode = mode

						for m, btn in pairs(modeButtons) do
							Tween(btn, {BackgroundColor3 = m == mode and Theme.Blue or Theme.Tertiary}, 0.15)
						end

						Tween(KeybindModeMenu, {Size = UDim2.new(0, 80, 0, 0)}, 0.15)
						task.delay(0.15, function()
							KeybindModeMenu.Visible = false
						end)
					end)
				end

				local keybindMenuObj = {
					Close = function()
						Tween(KeybindModeMenu, {Size = UDim2.new(0, 80, 0, 0)}, 0.15)
						task.delay(0.15, function()
							KeybindModeMenu.Visible = false
						end)
					end
				}

				KeybindBtn.MouseButton2Click:Connect(function()
					if KeybindModeMenu.Visible then
						keybindMenuObj.Close()
						return
					end

					CloseAllPopups()
					table.insert(Window.OpenKeybindMenus, keybindMenuObj)

					local btnPos = KeybindBtn.AbsolutePosition
					KeybindModeMenu.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + 20)
					KeybindModeMenu.Size = UDim2.new(0, 80, 0, 0)
					KeybindModeMenu.Visible = true
					Tween(KeybindModeMenu, {Size = UDim2.new(0, 80, 0, 75)}, 0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
				end)

				local plusMenu = CreatePlusMenu({
					Name = toggleName .. " additionals",
					Button = PlusBtn
				})

				PlusBtn.MouseButton1Click:Connect(function()
					if plusMenu.Open then
						plusMenu.Close()
					else
						plusMenu.Open_()
					end
				end)

				local function UpdateToggle()
					Tween(Checkbox, {BackgroundColor3 = Toggle.Value and Theme.Enabled or Theme.Disabled}, 0.15)
					callback(Toggle.Value)
				end

				Checkbox.MouseEnter:Connect(function()
					Tween(CheckboxStroke, {Color = Theme.Accent}, 0.1)
				end)
				Checkbox.MouseLeave:Connect(function()
					Tween(CheckboxStroke, {Color = Theme.Border}, 0.1)
				end)

				KeybindBtn.MouseEnter:Connect(function()
					Tween(KeybindStroke, {Color = Theme.Accent}, 0.1)
				end)
				KeybindBtn.MouseLeave:Connect(function()
					Tween(KeybindStroke, {Color = Theme.Border}, 0.1)
				end)

				Checkbox.MouseButton1Click:Connect(function()
					Toggle.Value = not Toggle.Value
					UpdateToggle()
				end)

				local binding = false
				KeybindBtn.MouseButton1Click:Connect(function()
					if binding then return end
					binding = true
					KeybindBtn.Text = "..."

					local conn
					conn = UserInputService.InputBegan:Connect(function(input, gpe)
						if gpe then return end
						if input.UserInputType == Enum.UserInputType.Keyboard then
							Toggle.Keybind = input.KeyCode
							KeybindBtn.Text = input.KeyCode.Name:sub(1, 3):upper()
							binding = false
							conn:Disconnect()
						end
					end)
				end)

				UserInputService.InputBegan:Connect(function(input, gpe)
					if gpe then return end
					if Toggle.Keybind and input.KeyCode == Toggle.Keybind then
						if Toggle.Mode == "toggle" then
							Toggle.Value = not Toggle.Value
							UpdateToggle()
						elseif Toggle.Mode == "hold" then
							Toggle.Value = true
							UpdateToggle()
						elseif Toggle.Mode == "always" then
							Toggle.Value = true
							UpdateToggle()
						end
					end
				end)

				UserInputService.InputEnded:Connect(function(input, gpe)
					if Toggle.Keybind and input.KeyCode == Toggle.Keybind then
						if Toggle.Mode == "hold" then
							Toggle.Value = false
							UpdateToggle()
						end
					end
				end)

				function Toggle:Set(value)
					Toggle.Value = value
					UpdateToggle()
				end

				function Toggle:GetMode()
					return Toggle.Mode
				end

				if default then callback(default) end
				task.defer(UpdateSectionSize)
				return Toggle
			end

			function Section:CreateDropdown(options)
				options = options or {}
				local dropdownName = options.Name or "Dropdown"
				local items = options.Items or {}
				local default = options.Default or (items[1] or "None")
				local callback = options.Callback or function() end
				local subtab = options.Subtab or Section.CurrentSubtab

				local Dropdown = {}
				Dropdown.Value = default
				Dropdown.Open = false

				local parentContent = Section.SubtabContents[subtab] and Section.SubtabContents[subtab].Content or GetCurrentContent()

				local DropdownFrame = Create("Frame", {
					Name = dropdownName,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 22),
					Parent = parentContent
				})

				local Label = Create("TextLabel", {
					Name = "Name",
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = dropdownName,
					TextColor3 = Theme.Text,
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(0.42, 0, 1, 0),
					Parent = DropdownFrame
				})
				AddContextualStroke(Label)

				local DropdownBtn = Create("TextButton", {
					Name = "Dropdown",
					BackgroundColor3 = Theme.Tertiary,
					Text = "",
					Size = UDim2.new(0.55, 0, 0, 22),
					Position = UDim2.new(0.45, 0, 0, 0),
					Parent = DropdownFrame
				})
				AddCorner(DropdownBtn, 5)
				local DropdownStroke = AddStroke(DropdownBtn, Theme.Border)

				local ValueLabel = Create("TextLabel", {
					Name = "Value",
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = default,
					TextColor3 = Theme.TextDarker,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTruncate = Enum.TextTruncate.AtEnd,
					Size = UDim2.new(1, -24, 1, 0),
					Position = UDim2.new(0, 6, 0, 0),
					Parent = DropdownBtn
				})

				local Plus = Create("TextLabel", {
					Name = "Plus",
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = "+",
					TextColor3 = Theme.Text,
					TextSize = 14,
					Size = UDim2.new(0, 18, 1, 0),
					Position = UDim2.new(1, -18, 0, 0),
					Parent = DropdownBtn
				})
				AddContextualStroke(Plus)

				local DropdownList = Create("Frame", {
					Name = dropdownName .. "List",
					BackgroundColor3 = Theme.Secondary,
					BorderSizePixel = 0,
					ClipsDescendants = true,
					Size = UDim2.new(0, 0, 0, 0),
					Visible = false,
					ZIndex = 50,
					Parent = ScreenGui
				})
				AddCorner(DropdownList, 6)
				AddStroke(DropdownList, Theme.Border)

				local ListScroll = Create("ScrollingFrame", {
					Name = "List",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					CanvasSize = UDim2.new(0, 0, 0, #items * 26),
					ScrollBarThickness = 2,
					ScrollBarImageColor3 = Theme.Accent,
					ZIndex = 51,
					Parent = DropdownList
				})

				Create("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Parent = ListScroll
				})

				local function CloseDropdown()
					if not Dropdown.Open then return end
					Dropdown.Open = false
					Plus.Text = "+"
					Tween(DropdownList, {Size = UDim2.new(0, DropdownBtn.AbsoluteSize.X, 0, 0)}, 0.15)
					task.delay(0.15, function()
						DropdownList.Visible = false
					end)
				end

				Dropdown.Close = CloseDropdown

				local function CreateItems()
					for _, child in pairs(ListScroll:GetChildren()) do
						if child:IsA("TextButton") then child:Destroy() end
					end

					for _, item in ipairs(items) do
						local ItemBtn = Create("TextButton", {
							Name = item,
							BackgroundColor3 = Theme.Secondary,
							FontFace = Fonts.Inconsolata,
							Text = item,
							TextColor3 = Theme.Text,
							TextSize = 13,
							Size = UDim2.new(1, 0, 0, 26),
							ZIndex = 52,
							Parent = ListScroll
						})

						ItemBtn.MouseEnter:Connect(function()
							Tween(ItemBtn, {BackgroundColor3 = Theme.Hover}, 0.1)
						end)
						ItemBtn.MouseLeave:Connect(function()
							Tween(ItemBtn, {BackgroundColor3 = Theme.Secondary}, 0.1)
						end)

						ItemBtn.MouseButton1Click:Connect(function()
							Dropdown.Value = item
							ValueLabel.Text = item
							CloseDropdown()
							callback(item)
						end)
					end
					ListScroll.CanvasSize = UDim2.new(0, 0, 0, #items * 26)
				end

				CreateItems()

				DropdownBtn.MouseEnter:Connect(function()
					Tween(DropdownStroke, {Color = Theme.Accent}, 0.1)
				end)
				DropdownBtn.MouseLeave:Connect(function()
					if not Dropdown.Open then
						Tween(DropdownStroke, {Color = Theme.Border}, 0.1)
					end
				end)

				DropdownBtn.MouseButton1Click:Connect(function()
					if Dropdown.Open then
						CloseDropdown()
						return
					end

					CloseAllPopups()

					Dropdown.Open = true
					table.insert(Window.OpenDropdowns, Dropdown)

					local btnPos = DropdownBtn.AbsolutePosition
					local btnSize = DropdownBtn.AbsoluteSize
					local listHeight = math.min(#items * 26, 130)

					DropdownList.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + btnSize.Y + 2)
					DropdownList.Size = UDim2.new(0, btnSize.X, 0, 0)
					DropdownList.Visible = true
					Plus.Text = "-"
					Tween(DropdownList, {Size = UDim2.new(0, btnSize.X, 0, listHeight)}, 0.15)
				end)

				function Dropdown:Set(value)
					Dropdown.Value = value
					ValueLabel.Text = value
					callback(value)
				end

				function Dropdown:Refresh(newItems)
					items = newItems
					CreateItems()
				end

				callback(default)
				task.defer(UpdateSectionSize)
				return Dropdown
			end

			function Section:CreateSlider(options)
				options = options or {}
				local sliderName = options.Name or "Slider"
				local min = options.Min or 0
				local max = options.Max or 100
				local default = options.Default or min
				local increment = options.Increment or 1
				local callback = options.Callback or function() end
				local subtab = options.Subtab or Section.CurrentSubtab

				local Slider = {}
				Slider.Value = default

				local parentContent = Section.SubtabContents[subtab] and Section.SubtabContents[subtab].Content or GetCurrentContent()

				local SliderFrame = Create("Frame", {
					Name = sliderName,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 32),
					Parent = parentContent
				})

				local Label = Create("TextLabel", {
					Name = "Name",
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = sliderName,
					TextColor3 = Theme.Text,
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(0.7, 0, 0, 16),
					Parent = SliderFrame
				})
				AddContextualStroke(Label)

				local ValueLbl = Create("TextLabel", {
					Name = "Value",
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = tostring(default),
					TextColor3 = Theme.TextDarker,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Right,
					Size = UDim2.new(0.3, 0, 0, 16),
					Position = UDim2.new(0.7, 0, 0, 0),
					Parent = SliderFrame
				})

				local SliderBG = Create("Frame", {
					Name = "Background",
					BackgroundColor3 = Theme.Tertiary,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 6),
					Position = UDim2.new(0, 0, 0, 20),
					Parent = SliderFrame
				})
				AddCorner(SliderBG, 4)
				AddStroke(SliderBG, Theme.Border)

				local SliderFill = Create("Frame", {
					Name = "Fill",
					BackgroundColor3 = Theme.Blue,
					BorderSizePixel = 0,
					Size = UDim2.new((default - min) / (max - min), 0, 1, 0),
					Parent = SliderBG
				})
				AddCorner(SliderFill, 4)

				local function UpdateSlider(input)
					local percent = math.clamp((input.Position.X - SliderBG.AbsolutePosition.X) / SliderBG.AbsoluteSize.X, 0, 1)
					local value = min + (percent * (max - min))
					value = math.floor(value / increment + 0.5) * increment
					value = math.clamp(value, min, max)

					Slider.Value = value
					SliderFill.Size = UDim2.new((value - min) / (max - min), 0, 1, 0)
					ValueLbl.Text = tostring(value)
					callback(value)
				end

				local sliding = false

				SliderBG.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						sliding = true
						UpdateSlider(input)
					end
				end)

				SliderBG.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						sliding = false
					end
				end)

				UserInputService.InputChanged:Connect(function(input)
					if sliding and input.UserInputType == Enum.UserInputType.MouseMovement then
						UpdateSlider(input)
					end
				end)

				function Slider:Set(value)
					value = math.clamp(value, min, max)
					Slider.Value = value
					SliderFill.Size = UDim2.new((value - min) / (max - min), 0, 1, 0)
					ValueLbl.Text = tostring(value)
					callback(value)
				end

				callback(default)
				task.defer(UpdateSectionSize)
				return Slider
			end

			function Section:CreateColorPicker(options)
				options = options or {}
				local pickerName = options.Name or "Color"
				local default = options.Default or Theme.Blue
				local callback = options.Callback or function() end
				local subtab = options.Subtab or Section.CurrentSubtab

				local ColorPicker = {}
				ColorPicker.Value = default
				ColorPicker.Open = false

				local parentContent = Section.SubtabContents[subtab] and Section.SubtabContents[subtab].Content or GetCurrentContent()

				local ColorFrame = Create("Frame", {
					Name = pickerName,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 22),
					Parent = parentContent
				})

				local Label = Create("TextLabel", {
					Name = "Name",
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = pickerName,
					TextColor3 = Theme.Text,
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(1, -45, 1, 0),
					Parent = ColorFrame
				})
				AddContextualStroke(Label)

				local ColorBtn = Create("TextButton", {
					Name = "ColorPicker",
					BackgroundColor3 = default,
					BorderSizePixel = 0,
					Text = "",
					Size = UDim2.new(0, 35, 0, 18),
					Position = UDim2.new(1, -38, 0.5, -9),
					Parent = ColorFrame
				})
				AddCorner(ColorBtn, 5)
				local ColorStroke = AddStroke(ColorBtn, Theme.Border)

				local PickerPanel = Create("Frame", {
					Name = pickerName .. "Panel",
					BackgroundColor3 = Theme.Secondary,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 180, 0, 160),
					Visible = false,
					ZIndex = 60,
					Parent = ScreenGui
				})
				AddCorner(PickerPanel, 6)
				AddStroke(PickerPanel, Theme.Border)

				local Palette = Create("ImageLabel", {
					Name = "Palette",
					BackgroundColor3 = Color3.fromRGB(255, 0, 0),
					Image = "rbxassetid://4155801252",
					Size = UDim2.new(0, 145, 0, 140),
					Position = UDim2.new(0, 10, 0, 10),
					ZIndex = 61,
					Parent = PickerPanel
				})
				AddCorner(Palette, 5)

				local PaletteSelector = Create("Frame", {
					Name = "Selector",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BorderSizePixel = 0,
					Size = UDim2.new(0, 8, 0, 8),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(1, 0, 0, 0),
					ZIndex = 62,
					Parent = Palette
				})
				AddCorner(PaletteSelector, 8)
				AddStroke(PaletteSelector, Color3.fromRGB(0, 0, 0), 1)

				local HueSlider = Create("Frame", {
					Name = "HueSlider",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					Size = UDim2.new(0, 14, 0, 140),
					Position = UDim2.new(0, 160, 0, 10),
					ZIndex = 61,
					Parent = PickerPanel
				})
				AddCorner(HueSlider, 5)
				Create("UIGradient", {
					Rotation = 90,
					Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
						ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 255, 0)),
						ColorSequenceKeypoint.new(0.333, Color3.fromRGB(0, 255, 0)),
						ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
						ColorSequenceKeypoint.new(0.667, Color3.fromRGB(0, 0, 255)),
						ColorSequenceKeypoint.new(0.833, Color3.fromRGB(255, 0, 255)),
						ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
					},
					Parent = HueSlider
				})

				local HueSelector = Create("Frame", {
					Name = "Selector",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BorderSizePixel = 0,
					Size = UDim2.new(1, 4, 0, 4),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0, 0),
					ZIndex = 62,
					Parent = HueSlider
				})
				AddCorner(HueSelector, 3)
				AddStroke(HueSelector, Color3.fromRGB(0, 0, 0), 1)

				local h, s, v = default:ToHSV()
				local hue = h

				local function UpdateColor()
					local color = Color3.fromHSV(hue, s, v)
					ColorPicker.Value = color
					ColorBtn.BackgroundColor3 = color
					Palette.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
					callback(color)
				end

				local function CloseColorPicker()
					if not ColorPicker.Open then return end
					ColorPicker.Open = false
					PickerPanel.Visible = false
				end

				ColorPicker.Close = CloseColorPicker

				ColorBtn.MouseEnter:Connect(function()
					Tween(ColorStroke, {Color = Theme.Accent}, 0.1)
				end)
				ColorBtn.MouseLeave:Connect(function()
					if not ColorPicker.Open then
						Tween(ColorStroke, {Color = Theme.Border}, 0.1)
					end
				end)

				ColorBtn.MouseButton1Click:Connect(function()
					if ColorPicker.Open then
						CloseColorPicker()
						return
					end

					CloseAllPopups()

					ColorPicker.Open = true
					table.insert(Window.OpenColorPickers, ColorPicker)

					local btnPos = ColorBtn.AbsolutePosition
					PickerPanel.Position = UDim2.new(0, btnPos.X - 145, 0, btnPos.Y + 22)
					PickerPanel.Visible = true
				end)

				local paletteDragging = false
				Palette.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						paletteDragging = true
					end
				end)
				Palette.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						paletteDragging = false
					end
				end)

				local hueDragging = false
				HueSlider.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						hueDragging = true
					end
				end)
				HueSlider.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						hueDragging = false
					end
				end)

				UserInputService.InputChanged:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						if paletteDragging then
							local rx = math.clamp((input.Position.X - Palette.AbsolutePosition.X) / Palette.AbsoluteSize.X, 0, 1)
							local ry = math.clamp((input.Position.Y - Palette.AbsolutePosition.Y) / Palette.AbsoluteSize.Y, 0, 1)
							s, v = rx, 1 - ry
							PaletteSelector.Position = UDim2.new(rx, 0, ry, 0)
							UpdateColor()
						elseif hueDragging then
							local ry = math.clamp((input.Position.Y - HueSlider.AbsolutePosition.Y) / HueSlider.AbsoluteSize.Y, 0, 1)
							hue = ry
							HueSelector.Position = UDim2.new(0.5, 0, ry, 0)
							UpdateColor()
						end
					end
				end)

				function ColorPicker:Set(color)
					ColorPicker.Value = color
					ColorBtn.BackgroundColor3 = color
					h, s, v = color:ToHSV()
					hue = h
					PaletteSelector.Position = UDim2.new(s, 0, 1 - v, 0)
					HueSelector.Position = UDim2.new(0.5, 0, hue, 0)
					Palette.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
					callback(color)
				end

				callback(default)
				task.defer(UpdateSectionSize)
				return ColorPicker
			end

			function Section:CreateButton(options)
				options = options or {}
				local buttonName = options.Name or "Button"
				local callback = options.Callback or function() end
				local subtab = options.Subtab or Section.CurrentSubtab

				local parentContent = Section.SubtabContents[subtab] and Section.SubtabContents[subtab].Content or GetCurrentContent()

				local Button = Create("TextButton", {
					Name = buttonName,
					BackgroundColor3 = Theme.TabFrame,
					FontFace = Fonts.SourceSans,
					Text = buttonName,
					TextColor3 = Theme.Text,
					TextSize = 15,
					Size = UDim2.new(1, 0, 0, 26),
					Parent = parentContent
				})
				AddCorner(Button, 5)
				AddStroke(Button, Theme.Border)

				Button.MouseButton1Click:Connect(callback)
				Button.MouseEnter:Connect(function() Tween(Button, {BackgroundColor3 = Theme.Hover}, 0.1) end)
				Button.MouseLeave:Connect(function() Tween(Button, {BackgroundColor3 = Theme.TabFrame}, 0.1) end)

				task.defer(UpdateSectionSize)
				return Button
			end

			function Section:CreateLabel(text, subtab)
				subtab = subtab or Section.CurrentSubtab
				local parentContent = Section.SubtabContents[subtab] and Section.SubtabContents[subtab].Content or GetCurrentContent()

				local LabelEl = Create("TextLabel", {
					Name = "Label",
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = text,
					TextColor3 = Theme.Text,
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(1, 0, 0, 18),
					Parent = parentContent
				})
				AddContextualStroke(LabelEl)

				task.defer(UpdateSectionSize)
				return {
					Set = function(_, newText)
						LabelEl.Text = newText
					end
				}
			end

			function Section:CreateTextbox(options)
				options = options or {}
				local textboxName = options.Name or "Textbox"
				local default = options.Default or ""
				local placeholder = options.Placeholder or "..."
				local callback = options.Callback or function() end
				local subtab = options.Subtab or Section.CurrentSubtab

				local Textbox = {}
				Textbox.Value = default

				local parentContent = Section.SubtabContents[subtab] and Section.SubtabContents[subtab].Content or GetCurrentContent()

				local TextboxFrame = Create("Frame", {
					Name = textboxName,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 22),
					Parent = parentContent
				})

				local Label = Create("TextLabel", {
					Name = "Name",
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = textboxName,
					TextColor3 = Theme.Text,
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(0.4, 0, 1, 0),
					Parent = TextboxFrame
				})
				AddContextualStroke(Label)

				local Input = Create("TextBox", {
					Name = "Input",
					BackgroundColor3 = Theme.Tertiary,
					FontFace = Fonts.Inconsolata,
					PlaceholderText = placeholder,
					PlaceholderColor3 = Theme.TextDark,
					Text = default,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(0.58, 0, 0, 22),
					Position = UDim2.new(0.42, 0, 0, 0),
					Parent = TextboxFrame
				})
				AddCorner(Input, 5)
				AddStroke(Input, Theme.Border)
				Create("UIPadding", {
					PaddingLeft = UDim.new(0, 6),
					Parent = Input
				})

				Input.FocusLost:Connect(function(enterPressed)
					Textbox.Value = Input.Text
					callback(Input.Text, enterPressed)
				end)

				function Textbox:Set(value)
					Textbox.Value = value
					Input.Text = value
				end

				task.defer(UpdateSectionSize)
				return Textbox
			end

			table.insert(Tab.Sections, Section)
			return Section
		end

		if #Window.Tabs == 0 then
			Window.ActiveTab = Tab
		end

		table.insert(Window.Tabs, Tab)
		return Tab
	end

	function Window:CreateWatermark(options)
		options = options or {}
		local wmTitle = options.Title or "Yerba"
		local wmSubtitle = options.Subtitle or "with<3"

		local TextService = game:GetService("TextService")

		local titleSize = TextService:GetTextBoundsAsync(
			Create("GetTextBoundsParams", {
				Text = wmTitle,
				Font = Fonts.ComicNeue,
				Size = 20,
				Width = 1000
			})
		)

		local subtitleSize = TextService:GetTextBoundsAsync(
			Create("GetTextBoundsParams", {
				Text = wmSubtitle,
				Font = Fonts.ComicNeue,
				Size = 20,
				Width = 1000
			})
		)

		local iconWidth = 38
		local dividerWidth = 10
		local padding = 5

		local titleWidth = titleSize.X + padding * 2
		local subtitleWidth = subtitleSize.X + padding * 2
		local fpsWidth = 70

		local totalWidth = iconWidth + dividerWidth + titleWidth + dividerWidth + subtitleWidth + dividerWidth + fpsWidth

		local Watermark = Create("Frame", {
			Name = "Watermark",
			BackgroundColor3 = Theme.Tertiary,
			BorderSizePixel = 0,
			Size = UDim2.new(0, totalWidth, 0, 36),
			Position = UDim2.new(0, 10, 0, 10),
			Parent = ScreenGui
		})
		AddCorner(Watermark, 6)
		AddStroke(Watermark, Color3.fromRGB(47, 61, 67))

		Create("ImageLabel", {
			Name = "Icon",
			BackgroundTransparency = 1,
			Image = "rbxassetid://74807357385705",
			Size = UDim2.new(0, 34, 0, 34),
			Position = UDim2.new(0, 1, 0, 1),
			Parent = Watermark
		})

		local slash1X = iconWidth
		local titleX = slash1X + dividerWidth
		local slash2X = titleX + titleWidth
		local subtitleX = slash2X + dividerWidth
		local slash3X = subtitleX + subtitleWidth
		local fpsX = slash3X + dividerWidth

		local slashPositions = {slash1X, slash2X, slash3X}

		for i, x in ipairs(slashPositions) do
			Create("TextLabel", {
				Name = "Slash" .. i,
				BackgroundTransparency = 1,
				FontFace = Fonts.ComicNeue,
				Text = "|",
				TextColor3 = Theme.AccentDark,
				TextSize = 21,
				Size = UDim2.new(0, 10, 1, 0),
				Position = UDim2.new(0, x - 5, 0, 0),
				Parent = Watermark
			})
		end

		local NameLabel = Create("TextLabel", {
			Name = "Name",
			BackgroundTransparency = 1,
			FontFace = Fonts.ComicNeue,
			Text = wmTitle,
			TextColor3 = Theme.TextDark,
			TextSize = 20,
			Size = UDim2.new(0, titleWidth, 1, 0),
			Position = UDim2.new(0, titleX, 0, 0),
			Parent = Watermark
		})

		local SubtitleLabel = Create("TextLabel", {
			Name = "Creator",
			BackgroundTransparency = 1,
			FontFace = Fonts.ComicNeue,
			Text = wmSubtitle,
			TextColor3 = Theme.TextDark,
			TextSize = 20,
			Size = UDim2.new(0, subtitleWidth, 1, 0),
			Position = UDim2.new(0, subtitleX, 0, 0),
			Parent = Watermark
		})

		local FPSLabel = Create("TextLabel", {
			Name = "FPS",
			BackgroundTransparency = 1,
			FontFace = Fonts.ComicNeue,
			Text = "60 fps",
			TextColor3 = Theme.TextDark,
			TextSize = 20,
			Size = UDim2.new(0, fpsWidth, 1, 0),
			Position = UDim2.new(0, fpsX, 0, 0),
			Parent = Watermark
		})

		local lastTime = tick()
		local frameCount = 0
		RunService.RenderStepped:Connect(function()
			frameCount = frameCount + 1
			if tick() - lastTime >= 1 then
				FPSLabel.Text = math.floor(frameCount) .. " fps"
				frameCount = 0
				lastTime = tick()
			end
		end)

		local wmDragging, wmDragInput, wmDragStart, wmStartPos
		Watermark.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				wmDragging = true
				wmDragStart = input.Position
				wmStartPos = Watermark.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						wmDragging = false
					end
				end)
			end
		end)
		Watermark.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				wmDragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == wmDragInput and wmDragging then
				local delta = input.Position - wmDragStart
				Watermark.Position = UDim2.new(
					wmStartPos.X.Scale, wmStartPos.X.Offset + delta.X,
					wmStartPos.Y.Scale, wmStartPos.Y.Offset + delta.Y
				)
			end
		end)

		return {
			SetTitle = function(_, t) 
				NameLabel.Text = t 
			end,
			SetSubtitle = function(_, s) 
				SubtitleLabel.Text = s 
			end,
			Toggle = function(_, vis) 
				Watermark.Visible = vis 
			end
		}
	end

	function Window:CreateKeybindsDisplay()
		local KeybindsFrame = Create("Frame", {
			Name = "Keybinds",
			BackgroundColor3 = Theme.Tertiary,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			Size = UDim2.new(0, 160, 0, 40),
			Position = UDim2.new(1, -170, 0, 10),
			Parent = ScreenGui
		})
		AddCorner(KeybindsFrame, 6)
		AddStroke(KeybindsFrame, Theme.BorderAccent)

		local Header = Create("TextLabel", {
			Name = "Name",
			BackgroundTransparency = 1,
			FontFace = Fonts.Inconsolata,
			Text = "  keybinds",
			TextColor3 = Theme.Text,
			TextSize = 14,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(1, 0, 0, 28),
			Parent = KeybindsFrame
		})
		AddGradientLine(KeybindsFrame, UDim2.new(0, 0, 0, 28), UDim2.new(1, 0, 0, 1))

		local Main = Create("Frame", {
			Name = "Main",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, -32),
			Position = UDim2.new(0, 0, 0, 30),
			Parent = KeybindsFrame
		})

		local ListLayout = Create("UIListLayout", {
			Padding = UDim.new(0, 2),
			Parent = Main
		})

		local kbDragging, kbDragInput, kbDragStart, kbStartPos
		Header.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				kbDragging = true
				kbDragStart = input.Position
				kbStartPos = KeybindsFrame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						kbDragging = false
					end
				end)
			end
		end)
		Header.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				kbDragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == kbDragInput and kbDragging then
				local delta = input.Position - kbDragStart
				KeybindsFrame.Position = UDim2.new(
					kbStartPos.X.Scale, kbStartPos.X.Offset + delta.X,
					kbStartPos.Y.Scale, kbStartPos.Y.Offset + delta.Y
				)
			end
		end)

		local function UpdateSize()
			local h = ListLayout.AbsoluteContentSize.Y + 36
			KeybindsFrame.Size = UDim2.new(0, 160, 0, math.max(40, h))
		end

		return {
			AddKeybind = function(_, kbName, key, mode)
				mode = mode or "tog"
				local Lbl = Create("TextLabel", {
					Name = kbName,
					BackgroundTransparency = 1,
					FontFace = Fonts.Inconsolata,
					Text = string.format(" [%s] %s - %s", mode, kbName, key),
					TextColor3 = Theme.Text,
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = UDim2.new(1, 0, 0, 20),
					Parent = Main
				})
				AddContextualStroke(Lbl)
				task.defer(UpdateSize)
				return {
					Remove = function()
						Lbl:Destroy()
						task.defer(UpdateSize)
					end
				}
			end,
			Toggle = function(_, vis) KeybindsFrame.Visible = vis end
		}
	end

	UserInputService.InputBegan:Connect(function(input, gpe)
		if gpe then return end
		if input.KeyCode == Enum.KeyCode.RightShift then
			ToggleWindow(not Window.Visible)
		end
	end)

	function Window:Toggle(show)
		ToggleWindow(show)
	end

	function Window:Destroy()
		ScreenGui:Destroy()
	end

	return Window
end

local Window = Yerba:CreateWindow("Yerba", "v4.0")

local Watermark = Window:CreateWatermark({
	Title = "Yerba",
	Subtitle = "with<3"
})

local KeybindsDisplay = Window:CreateKeybindsDisplay()

local CombatTab = Window:CreateTab("combat")
local VisualsTab = Window:CreateTab("visuals")
local MiscTab = Window:CreateTab("misc")

local AimbotSection = CombatTab:CreateSection("aimbot", {"main", "settings", "fov"}, "left")

local AimbotToggle = AimbotSection:CreateToggle({
	Name = "Enable",
	Default = false,
	Subtab = "main",
	Callback = function(value)
		print("Aimbot:", value)
	end
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

local AimbotDistance = AimbotSection:CreateSlider({
	Name = "Max Distance",
	Min = 0,
	Max = 500,
	Default = 200,
	Increment = 10,
	Subtab = "settings",
	Callback = function(value)
		print("Max Distance:", value)
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

local InfoLabel = UtilitySection:CreateLabel("Made with Yerba UI v4")

task.spawn(function()
	wait(3)
	PlayerESP:Set(true)
end)

task.spawn(function()
	wait(5)
	local players = {}
	for _, player in pairs(game.Players:GetPlayers()) do
		table.insert(players, player.Name)
	end
end)

task.spawn(function()
	wait(7)
	BoxColor:Set(Color3.fromRGB(0, 255, 255))
end)

print("Aimbot keybind mode:", AimbotToggle:GetMode())

Watermark:SetTitle("Yerba")
Watermark:SetSubtitle("with<3")

InfoLabel:Set("Status: Active")

print("Yerba UI loaded successfully!")

return Yerba
