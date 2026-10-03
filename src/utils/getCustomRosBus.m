function getCustomRosBus(msgName)
%{
Prints ROS2 message type(s) belonging to the custom_interfaces package,
along with a table of each message's field names, sizes, and data types.

Optional input msgName filters to a single message (e.g. "Sensors" or
"custom_interfaces/Sensors") instead of printing all of them.

Disclaimer: Created using AI
%}

if nargin < 1
    msgName = "";
end

allMsgs = ros2("msg","list"); % cell array of char vectors
isCustom = startsWith(allMsgs, "custom_interfaces/");
customMsgs = allMsgs(isCustom);

if msgName ~= ""
    % accept either "Sensors" or "custom_interfaces/Sensors"
    if contains(msgName, "/")
        target = msgName;
    else
        target = "custom_interfaces/" + msgName;
    end
    customMsgs = customMsgs(strcmp(customMsgs, target));

    if isempty(customMsgs)
        fprintf("No message named '%s' found under 'custom_interfaces'.\n", msgName);
        return
    end
elseif isempty(customMsgs)
    fprintf("No messages found under 'custom_interfaces'.\n");
    return
end

for k = 1:numel(customMsgs)
    msgType = customMsgs{k};
    fprintf("\n=== %s ===\n", msgType);

    msg = ros2message(msgType);
    fields = fieldnames(msg);
    fields(strcmp(fields,'MessageType')) = [];

    names = strings(numel(fields),1);
    sizes = strings(numel(fields),1);
    types = strings(numel(fields),1);

    for j = 1:numel(fields)
        val = msg.(fields{j});
        names(j) = fields{j};
        sizes(j) = mat2str(size(val));
        types(j) = string(class(val));
    end

    T = table(names, sizes, types, 'VariableNames', {'Field','Size','Type'});
    disp(T)
end

end