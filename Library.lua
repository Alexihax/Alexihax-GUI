local Library = {}

function Library:CreateWindow(options)
    local Window = {}

    Window.Name = options.Name or "Window"

    print("Created window:", Window.Name)

    return Window
end

return Library
