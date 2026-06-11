local Library = {}

function Library:CreateWindow(options)

    local Window = {}

    Window.Name = options.Name or "Window"
    Window.Tabs = {}

    -- GUI
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "AlexihaxGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    -- Main Frame
    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Size = UDim2.fromOffset(750,500)
    Main.Position = UDim2.fromScale(0.5,0.5)
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Main.BackgroundColor3 = Color3.fromRGB(12,15,20)
    Main.BorderSizePixel = 0
    Main.Parent = ScreenGui

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(45,50,65)
    Stroke.Thickness = 1
    Stroke.Parent = Main

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0,16)
    Corner.Parent = Main

    Window.Main = Main

    -- Top Bar
    local TopBar = Instance.new("Frame")
    TopBar.Name = "TopBar"
    TopBar.Size = UDim2.new(1,0,0,50)
    TopBar.BackgroundColor3 = Color3.fromRGB(18,22,28)
    TopBar.BorderSizePixel = 0
    TopBar.Parent = Main

    local TopCorner = Instance.new("UICorner")
    TopCorner.CornerRadius = UDim.new(0,16)
    TopCorner.Parent = TopBar

    -- Fill lower corners
    local Fix = Instance.new("Frame")
    Fix.Size = UDim2.new(1,0,0,16)
    Fix.Position = UDim2.new(0,0,1,-16)
    Fix.BorderSizePixel = 0
    Fix.BackgroundColor3 = TopBar.BackgroundColor3
    Fix.Parent = TopBar
    
    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0,20,0,0)
    Title.Size = UDim2.new(0,250,1,0)
    Title.Font = Enum.Font.GothamBold
    Title.Text = Window.Name
    Title.TextSize = 18
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.TextColor3 = Color3.fromRGB(255,255,255)
    Title.Parent = TopBar

    print("Created window:", Window.Name)

    function Window:CreateTab(name)

        local Tab = {}

        Tab.Name = name
        Tab.Sections = {}

        table.insert(Window.Tabs, Tab)

        print("Created tab:", name)

        function Tab:CreateSection(name)

            local Section = {}

            Section.Name = name

            table.insert(Tab.Sections, Section)

            print("Created section:", name)

            return Section
        end

        return Tab
    end

    return Window
end

return Library