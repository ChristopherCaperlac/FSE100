%brick = ConnectBrick('GRANNYVANNY');
%DisconnectBrick(brick);
%brick.drawTest();
%brick.GetBattLevel

global key
InitKeyboard();
while 1
    pause(0.1);
    clc;
    switch key
        case 'w'
            disp('Up Pressed!');
            brick.MoveMotorAngleRel('BC', 50, 180);

        case 's'
            disp('Down Pressed!');
            brick.MoveMotorAngleRel('BC', -50, 180);

        case 'a'
            disp('Left Pressed!');
            brick.MoveMotorAngleRel('C', 25, 180);

        case 'd'
            disp('Right Pressed!');
            brick.MoveMotorAngleRel('B', 25, 180);

        case '0'
            disp('No Key Pressed!');
            
        case 'q'
            break;
    end
end
CloseKeyboard();