function prj_paths_list = getProjectPaths()
origin_dir = pwd;
in_root_flag = 0;
%if 'SimulinkPlant is a substring of parent, move up
while(~in_root_flag)
    [parent,folder] = fileparts(pwd);
    if(contains(parent,'controls-onboarding-2027'))
        cd ..;
    elseif(isequal(folder,'controls-onboarding-2027'))
        in_root_flag = true;
    else
        %search for the the folder with SimulinkPlant folder
        try
            target_dir = dir(fullfile(pwd,'**','controls-onboarding-2027'));
            cd(target_dir(1).folder);
            in_root_flag = true;
        catch
            error("Attempting to call getProjectPath from an invalid location. Knock it off.");
        end
    end
end

%we should now be within the root folder, which contains prj_path_list.mat
try
    temp = load('prj_path_list.mat');
    prj_paths_list = temp.prj_path_list;
catch
    error("Failed to load prj_path_list. Run startup.m")
end

%go back to where you started
try
    cd(origin_dir);
catch
    warning("Original directory was missing or deleted. Leaving you here.")
end
end