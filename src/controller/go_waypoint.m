function input_feedback = go_waypoint(task_number, waypoint, Msg)

% waypoint is [x y]

x_diff = waypoint(1, 1) - Msg.x;
y_diff = waypoint(2, 1) - Msg.y;
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
if(Msg.yaw > 0)
    if(target_yaw < Msg.yaw && Msg.yaw - target_yaw < pi)
        direction = -1;
    else
        direction = 1;
    end
else
    if(target_yaw > Msg.yaw && target_yaw - Msg.yaw < pi)
        direction = 1;
    else
        direction = -1;
    end
end

done = false;

if(task_number == 1 && Msg.d2 < 1)   % going straight, stop at wall
    done = true;
elseif(task_number == 3 && hypot(x_diff, y_diff) < 0.1) % go to gap, stop when reached
    done = true;
end

if(not(done))
    if(abs(Msg.yaw - target_yaw) > 0.1) % edit rotation tolerance
        input_feedback = [0; 0.2 * direction; 0];
    else    % move forward
        input_feedback = [1; 0; 0];
    end
else
    input_feedback = [0; 0; 1];
end

end