function input_feedback = search_input(Msg)
% Msg = [x, y, yaw, d1, d2, d3]

persistent direction
if(isempty(direction))
    direction = 1;
end 

% rotate to search
input_feedback = [0; 0.25 * direction; 1];

% change direction to avoid going backwards
if(Msg(1, 3) > 1.5)
    direction = -1;
elseif(Msg(1, 3) < -1.5)
    direction = 1;
end

end