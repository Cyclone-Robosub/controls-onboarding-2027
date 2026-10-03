function rosmsgOut = Sensors(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.x = double(slBusIn.x);
    rosmsgOut.y = double(slBusIn.y);
    rosmsgOut.yaw = double(slBusIn.yaw);
    rosmsgOut.d1 = double(slBusIn.d1);
    rosmsgOut.d2 = double(slBusIn.d2);
    rosmsgOut.d3 = double(slBusIn.d3);
end
