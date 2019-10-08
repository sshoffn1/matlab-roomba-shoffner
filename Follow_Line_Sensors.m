
% follows a line or perimeter
v=0.1;
r.setDriveVelocity(v,v)

while true
    c=r.getCliffSensors
    if c.leftFront < 2500 && c.rightFront < 2500
        r.setDriveVelocity(v,v)
    elseif c.left < 2500
        r.turnAngle(2)
        r.setDriveVelocity(v,v)
    elseif c.leftFront < 2500
        r.turnAngle(1)
        r.setDriveVelocity(v,v)
    elseif c.rightFront < 2500
        r.turnAngle(-2)
        r.setDriveVelocity(v,v)
    elseif c.right < 2500
        r.turnAngle(-1)
        r.setDriveVelocity(v,v)
    end
end