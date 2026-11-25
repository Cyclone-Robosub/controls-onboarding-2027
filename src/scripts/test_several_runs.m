for i=1:30
    if i == 1
        close all
        clc
        run("constants.m")

        ri0 = [0.5 3]'; %position (m)
        dri0 = [0 0]'; %velocity (m/s)  
        yaw0 = 0; %pointing angle (rad)
        dyaw0 = 0; %angular velocity
        X0 = [ri0;dri0;yaw0;dyaw0];

        tspan = 70; %(s)
        dt_sim = 0.001; %(s), simulation fundamental timestep
        dt_data = roundToSimTimestep(1/30, dt_sim); %rate for saving data to plot
        dt_control = roundToSimTimestep(1/100, dt_sim); %update rate for controller
    end

    scene = createRandomScene();
    scene_bus = sceneToBus(scene);
    scene_struct = sceneToStruct(scene);
    results = sim("bot_sim.slx");

    if results.X.TimeInfo.End < 69 && results.X.Data(1, 1, numel(results.X.Data(1, :))) < 8.5
        plotX(results) %position, velocity, yaw, yaw rate
        plotUlts(results) %ultrasonic sensor measurements
        plotPath(scene,results) %2D trajectory
        break
    end
end

makeBotGif(scene,results);