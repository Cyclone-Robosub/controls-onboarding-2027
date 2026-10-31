function [waypoint, found] = search_gap(Msg)
% Msg = [x, y, yaw, d1, d2, d3]
found = false;
waypoint = [0, 0];

persistent dist1    % save old distance
persistent angle1   % save old angle
persistent dist2    % same for finding 2nd corner
persistent angle2
persistent w1
persistent w2

if(isempty(dist1))
    dist1 = Msg(1, 5);
end

if(isempty(angle1))
    angle1 = Msg(1, 3);
end

if(abs(Msg(1, 5) - dist1) > 1.05)  % beam doesn't hit the other wall
    % used for 2nd corner
    dist2 = Msg(1, 5);
    angle2 = Msg(1, 3);
    if(abs(Msg(1, 5) - dist2) > 0.25)  % other corner
        w1 = [Msg(1, 1) + dist1 * cos(angle1), Msg(1, 2) + dist1 * sin(angle1)];
        w2 = [Msg(1, 1) + Msg(1, 5) * cos(angle2), Msg(1, 2) + Msg(1, 5) * sin(angle2)];
        waypoint = (w1 + w2) / 2;
        found = true;
        dist1 = Msg(1, 5);     % update after completing search
        angle1 = Msg(1, 3);
    end
elseif(abs(Msg(1, 5) - dist1) > 0.25)  % beam hits both walls of a gap
    avg_dist = (Msg(1, 5) + dist1) / 2;
    waypoint = [Msg(1, 1) + dist1 * cos(angle1), Msg(1, 2) + avg_dist * sin(angle1)];
    found = true;
    dist1 = Msg(1, 5);     % update after completing search
    angle1 = Msg(1, 3);
else
    dist1 = Msg(1, 5);     
    angle1 = Msg(1, 3);
end

end