close all
clc

%% Scene Setup
% Choose a scene using comments
scene = standard_scene;
% scene = createRandomScene();

%{ 
Create the bus + struct pair needed to use cell arrays (like scene) inside
Simulink. 

As a helpful tip, the helper function viewBus(scene_bus) let's you see the
fields inside an existing bus in the Command Window. You can verify that
the structure fields, types, and sizes of scene_struct match the contents
of scene_bus.
%}
scene_bus = sceneToBus(scene);
scene_struct = sceneToStruct(scene);

%% ROS Msg Setup
% Run once for setup, or whenever the msg definitions in custom_interfaces
% are changed.
ros2genmsg(prj_path_list.assets_path);

% A helpful function to inspect msg contents
getCustomRosBus("Sensors");
%% Load Constants
run("constants.m")

%% Initial Conditions
ri0 = [0.5 3]'; %position (m)
dri0 = [0 0]'; %velocity (m/s)
yaw0 = 0; %pointing angle (rad)
dyaw0 = 0; %angular velocity

X0 = [ri0;dri0;yaw0;dyaw0];

%% Simulation Conditions
tspan = 10; %(s)
dt_sim = 0.001; %(s), simulation fundamental timestep
dt_data = roundToSimTimestep(1/30, dt_sim); %rate for saving data to plot
dt_control = roundToSimTimestep(1/100, dt_sim); %update rate for controller

results = sim("bot_sim.slx");

%% Plots
plotX(results) %position, velocity, yaw, yaw rate
plotUlts(results) %ultrasonic sensor measurements
plotPath(scene,results) %2D trajectory
makeBotGif(scene,results) 