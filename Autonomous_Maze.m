%brick = ConnectBrick('GRANNYVANNY');
%DisconnectBrick(brick);
%brick.drawTest();
%brick.GetBattLevel;
%brick.SetColorMode(3, 2);

while (true)
    pause(0.1);
    clc;
    color = brick.ColorCode(3);
    disp(color);
    distance = brick.UltrasonicDist(4);
    disp(distance);
    isPressed = brick.TouchPressed(1);

    if color == 4
        brick.StopAllMotors();
        brick.WaitForMotor('BC');
        brick.playTone(10, 440, 500);
        disp("Stopping Now");
        break;
    end

    if distance > 30
        %variance = distance - 30;
        brick.MoveMotor('B', 30);
        brick.MoveMotor('C', -10);
        pause(0.1);
    end

    if distance < 20
        %variance = distance - 20;
        brick.MoveMotor('C', 30);
        brick.MoveMotor('B', -10);
        pause(0.1);
    end

    brick.MoveMotor('BC', 50);

    if isPressed
       brick.MoveMotor('BC', -100);
       pause(0.1);
       brick.MoveMotor('C', 100);
    end
end