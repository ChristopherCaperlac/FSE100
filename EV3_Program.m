%brick = ConnectBrick('GRANNYVANNY'); 
%brick.drawTest();
%brick.GetBattLevel

global key
InitKeyboard();
while 1
    pause(0.1);
    switch key
        case 'uparrow'
            disp('Up Arrow Pressed!');
            brick.MoveMotorAngleRel('BC', 50, 360);

        case 'downarrow'
            disp('Down Arrow Pressed!');
            brick.MoveMotorAngleRel('BC', -50, 360, 'Brake');

        case 'leftarrow'
            disp('Left Arrow Pressed!');
            brick.MoveMotorAngleRel('C', 25, 180,'Brake');

        case 'rightarrow'
            disp('Right Arrow Pressed!');
            brick.MoveMotorAngleRel('B', 25, 180);
        case 0
            disp('No Key Pressed!');
            

        case 'q'
            break;
    end
end
CloseKeyboard();
