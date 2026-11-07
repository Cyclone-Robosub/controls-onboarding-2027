function input_feedback = go_waypoint(task_number, waypoint, Msg, dMsg)
% Msg = [x, y, yaw, d1, d2, d3]
% waypoint is [x y]

x_diff = waypoint(1, 1) - Msg(1, 1);
y_diff = waypoint(1, 2) - Msg(1, 2);
target_yaw = atan(y_diff / x_diff);

% -pi/2 < arctan x < pi/2, only covers x_diff > 0 
% needs adjustments to cover when x_diff < 0
if(x_diff < 0)
    if(target_yaw >= 0)
        target_yaw = target_yaw - pi;
    else
        target_yaw = target_yaw + pi;
    end
end

% turning direction
if(Msg(1, 3) > 0)
    if(target_yaw < Msg(1, 3) && Msg(1, 3) - target_yaw < pi)
        direction = -1;
    else
        direction = 1;
    end
else
    if(target_yaw > Msg(1, 3) && target_yaw - Msg(1, 3) < pi)
        direction = 1;
    else
        direction = -1;
    end
end

done = false;

if(task_number == 1 && Msg(1, 5) < 1.5)   % adjust stopping distance
    done = true;
elseif(task_number == 3 && hypot(x_diff, y_diff) < 0.2) % go to gap, stop when reached
    done = true;
end

if(done == false)
    if(abs(Msg(1, 3) - target_yaw) > 0.1) % edit rotation tolerance
        input_feedback = [0.5; 0.25 * direction; 0];
    else    % move forward
        input_feedback = [1.25; 0; 0];
    end
else
    speed = hypot(dMsg(1, 1), dMsg(1, 2));
    if(speed > 0.25)
        input_feedback = [-2.5; 0; 0];  % stopping
    else
        input_feedback = [0; 0; 1];
    end
end

end