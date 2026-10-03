function makeBotGif(scene, results)
%load file paths
if(~exist('prj_path_list','var')) 
    prj_path_list = getProjectPaths();
end

%make the figure
f = figure('Visible','off');
f.CloseRequestFcn = '';   % disables the close button/close() calls entirely while set
ax = axes('Parent',f);

%load the hgtransform used to draw the robot
robot_transform = load(fullfile(prj_path_list.assets_path,"robot_transform.mat")).robot_transform;

%reparent with the current axis
robot_transform.Parent = ax;

% get the ultrasonic sensor lines (for trimming to scene bounds)
ult1_line = findobj(robot_transform,'Tag','ult1');
ult2_line = findobj(robot_transform,'Tag','ult2');
ult3_line = findobj(robot_transform,'Tag','ult3');
ult_lines = [ult1_line, ult2_line, ult3_line];
ult_angles = [pi/6, 0, -pi/6];  
L = 100;                    


%draw the obstacles
drawScene(f,scene);

%get the time, position, and orientation data from the results
t = results.X.Time;
X = squeeze(results.X.Data)';
xi = X(:,1);
yi = X(:,2);
yaw = X(:,5);

%timestep
dt = t(2)-t(1);
nFrames = length(t);
frameArray = cell(1,nFrames);

%Start printout percentage
percent_text = fprintf("Media is 0.00%% Complete");

for k = 1:nFrames
    %move the robot 
    robot_transform.Matrix = makehgtform('translate',[xi(k) yi(k) 0],'zrotate', yaw(k));
    
    % rotation/translation from body -> world for this frame
    c = cos(yaw(k)); 
    s = sin(yaw(k));
    Cib = [c -s; s c];
    tail_i = [xi(k); yi(k)];

    % draw the ultrasonic sensor lines, trimmed to the proper length
    for m = 1:3
        tip_b_full = L*[cos(ult_angles(m)); sin(ult_angles(m))];
        tip_i_full = Cib*tip_b_full + tail_i;

        v_in = [tail_i'; tip_i_full'];
        v_trimmed = bindVectorTails(v_in, scene);

        % convert the trimmed world-frame tip back into body coords
        tip_b_trimmed = Cib' * (v_trimmed(2,:)' - tail_i);

        set(ult_lines(m), 'XData', [0, tip_b_trimmed(1)], 'YData', [0, tip_b_trimmed(2)]);
    end
    

    %draw the plot and save the frame
    drawnow limitrate;
    img = print(f, '-RGBImage', '-r0');
    frameArray{k} = img;

    %print progress to user every 10 frames
    if(mod(k,10)==0)
        percent_complete = k/nFrames*100;

        fprintf(repmat('\b',1,percent_text));
        percent_text = fprintf("Gif is %.2f%% Complete\n",percent_complete);
    end

end

fprintf(repmat('\b',1,percent_text));
percent_text = fprintf("Finalizing Gif...");
f.CloseRequestFcn = 'closereq';
close(f);
base_name = string(datetime('now','Format','uuuu_MM_dd_HH_mm_ss'));
gif_path = fullfile(prj_path_list.data_path,base_name+".gif");
for k = 1:nFrames
    %convert each frame to a 256x256 indexed image "A" with colormap "map"
    [A,map] = rgb2ind(frameArray{k},256);
    %append the image to the gif
    if k == 1
        imwrite(A,map,gif_path,'gif','LoopCount',inf,'DelayTime',dt);
    else
        imwrite(A,map,gif_path,'gif','WriteMode','append','DelayTime',dt);
    end
end

fprintf(repmat('\b',1,percent_text));
fprintf("Gif Complete!\n");

try
    winopen(gif_path);
catch
end

end