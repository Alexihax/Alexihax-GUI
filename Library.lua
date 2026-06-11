local Library = {}

function Library:CreateWindow(options)
    local Window = {}

    Window.Name = options.Name or "Window"
    Window.Tabs = {}

    -- Create ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "AlexihaxGUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game:GetService("CoreGui")

    -- Main frame
    local Main = Instance.new("Frame")
    Main.Size = UDim2.fromOffset(700,500)
    Main.Position = UDim2.fromScale(0.5,0.5)
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Main.BackgroundColor3 = Color3.fromRGB(20,20,25)
    Main.Parent = ScreenGui

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0,15)
    Corner.Parent = Main

    function Window:CreateTab(name)
        local Tab = {}

        Tab.Name = name
        table.insert(self.Tabs, Tab)

        print("Created tab:",name)

        return Tab
    end

    return Window
end

return Library
