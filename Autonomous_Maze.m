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

    switch color 
        case 5
            brick.StopAllMotors();
            brick.WaitForMotor('BC');
            pause(1);
        case 4
            brick.StopAllMotors();
            brick.WaitForMotor('BC');
            brick.playTone(10, 440, 500);
            disp("Stopping Now");
            break;
    end

    if distance > 26
        variance = round((distance - 26)^2);
        if variance > 100
            variance = 100;
        end
        brick.MoveMotor('B', variance);
        brick.MoveMotor('C', 0);
        pause(0.09)
    end
    
    if distance < 21
        variance = round((21 - distance)^2);
        if variance > 100
            variance = 100;
        end
        brick.MoveMotor('C', variance);
        brick.MoveMotor('B', 0);
        pause(0.09)
    end

    brick.MoveMotor('BC', 50);
    pause(0.1)

    isPressed = brick.TouchPressed(1);
    isPressed2 = brick.TouchPressed(2);

    if isPressed || isPressed2
       brick.StopAllMotors();
       brick.MoveMotorAngleRel('BC', -100, 360);
       brick.WaitForMotor('BC');
       brick.MoveMotor('B', -50);
       brick.MoveMotor('C', 50);
       pause(0.55)
       brick.StopAllMotors();
       brick.WaitForMotor('BC');
    end

    if color == 2 || color == 3
        EV3_Program;
    end
end