local Library = loadstring(game:HttpGet(
"https://raw.githubusercontent.com/Alexihax/Alexihax-GUI/main/Library.lua"
))()

local Window = Library:CreateWindow({
    Name = "Astra Hub"
})

local Combat = Window:CreateTab("Combat")
local Player = Window:CreateTab("Player")
local Visuals = Window:CreateTab("Visuals")
