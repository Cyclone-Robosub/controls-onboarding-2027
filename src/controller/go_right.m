function input_feedback = go_right(Msg)

% adjust yaw until it's value is 0, 2pi, 4pi, etc (right direction)
% go straight (input is [2;0])

% adjust error margin (rad) to liking
while(abs(Msg.yaw) > 0.1)
    if(Msg.yaw > 0)
        input_feedback = [0, 0.5, 1];
    elseif(Msg.yaw < 0) 
        input_feedback = [0, -0.5, 1];
    end
end
input_feedback = [2, 0, 1];

if(Msg.d2 <= 0.75)
    input_feedback = [0, 0, 2]; % close to wall, send feedback 1 to stop
end
end