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
    Main.BackgroundColor3 = Color3.fromRGB(15,18,24)
    Main.BorderSizePixel = 0
    Main.Parent = ScreenGui

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0,16)
    Corner.Parent = Main

    Window.Main = Main

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