%brick = ConnectBrick('GRANNYVANNY');
%DisconnectBrick(brick);
%brick.drawTest();
%brick.GetBattLevel;

global key
InitKeyboard();
while 1
    pause(0.1);
    clc;
    color = brick.ColorCode(3);
    disp(color);
    distance = brick.UltrasonicDist(4);
    disp(distance);
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

        case 'r'
            disp('Go Up');
            brick.MoveMotorAngleRel('D', 30, 5);

        case 'f'
            disp('Go Down');
            brick.MoveMotorAngleRel('D', -30, 5);

        case '0'
            disp('No Key Pressed!');
            
        case 'q'
            break;
    end
end
CloseKeyboard();