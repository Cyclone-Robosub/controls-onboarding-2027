function uc = controlZ(sensor_data, state)
    left = sensor_data(1);
    mid = sensor_data(2);
    right = sensor_data(3);
    yaw = state(3);

    if(left > mid)
        uc = [0.3, -0.7];
    elseif(right > mid)
        uc = [0.3, 0.7];
    else
        if(yaw < 0)
           uc = [0.5, 0.5];
        else
            uc = [0.5, -0.5];
        end
    end

end