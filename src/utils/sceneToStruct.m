function myStruct = sceneToStruct(scene)
%{
Creates a struct from the scene and returns it. The resulting structure
exactly matches the shape of the bus created using sceneToBus(scene), which
is necessary to use it in Simulink.

Scenes are expected to be 1xN cell arrays where each element is a Mx2
matrix of obstacle vertices. M need not be the same for each element, which
is why a cell array is necessary here. 

Scenes are expected to be configured such that the first obstacle is the
frame and each subsequent object is an obstacle. See scene_config.m for
more information.

We have to use this Simulink Bus + Structure pattern to bring this into 
Simulink, because Simulink does not support cell arrays directly.
%}

%frame
myStruct.frame = scene{1};

%walls
for k = 2:numel(scene)
    name = sprintf('wall%d',k-1);
    myStruct.(name) = scene{k};
end

end
