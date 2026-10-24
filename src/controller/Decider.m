function task_num = Decider(feedback)

% 1 = go straight
% 2 = search for gap
% 3 = go to gap

F = feedback(3, 1); % parse from matrix

persistent n
if(isempty(n)) 
    n = 1;  % go straight by default
end

if(F == 1)
    n = 2;  % start searching when near a wall
end
if(F == 2)
    n = 3;  % go to gap when found
end
if(F == 3)
    n = 1;
end

task_num = n;
end