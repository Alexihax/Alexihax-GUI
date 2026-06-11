local Library = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/Alexihax/Alexihax-GUI/main/Library.lua?" .. tick()
))()

local Window = Library:CreateWindow({
    Name = "Alexihax Hub"
})

-- Combat tab
local Combat = Window:CreateTab("Combat")

Combat:CreateSection("General")
Combat:CreateSection("Weapon")
Combat:CreateSection("Actions")

-- Player tab
local Player = Window:CreateTab("Player")

Player:CreateSection("Movement")
Player:CreateSection("Character")

-- Visuals tab
local Visuals = Window:CreateTab("Visuals")

Visuals:CreateSection("ESP")
Visuals:CreateSection("World")

-- Misc tab
local Misc = Window:CreateTab("Misc")

Misc:CreateSection("Utilities")