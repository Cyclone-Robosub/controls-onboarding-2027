function [err_pos, err_yaw] = controlZ(sensor_data, state)
    % Sensor data
    mid = sensor_data(2);
    
    % States
    x = state(1);
    y = state(2);
    position = [x,y];
    yaw = state(3);

    % Constants
    turn_limit = 5*pi/12;

    % Persistent variables
    persistent prev_turn_direction;
    persistent turn_right;
    persistent prev_mid_distance;
    persistent driving;
    persistent at_end;
    persistent prev_pos;
    persistent target_pos; %[x,y]
    persistent target_yaw; %radians
    persistent t;
    persistent pass;
    persistent candidate_waypoint;
    persistent prev_turn_right;


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

    if isempty(pass)
        pass = 0;
    end

    if isempty(prev_turn_direction)
        prev_turn_direction = "Right";
    end

    if isempty(candidate_waypoint)
        candidate_waypoint = [Inf, Inf];
    end
    
    if isempty(prev_turn_right)
        prev_turn_right = turn_right;
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
    detected_opening = (mid - prev_mid_distance > 0.7);    

    if detected_opening
        candidate = [prev_mid_distance * cos(yaw) + x, prev_mid_distance * sin(yaw) + y];
       % if(norm(candidate - position) < norm(candidate_waypoint - position) && candidate(1) > x)
        if candidate(1) > x + 0.5
            candidate_waypoint = candidate;
            disp(candidate_waypoint);
        end
    end

    if prev_turn_right ~= turn_right
        pass = pass + 1;
        prev_turn_right = turn_right;
    end
    
    % Want to start driving if there is an opening, or keep driving if we
    % aren't close enough to the target position

    valid_waypoint = all(isfinite(candidate_waypoint));
    if((detected_opening && pass >= 2 && valid_waypoint) || driving)
        if(~driving)
            pass = 0;
            driving = true;
            target_yaw = yaw;

            target_pos = candidate_waypoint;
            candidate_waypoint = [Inf, Inf];

            % Add or subtract 0.5 to get to the middle of the opening
            if turn_right
                target_pos(2) = target_pos(2) + 0.3;
            else 
                target_pos(2) = target_pos(2) - 0.3;
            end

        end
        err_yaw = target_yaw - yaw;
        err_pos = norm(target_pos - position);

        if((abs(err_yaw) < 0.3 && err_pos < 0.8))
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

        % Check if we're at the end of the course
        if(norm(position - prev_pos) <= 0.001 || at_end > 2000)
            at_end = at_end + 1;
        else
            at_end = 0;
        end

    end

    % If we're at the end, just move forward
    if(at_end > 2000)
        err_yaw = 0;
        err_pos = 1;

        if mid < 2.2
            err_yaw = 0;
            err_pos = 0;
            driving = false;
            if at_end <= 2001
                disp("REACHED END")
            end
        end
    end

    prev_pos = [x, y];
    prev_mid_distance = mid;
end