%brick = ConnectBrick('GRANNYVANNY');
%DisconnectBrick(brick);
%brick.drawTest();
%brick.GetBattLevel;
%brick.SetColorMode(3, 2);

while (true)
    pause(0.1);
    clc;
    brick.MoveMotor('BC', 50);
    color = brick.ColorCode(3);
    disp(color);

    if color == 1
        brick.StopAllMotors();
        brick.WaitForMotor('BC');
        brick.playTone(50, 440, 500);
        disp("Stopping Now");
        break;
    end

    distance = brick.UltrasonicDist(4);
    disp(distance);

    if distance <= 20
        brick.StopAllMotors();
        brick.MoveMotorAngleRel('B', -50, 300);
        brick.WaitForMotor('B');
    end

end