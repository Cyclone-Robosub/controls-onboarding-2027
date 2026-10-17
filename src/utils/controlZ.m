function [err_pos, err_yaw] = controlZ(sensor_data, sensor_data_derivative, state)
    % Sensor data
    left = sensor_data(1);
    mid = sensor_data(2);
    right = sensor_data(3);

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
    persistent target_pos; %[x,y]
    persistent target_yaw; %radians

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


    % Check if there is an opening by seeing if there are sudden jumps in the sensor data 
    detected_opening = prev_mid_distance - mid > 1.5;

    % Want to start driving if there is an opening, or keep driving if we
    % aren't close enough to the target position
    if(detected_opening || driving)
        if(~driving) 
            driving = true;
            target_yaw = yaw;
            target_pos = [prev_mid_distance * cos(yaw) + x, prev_mid_distance * sin(yaw) + y + 0.5]; % Add 0.5 to get to the middle of the opening
        end
        err_yaw = target_yaw - yaw;
        err_pos = norm(target_pos - position);

        if(err_yaw < 0.05 && err_pos < 0.1)
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
        prev_mid_distance = mid;
    end

end