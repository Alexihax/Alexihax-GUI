local Library = loadstring(game:HttpGet(
"https://raw.githubusercontent.com/Alexihax/Alexihax-GUI/main/Library.lua?"..tick()
))()

local Window = Library:CreateWindow({
    Name = "Astra Hub"
})

local Combat = Window:CreateTab("Combat")

local General = Combat:CreateSection("General")
local Weapon = Combat:CreateSection("Weapon")
local Actions = Combat:CreateSection("Actions")
