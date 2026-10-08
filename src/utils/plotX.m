function plotX(results)
try 
    X = results.X;
catch
    warning("No variable 'X' found in results. Skipping plotting.")
end

t = results.X.Time;

X = squeeze(results.X.Data)';
ri = X(:,1:2);
dri = X(:,3:4);

figure()
tiledlayout(4,1)

nexttile
plot(t,ri(:,1))
hold on
plot(t,ri(:,2))
xlabel("Time (s)")
ylabel("Position (m)")
title("Robot Position")
legend(["x", "y"])

nexttile
plot(t,dri(:,1))
hold on
plot(t,dri(:,2))
xlabel("Time (s)")
ylabel("Velocity (m/s)")
title("Robot Velocity")
legend(["dx", "dy"])

nexttile
plot(t,X(:,5))
xlabel("Time (s)")
ylabel("Yaw (rad)")
title("Robot Attitude")
legend("\psi")

nexttile
plot(t,X(:,6))
xlabel("Time (s)")
ylabel("Angular Velocity (rad/s)")
title("Robot Angular Velocity")
legend("$\dot{\psi}$", 'Interpreter',latex)
end