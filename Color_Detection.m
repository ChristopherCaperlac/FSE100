brick = ConnectBrick('GRANNYVANNY');
%DisconnectBrick(brick);
%brick.drawTest();
%brick.GetBattLevel;
brick.SetColorMode(3, 2);
while (true)
    clc;
    brick.MoveMotor('BC', 50);
    disp(brick.ColorCode(3));
    switch brick.ColorCode(3)
        case 5
            brick.beep();
            brick.StopAllMotors();
            pause(1);
        case 2
            brick.beep();
            brick.StopAllMotors();
            pause(1);
            brick.beep();
            pause(1);
        case 3
            brick.beep();
            brick.StopAllMotors();
            pause(1);
            brick.beep();
            pause(1);
            brick.beep();
            pause(1);
        case 1
            brick.playTone(50, 440, 500);
            disp("Stopping Now");
            brick.StopAllMotors();
            break;
        otherwise
            disp("Color is not coded");
    end
end