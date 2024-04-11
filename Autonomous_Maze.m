%brick = ConnectBrick('GRANNYVANNY');
%DisconnectBrick(brick);
%brick.drawTest();
%brick.GetBattLevel;
%brick.SetColorMode(3, 2);

while true
    clc;
    color = brick.ColorCode(3);
    disp(color);
    distance = brick.UltrasonicDist(4);
    disp(distance);
    if color == 4
        brick.StopAllMotors();
        brick.WaitForMotor('BC');
        brick.playTone(10, 440, 500);
        disp("Stopping Now");
        break;
    end
    if distance > 26
        variance = round(32*sqrt(distance - 26));
        brick.MoveMotor('B', variance);
        brick.MoveMotor('C', 0);
        pause(0.05)
    end
    
    if distance < 16
        variance = round(32*sqrt(16 - distance));
        brick.MoveMotor('C', variance);
        brick.MoveMotor('B', 0);
        pause(0.05)
    end

    brick.MoveMotor('BC', 50);
    pause(0.1)

    isPressed = brick.TouchPressed(1);

    if isPressed
       brick.StopAllMotors();
       brick.MoveMotorAngleRel('BC', -100, 360);
       brick.WaitForMotor('BC');
       brick.MoveMotorAngleRel('C', 100, 180);
       brick.WaitForMotor('BC');
    end
end