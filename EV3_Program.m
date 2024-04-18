%brick = ConnectBrick('GRANNYVANNY');w
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
            brick.MoveMotor('BC', 50);
        case 's'
            disp('Down Pressed!');
            brick.MoveMotor('BC', -50);
        case 'a'
            disp('Left Pressed!');
            brick.MoveMotor('C', 20);
        case 'd'
            disp('Right Pressed!');
            brick.MoveMotor('B', 20);
        case 'r'
            disp('Go Up');
            brick.MoveMotor('D', -20);
        case 'f'
            disp('Go Down');
            brick.MoveMotor('D', 10);
        case '0'
            disp('No Key Pressed!');
            brick.StopAllMotors();
        case 'q'
            break;
    end
end
CloseKeyboard();