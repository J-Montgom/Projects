-- Excavate but horizontal

print("Enter the width of your tunnel: ")
local width = io.read()

print("Enter the height of your tunnel: ")
local height = io.read()

print("Enter the depth of your tunnel: ")
local depth = io.read()

local fuelNeeded = ((width*height*depth)+depth+height+width)*1.5

while turtle.getFuelLevel() < fuelNeeded do
    print("Not enough fuel, require:", fuelNeeded)
    print(turtle.getFuelLevel())
    for i=1, 16 do
        if turtle.refuel() == false then
            turtle.select(i)
        end
    end
    term.clear()
    term.setCursorPos(1,1)
end

print("Fuel goal achieved, starting to mine.")

-- If turtle.place is false for floor, cycle through inventory and try again (Can't place diamonds, iron, gold, etc.) Will place usually the first blocks it mined (cobble, deepslate) 

function BridgeBuilder(airboolean)
    while turtle.placeDown() == false do
        for i=1, 16 do
            turtle.select(i)
        end
    turtle.placeDown()
    end
end


for i=1, depth do
    turtle.dig()
    turtle.forward()
    turtle.turnRight()
    for i=1, width do
        for i=1, height do 
            turtle.digUp()
            turtle.up()
        end
        for i=1, height do
            turtle.down()
        end
        if i ~= width then
            turtle.dig()
            turtle.forward()
        
        end
    end
    turtle.turnLeft()
    turtle.turnLeft()
    for i=1, width do
    turtle.forward()
    end
    turtle.turnRight()
end
