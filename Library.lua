local Library = {}

function Library:CreateWindow(options)
    local Window = {}

    Window.Name = options.Name or "Window"
    Window.Tabs = {}

    print("Created window:", Window.Name)

    function Window:CreateTab(name)
        local Tab = {}

        Tab.Name = name
        table.insert(self.Tabs, Tab)

        print("Created tab:", name)

        return Tab
    end

    return Window
end

return Library
