function task_num = Decider(feedback)

% if feedback is 1 then change task
% 1 = go straight
% 2 = search for gap
% 3 = go through gap

F = feedback(3, 1); % parse from matrix

persistent n
if(isempty(n)) 
    n = 1;  % go straight by default
end

% if there's a feedback
% sequence: 1 2 3 1 2 3...
if(F == 1)
    if(n == 3)
        n = 1;
    else
        n = n + 1;
    end
end

task_num = n;
end