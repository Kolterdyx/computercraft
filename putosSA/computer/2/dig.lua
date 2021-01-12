x=tonumber(arg[1])
z=tonumber(arg[2])

function mine()
    while turtle.detect() do
        turtle.dig()
    end
    turtle.digUp()
    turtle.digDown()
    turtle.forward()
end

for i=1,x do
    for j=1,z do
        mine()
    end
    if i%2 == 0 then
        turtle.turnLeft()
        mine()
        turtle.turnLeft()
    else
        turtle.turnRight()
        mine()
        turtle.turnRight()
    end
end
