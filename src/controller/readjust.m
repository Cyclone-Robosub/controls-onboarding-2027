function input_feedback = readjust(Msg)
if(Msg(1, 3) > 0)
    direction = -1;
else
    direction = 1;
end

if(abs(Msg(1, 3)) > 0.1)
    input_feedback = [0; 1.5 * direction; 0];
else
    input_feedback = [0; 0; 1];
end