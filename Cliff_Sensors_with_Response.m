v=0.1;
r.setDriveVelocity(v,v)

while true
    c=r.getCliffSensors
    if c.left<2500 || c.leftFront<2500 || c.rightFront<2500 || c.right<2500
        r.stop
        sendmail('6154154898@txt.att.net','Cliff Detected','Dont look down')
        r.moveDistance(-0.2)
        r.songPlay('O5,T400,C,E,G,C^*2,G,C^*4')
        r.turnAngle(180)
        r.setDriveVelocity(v,v)
    end
end