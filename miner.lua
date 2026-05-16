local wide = arg[1] - 1
local depth = arg[2] - 1


local function dig_and_move()
    turtle.dig()
    turtle.forward()
    turtle.digDown()
    turtle.digUp()
end

local function dig_line(_depth)
    for i = 1, _depth, 1 do
        dig_and_move()
    end
end

local function back_and_right(dist)
    for i = 1, dist, 1 do
        turtle.back()
    end
    turtle.turnRight()
    dig_and_move()
    turtle.turnLeft()
end


for i = 1, wide - 1, 1 do
    dig_line(depth)
    if wide == i + 1 then return end
    back_and_right(depth)
end
