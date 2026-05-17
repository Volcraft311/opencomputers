local forward = tonumber(arg[1])
local right = tonumber(arg[2])

local function fill_below()
    local depth = 0
    while not turtle.detectDown() do
       turtle.down()
       depth =  depth + 1
    end
    turtle.digDown()
    for i=1, depth, 1 do
        turtle.placeDown("dirt")
        turtle.up()
    end
end


local function move_right()
    turtle.turnRight()
    turtle.forward()
    turtle.turnLeft()
end

local function go_back(dist)
    for i=1, dist, 1 do
        turtle.back()
    end
end

for x = 1, right, 1 do
    local dist = 0
    for z=1, forward, 1 do
        fill_below()
        if turtle.detect() then
            print("Can't move forward!")
            goto skip_forward
        end
        turtle.forward()
        dist = dist + 1
    end
    ::skip_forward::
    go_back(dist)
    if (x < right) then
        move_right()
    end
end