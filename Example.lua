local Library = loadstring(game:HttpGet(
"https://raw.githubusercontent.com/Alexihax/Alexihax-GUI/main/Library.lua?"..tick()
))()

local Window = Library:CreateWindow({
    Name = "Alexihax Hub"
})

local Combat = Window:CreateTab("Combat")

Combat:CreateSection("General")
Combat:CreateSection("Weapon")
Combat:CreateSection("Actions")