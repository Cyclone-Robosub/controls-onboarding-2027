function viewBus(bus)
% Prints useful information about a SimulinkBus

% Make a table out of the bus for easy viewing
% Casting to a categorical makes the display cleaner w/out string quotes ""
struct2table(arrayfun(@(e) struct('Name',categorical(string(e.Name)),...
    'Size',categorical(string(mat2str(e.Dimensions))),...
    'Type',categorical(string(e.DataType))), bus.Elements))

disp(table)
end