-- This is for the handheld computer with endermodem
-- Requires a 4 computer beacon to locate gps coordinates, sends coordinates to turtles, will set this up for 5 turtles
-- -Z is North, +X is East
-- Portable computers have the modem on the back so use peripheral.wrap("back")

--[[
    Best levels for each ore:
    Iron Y = 16
    Gold Y = -16
    Redstone/Diamond/Lapis Y = -50
]]

-- 5 is the time before it times out
local modem = peripheral.wrap("back")
local x,y,z = gps.locate(5)
local location = vector.new(gps.locate(5))
local selection

print("You are located at: ".. location)

while selection ~= -16, 16, -50 do
    print("What are you hoping to mine?")
    print("Enter 16 for iron")
    print("Enter -16 for gold")
    print("Enter -50 for lapas/redstone/diamond")
    selection = term.read()
end

term.clear

if selection == 16 do
    print("Mining for iron")
elseif selection == -16 do 
    print("Mining for gold")
elseif selection == -50 do 
    print("Mining for other")
else
    print("Invalid selection")
end

modem.transmit(2, 1, location)

--[[
Use this on the turtles, has to import all details to properly work

local event, modemSide, senderChannel, 
replyChannel, message, senderDistance = os.pullEvent("modem_message")
]]