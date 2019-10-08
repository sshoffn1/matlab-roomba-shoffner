
% roomba moves in straight line, pushes objects out of path then continues
% straight
v = 0.1
r.setDriveVelocity(v,v)
while true
    bumps=r.getBumpers
        if bumps.front==1
            r.stop
            r.setLEDs('All',1)
            r.moveDistance(-0.4)
            r.turnAngle(90)
            r.moveDistance(0.4)
            r.turnAngle(-90)
            r.moveDistance(0.4)
            r.turnAngle(-90)
            r.moveDistance(0.4)
            r.turnAngle(90)
            r.setLEDs
            r.setDriveVelocity(v,v)
        elseif bumps.right==1
            r.stop
            r.setLEDs('All',1)
            r.moveDistance(-0.2)
            r.turnAngle(-20)
            r.moveDistance(0.4)
            r.moveDistance(-0.4)
            r.turnAngle(20)
            r.setLEDs
            r.setDriveVelocity(v,v)
        elseif bumps.left==1
            r.stop
            r.setLEDs('All',1)
            r.moveDistance(-0.2)
            r.turnAngle(20)
            r.moveDistance(0.4)
            r.moveDistance(-0.4)
            r.turnAngle(-20)
            r.setLEDs
            r.setDriveVelocity(v,v)
        end
end
