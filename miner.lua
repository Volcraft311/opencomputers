local wide = tonumber(arg[2])
local depth = tonumber(arg[1])


local function dig_and_move()
    while turtle.detect() do
        turtle.dig()
        os.sleep(0.5)
    end

    turtle.forward()
    turtle.digDown()
    turtle.digUp()
end

local function dig_line(_depth)
    for i = 1, _depth, 1 do
        dig_and_move()
    end
end

local function back(dist)
    for i = 1, dist, 1 do
        turtle.back()
    end
end

local function right()
    turtle.turnRight()
    dig_and_move()
    turtle.turnLeft()
end

for i = 1, wide, 1 do
    dig_line(depth)
    back(depth)
    if (i < wide) then
        right()
    end
end
