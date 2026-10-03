function bus = sceneToBus(scene)
%{
Creates a Simulink Bus from the scene and returns the bus object.

Scenes are expected to be 1xN cell arrays where each element is a Mx2
matrix of obstacle vertices. M need not be the same for each element, which
is why a cell array is necessary here. 

Scenes are expected to be configured such that the first obstacle is the
frame and each subsequent object is an obstacle. See scene_config.m for
more information.

We have to use a Simulink Bus to bring this into Simulink, because Simulink
does not support cell arrays directly.
%}

%frame
bus_elements(1) = Simulink.BusElement;
bus_elements(1).Name = "frame";
bus_elements(1).Dimensions = size(scene{1});
bus_elements(1).DataType = 'double';

%walls
for k = 2:numel(scene)
    bus_elements(end+1) = Simulink.BusElement; %#ok<AGROW>
    bus_elements(end).Name = sprintf('wall%d',k-1);
    bus_elements(end).Dimensions = size(scene{k});
    bus_elements(end).DataType = 'double';
end

%create the bus out of the elements
bus = Simulink.Bus;
bus.Elements = bus_elements;
bus.Description = "A bus to hold the frame and obstacles in the scene.";

end