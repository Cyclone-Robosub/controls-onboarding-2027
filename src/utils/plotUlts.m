function plotUlts(results)
try 
    ults = results.ults;
catch
    warning("No variable 'ults' found in results. Skipping plotting.")
end

t = results.ults.Time;

ults = squeeze(results.ults.Data)';
d1 = ults(:,1);
d2 = ults(:,2);
d3 = ults(:,3);

figure()
tiledlayout(3,1)

nexttile
plot(t,d1)
xlabel("Time (s)")
ylabel("Distance (m)")
title("Sensor 1 (Right)")

nexttile
plot(t,d2)
xlabel("Time (s)")
ylabel("Distance (m)")
title("Sensor 2 (Middle)")


nexttile
plot(t,d3)
xlabel("Time (s)")
ylabel("Distance (m)")
title("Sensor 3 (Left)")

end