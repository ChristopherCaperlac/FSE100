%brick = ConnectBrick('GRANNYVANNY');
%DisconnectBrick(brick);
%brick.drawTest();
%brick.GetBattLevel;
%brick.SetColorMode(3, 2);
while (true)
    pause(0.1);
    clc;
    brick.MoveMotor('BC', 50);
    disp(brick.ColorCode(3));
    switch brick.ColorCode(3)
        case 5
            brick.StopAllMotors();
            brick.WaitForMotor('BC');
            brick.beep();
            pause(1);
        case 2
            brick.StopAllMotors();
            brick.WaitForMotor('BC');
            brick.beep();
            pause(1);
            brick.beep();
            pause(1);
        case 3
            brick.StopAllMotors();
            brick.WaitForMotor('BC');
            brick.beep();
            pause(1);
            brick.beep();
            pause(1);
            brick.beep();
            pause(1);
        case 6
            brick.StopAllMotors();
            brick.WaitForMotor('BC');
            brick.playTone(50, 440, 500);
            disp("Stopping Now");
            break;
        otherwise
            disp("Color is not coded");
    end
end