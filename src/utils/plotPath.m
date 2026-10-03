function plotPath(scene, results)
try 
    X = results.X;
catch
    warning("No variable 'X' found in results. Skipping plotting.")
end

X = squeeze(results.X.Data)';
ri = X(:,1:2);




f = figure();
drawScene(f, scene);
plot(ri(:,1),ri(:,2),'Color','b')
title("Robot Trajectory")
end