clc
close all

% rectangular body
V = 0.05*[2 1;...
    2 -1;...
    -2 -1;...
    -2 1];
F = 1:length(V);

f = figure();
ax = gca;
robot_transform = hgtransform('Parent',ax); 

body_patch = patch('Parent',robot_transform,'Faces',F,'Vertices',V,'EdgeColor','k','FaceColor','b','FaceAlpha',0.75);
r = 0.03;
prop1_patch = drawCircle(robot_transform,0.1-r,0.05+r,r,100);
prop2_patch = drawCircle(robot_transform,0.1-r,-0.05-r,r,100);
prop3_patch = drawCircle(robot_transform,-0.1+r,-0.05-r,r,100);
prop4_patch = drawCircle(robot_transform,-0.1+r,0.05+r,r,100);

set(gca,'YDir','reverse')
axis("equal")

%ultrasonic sensor lines
ult1_line = plot([0, 100*cos(pi/6)],[0, 100*sin(pi/6)],'Parent',robot_transform,'Color','r','LineStyle','-','Marker','none','Tag','ult1');
ult2_line = plot([0, 100*cos(0)],[0, 100*sin(0)],'Parent',robot_transform,'Color','r','LineStyle','-','Marker','none','Tag','ult2');
ult3_line = plot([0, 100*cos(-pi/6)],[0, 100*sin(-pi/6)],'Parent',robot_transform,'Color','r','LineStyle','-','Marker','none','Tag','ult3');

%save the transform for later use, note that you will have to reparent it
%to an axis after loading it
save(fullfile(prj_path_list.assets_path,'robot_transform.mat'),'robot_transform','-mat')
function p = drawCircle(parent,x,y,r,N)
%helper function to draw the thrusters

    V = zeros(N,2); %Vertices
    F = 1:length(V); %Faces
    
    %calculate the location of N points around a circle
    for k = 1:N
        xk = r*cos(2*pi*(k-1)/N);
        yk = r*sin(2*pi*(k-1)/N);
        V(k,1) = xk + x;
        V(k,2) = yk + y;
    end
    
    p = patch('Parent',parent,'Faces',F,'Vertices',V,'EdgeColor','k','FaceColor','b','FaceAlpha',0.75);

end