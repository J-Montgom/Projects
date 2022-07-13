-- This is for the handheld computer with endermodem
-- Requires a 4 computer beacon to locate gps coordinates, sends coordinates to turtles, will set this up for 5 turtles
-- -Z is North, +X is East

--[[
    Best levels for each ore:
    Iron Y = 16
    Gold Y = -16
    Redstone/Diamond/Lapis Y = -50
]]

-- 5 is the time before it times out

local x,y,z = gps.locate(5)
local location = vector.new(gps.locate(5))

print("You are located at: ".. location)

