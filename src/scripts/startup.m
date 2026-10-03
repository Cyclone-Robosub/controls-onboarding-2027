clear all; %#ok<CLALL> %the #ok<CLALL> business is a linter suppression pragma to prevent Code Analyzer from flagging clear all as an issue
clc;
close all;

fprintf("Running controls-onboarding-2027 startup script.\n");

%get the current project
try
    prj = currentProject;
catch
    error("Use the Project panel to open the controls-2027 project to run startup.m\n")
end

%build all the relevant paths
root_path = prj.RootFolder;
assets_path = fullfile(root_path,"src","assets");
data_path = fullfile(root_path,"data");
asv_path = fullfile(root_path,"autosaves and caches");
examples_path = fullfile(root_path,"examples");
custom_interfaces_path = assets_path; 

if(~isfolder(assets_path))
    mkdir(assets_path);
end
if(~isfolder(data_path))
    mkdir(data_path);
end

%put all the paths in one place to avoid Workspace clutter
prj_path_list.root_path = root_path;
prj_path_list.assets_path = assets_path;
prj_path_list.data_path = data_path;
prj_path_list.asv_path = asv_path;
prj_path_list.examples_path = examples_path;
prj_path_list.custom_interfaces_path = custom_interfaces_path;
clear root_path assets_path prj data_path asv_path examples_path custom_interfaces_path

%save the paths to be loaded by other functions
save(fullfile(prj_path_list.root_path,"prj_path_list.mat"),"prj_path_list",'-mat');


%load assets
standard_scene = getfield(load(fullfile(prj_path_list.assets_path,"standard_scene.mat"),"standard_scene"),"standard_scene"); %this is a useful one liner for loading .mat files containing only a single variable


