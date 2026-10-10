function [status, wall_desc] = checkBotCollision(pos, scene)
%{
Checks collision between the bot at position with the walls of the scene.

Returns status = true if a collision is detected, as well as a string
descriptor of which wall was collided with.
%}

%initial
status = false;
wall_desc = "None";

%a collision = true if bot is OUTSIDE the frame or INSIDE the barrier
frame = scene.frame;
x = pos(1);
y = pos(2);



%frame
if((y <= frame(1,2) || y >= frame(2,2)))
    status = true;
    wall_desc = "Side";
elseif(x <= frame(1,1))
    status = true;
    wall_desc = "Bottom";
elseif(x >= frame(3,1))
    status = true;
    wall_desc = "Top";
end

%barriers
walls = {scene.wall1, scene.wall2, scene.wall3, scene.wall4, scene.wall5, scene.wall6};
k = 0;
wallk = 0;
if(~status) %if a collision hasn't been detected yet
    for k = 2:numel(walls)
        in_vert = false;
        in_horiz = false;
    
        wallk = walls{k-1};
    
        %vertical
        if(x < wallk(1,1) && x > wallk(3,1))
            in_vert = true;
        end
        %horizontal
        if(y > wallk(1,2) && y < wallk(2,2))
            in_horiz = true;
        end
        if(in_vert && in_horiz)
            status = true;
            wall_desc = "Barrier";
            break;
        end
    end
end

if ~contains(wall_desc,"None")
    fprintf("Collision detected with %s.\n",wall_desc);
end



end