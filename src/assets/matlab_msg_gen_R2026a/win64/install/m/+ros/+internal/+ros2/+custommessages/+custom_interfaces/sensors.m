function [data, info] = sensors
%Sensors gives an empty data for custom_interfaces/Sensors
% Copyright 2019-2021 The MathWorks, Inc.
data = struct();
data.MessageType = 'custom_interfaces/Sensors';
[data.x, info.x] = ros.internal.ros2.messages.ros2.default_type('double',1,0);
[data.y, info.y] = ros.internal.ros2.messages.ros2.default_type('double',1,0);
[data.yaw, info.yaw] = ros.internal.ros2.messages.ros2.default_type('double',1,0);
[data.d1, info.d1] = ros.internal.ros2.messages.ros2.default_type('double',1,0);
[data.d2, info.d2] = ros.internal.ros2.messages.ros2.default_type('double',1,0);
[data.d3, info.d3] = ros.internal.ros2.messages.ros2.default_type('double',1,0);
info.MessageType = 'custom_interfaces/Sensors';
info.constant = 0;
info.default = 0;
info.maxstrlen = NaN;
info.MaxLen = 1;
info.MinLen = 1;
info.MatPath = cell(1,6);
info.MatPath{1} = 'x';
info.MatPath{2} = 'y';
info.MatPath{3} = 'yaw';
info.MatPath{4} = 'd1';
info.MatPath{5} = 'd2';
info.MatPath{6} = 'd3';
