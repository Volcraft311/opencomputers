local forward = arg[1]
local right = arg[2]

local function fill_below()
    local depth = 0
    while !turtle.detectDown() do
       turtle.down()
       depth =  depth + 1
    end

    for i=1, depth, 1 do
        turtle.up()
        turtle.placeDown("dirt")
    end
end


local function right()
    turtle.turnRight()
    turtle.forward()
    turtle.turnLeft()
end


fill_below()


for x = 1, forward, 1 do
    for z=1, right, 1 do
        fill_below()
        right()
    end
end