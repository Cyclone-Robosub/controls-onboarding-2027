function [waypoint, found] = search_gap(Msg)
found = false;

persistent dist1    % save old distance
persistent angle1   % save old angle
persistent dist2    % same for finding 2nd corner
persistent angle2
persistent w1
persistent w2

if(isempty(dist1))
    dist1 = Msg.d2;
end

if(isempty(angle1))
    angle1 = Msg.yaw;
end

if(abs(Msg.d2 - dist1) > 1.05)  % beam doesn't hit the other wall
    % used for 2nd corner
    dist2 = Msg.d2;
    angle2 = Msg.yaw;
    if(abs(Msg.d2 - dist2) > 0.25)  % other corner
        w1 = [Msg.x + dist1 * cos(angle1), Msg.y + dist1 * sin(angle1)];
        w2 = [Msg.x + Msg.d2 * cos(angle2), Msg.y + Msg.d2 * sin(angle2)];
        waypoint = (w1 + w2) / 2;
        found = true;
        dist1 = Msg.d2;     % update after completing search
        angle1 = Msg.yaw;
    end
elseif(abs(Msg.d2 - dist1) > 0.25)  % beam hits both walls of a gap
    avg_dist = (Msg.d2 + dist1) / 2;
    waypoint = [Msg.x + dist1 * cos(angle1), Msg.y + avg_dist * sin(angle1)];
    found = true;
    dist1 = Msg.d2;     % update after completing search
    angle1 = Msg.yaw;
else
    dist1 = Msg.d2;     
    angle1 = Msg.yaw;
end

end