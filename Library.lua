local Library = {}

function Library:CreateWindow(options)
    local Window = {}

    Window.Name = options.Name or "Window"
    Window.Tabs = {}

    print("Created window:", Window.Name)

    function Window:CreateTab(name)
        local Tab = {}

        Tab.Name = name
        Tab.Sections = {}

        table.insert(self.Tabs, Tab)

        print("Created tab:", name)

        function Tab:CreateSection(name)
            local Section = {}

            Section.Name = name

            table.insert(self.Sections, Section)

            print("Created section:", name)

            return Section
        end

        return Tab
    end

    return Window
end

return Library
