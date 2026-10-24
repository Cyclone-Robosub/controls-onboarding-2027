function task_num = Decider(feedback)

% 1 = go straight
% 2 = search for gap
% 3 = go to gap

F = feedback(3, 1); % parse from matrix

persistent n
if(isempty(n)) 
    n = 1;  % go straight by default
end

n = F;

task_num = n;
end