function slBusOut = Sensors(msgIn, slBusOut, varargin)
%#codegen
%   Copyright 2021-2022 The MathWorks, Inc.
    slBusOut.x = double(msgIn.x);
    slBusOut.y = double(msgIn.y);
    slBusOut.yaw = double(msgIn.yaw);
    slBusOut.d1 = double(msgIn.d1);
    slBusOut.d2 = double(msgIn.d2);
    slBusOut.d3 = double(msgIn.d3);
end
