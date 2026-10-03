close all 
clc 
clear results

% Initial Conditions
x0 = [0;0];

% Target
x_u = 1;

% Constants
b = 1;
k = 1;
m = 1;
B = [0;1];
A = [0 1;-k/m -b/m];

% PID
PID.P = 2;
PID.I = 1;
PID.D = 0.5;
PID.N = 100;
PID.output_sat = 5;

% Settings
tspan = 10;
dt_sim = 0.001;
dt_control = roundToSimTimestep(0.01,dt_sim);
dt_data = roundToSimTimestep(1/30,dt_sim);
delete_data_flag = false; %if false, data is deleted from file system but saved in the workspace for post processing

model_name = "ROS_example.slx";
open_system(model_name);

%configure the to-file blocks for data saving
example_SIM_data_path = fullfile(prj_path_list.examples_path,'ROS Example','ROS_example_data');
prj_path_list.prior_run_path = configureToFileBlocks(model_name, example_SIM_data_path); 

%run the model `ROS_example.slx` and store the output in `results`
results = sim("ROS_example.slx");

%% Post Processing
results = repackSimData(results, delete_data_flag, prj_path_list.prior_run_path);

%plots
figure()
subplot(2,1,1)
hold on
plot(results.X_x.Time, results.X_x.Data)
plot(results.x_u.Time, results.x_u.Data)
xlabel("Time (s)")
ylabel("Position (m)")
title("Mass-Spring Damper Position vs Time")
legend(["x", "x_u"],'Interpreter','none');
subplot(2,1,2)
hold on
plot(results.F.Time, results.F.Data);
xlabel("Time (s)")
ylabel("Force (N)")
title("Force")
ylim([-PID.output_sat,PID.output_sat])
legend("F")
