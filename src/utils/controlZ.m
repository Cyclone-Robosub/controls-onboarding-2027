function [err_pos, err_yaw] = controlZ(sensor_data, state)
    % Sensor data
    mid = sensor_data(2);
    
    % States
    x = state(1);
    y = state(2);
    position = [x,y];
    yaw = state(3);

    % Constants
    turn_limit = pi/3;

    % Persistent variables
    persistent turn_right;
    persistent prev_mid_distance;
    persistent driving;
    persistent at_end;
    persistent prev_pos;
    persistent target_pos; %[x,y]
    persistent target_yaw; %radians
    persistent t;

    % Initialize persistent variables
    if isempty(turn_right)
        turn_right = true;
    end

    if isempty(prev_mid_distance)
        prev_mid_distance = mid;
    end

    if isempty(driving)
        driving = false;
    end

    if isempty(target_pos)
        target_pos = [0, 0];
    end

    if isempty(target_yaw)
        target_yaw = 0;
    end

    if isempty(prev_pos)
        prev_pos = [0, 0];
    end
   
    if isempty(t)
        t = 0;
    end

    if isempty(at_end)
        at_end = 0;
    end

    if (mid == 0)
        err_pos = 0;
        err_yaw = 0;
        return;
    end

    if (prev_mid_distance == 0)
        prev_mid_distance = mid;
    end

    % Check if there is an opening by seeing if there are sudden jumps in the sensor data 
    detected_opening = mid - prev_mid_distance > 1.5;

    % Want to start driving if there is an opening, or keep driving if we
    % aren't close enough to the target position
    if(detected_opening || driving)
        if(~driving) 
            driving = true;
            target_yaw = yaw;

            if turn_right
                target_yaw = target_yaw + 0.5;
            else
                target_yaw = target_yaw - 0.5;
            end

            target_pos = [prev_mid_distance * cos(yaw) + x, prev_mid_distance * sin(yaw) + y];
            % Add or subtract 0.5 to get to the middle of the opening
            if turn_right
                target_pos(2) = target_pos(2) + 0.5;
            else 
                target_pos(2) = target_pos(2) - 0.5;
            end

        end
        err_yaw = target_yaw - yaw;
        err_pos = norm(target_pos - position);

        if(err_yaw < 0.5 && err_pos < 1.5)
            driving = false;
        end
    else
        % Otherwise we seek in place
        err_pos = 0;
        if turn_right
            target_yaw = turn_limit;
            err_yaw = target_yaw - yaw;
            if err_yaw < 0.1
                turn_right = false;
            end
        else 
            target_yaw = -turn_limit;
            err_yaw = target_yaw - yaw;
            if err_yaw > -0.1
                turn_right = true;
            end
        end

        if(prev_pos(1) == x && prev_pos(2) == y)
            at_end = at_end + 1;
        else
            at_end = 0;
        end

        if(at_end > 40)
            err_yaw = 0;
            err_pos = 1;
        end
    
        prev_pos = [x, y];
        prev_mid_distance = mid;
    end

end