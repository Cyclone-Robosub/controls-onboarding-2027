function v_out = bindVectorTails(v_in, scene_in)
%{
Helper function for the ultrasonic sensor 2D model.

v_in is a vector specified as [x1 y1;x2 y2].

This function takes v_in and checks intersections of the vector with scene
walls. If an intersection is detected, the vector tail is moved to the
intersection point. The start point should always be inside the scene, as
it is the robot's position. 
%}

scene = cell(7,1);

%set this up so it can handle scene as a struct as well as a cell array
if(isa(scene_in,'struct'))
    scene{1} = scene_in.frame;
    scene{2} = scene_in.wall1;
    scene{3} = scene_in.wall2;
    scene{4} = scene_in.wall3;
    scene{5} = scene_in.wall4;
    scene{6} = scene_in.wall5;
    scene{7} = scene_in.wall6;
    
else
    scene = scene_in;
end


%vector line y = mx + b
xv1 = v_in(1,1);
yv1 = v_in(1,2);
xv2 = v_in(2,1);
yv2 = v_in(2,2);
mv = (yv2-yv1)/(xv2-xv1);
bv = -mv*xv1 + yv1;


%loop through scene objects and each wall on each object
for k = 1:numel(scene)
    for j = 1:length(scene{k})
        p1 = scene{k}(j,:); %first vertex
        %vertex 2 is the next consecutive vertex, wrapping back to 1 on ovf
        if(j+1 > length(scene{k}))
            p2 = scene{k}(1,:);
        else
            p2 = scene{k}(j+1,:);
        end
        
        %wall line y = mx + b
        xw1 = p1(1);
        yw1 = p1(2);
        xw2 = p2(1);
        yw2 = p2(2);
        mw = (yw2-yw1)/(xw2-xw1);
        bw = -mw*xw1 + yw1;

        %find intersection
        if(xw1 == xw2) %vertical walls
            x = xw1;
            y = mv*x + bv;
        elseif(xv1 == xv2) %vertical ray
            x = xv1;
            y = mw*x + bw;
        else
            x = (bw - bv)/(mv - mw);
            y = mw*x + bw;
        end
        

        %check if the intersection lies on the wall
        in_x = false;
        in_y = false;
        in_wall = false;

        if(x >= min([xw1,xw2]) && x <= max([xw1,xw2]))
            in_x = true;
        end
        if(y >= min([yw1,yw2]) && y <= max([yw1,yw2]))
            in_y = true;
        end

        if(in_x && in_y) %real intersection
            in_wall = true;
        end

        %check if the intersection is in the ray
        in_x = false;
        in_y = false;
        in_ray = false;
        
        if(x >= min([xv1,xv2]) && x <= max([xv1,xv2]))
            in_x = true;
        end
        if(y >= min([yv1,yv2]) && y <= max([yv1,yv2]))
            in_y = true;
        end

        if(in_x && in_y) %real intersection
            in_ray = true;
        end

        %if this is a real collision, move the end point of the ray
        if(in_wall && in_ray)
            %move the intersection point to this collision
            v_in(2,1) = x;
            v_in(2,2) = y;
            xv2 = x;
            yv2 = y;
        end

    end
end

v_out = v_in;




end