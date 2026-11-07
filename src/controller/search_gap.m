function [waypoint, found] = search_gap(Msg)
% Msg = [x, y, yaw, d1, d2, d3]
found = false;
waypoint = [0, 0];

persistent dist1    % save old distance
persistent angle1   % save old angle
persistent corner

if(isempty(dist1))
    dist1 = Msg(1, 5);
end

if(isempty(angle1))
    angle1 = Msg(1, 3);
end

if(abs(Msg(1, 5) - dist1) > 0.5)  % gap causes big jump in d2
    corner = [Msg(1, 1) + dist1 * cos(angle1), Msg(1, 2) + dist1 * sin(angle1)];
    if(Msg(1, 5) > dist1)
        if(Msg(1, 3) > angle1)
            offset = 0.5;
        else
            offset = -0.5;
        end
    else
        if(Msg(1, 3) < angle1)
            offset = 0.5;
        else
            offset = -0.5;
        end
    end
    waypoint = corner + [offset, 0];
    found = true;
else
    dist1 = Msg(1, 5);     
    angle1 = Msg(1, 3);
end

end