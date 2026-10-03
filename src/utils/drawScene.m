function drawScene(fig, scene)

% get the figure's axes without making it current/visible
ax = findobj(fig, 'Type', 'axes');
if isempty(ax)
    ax = axes('Parent', fig);
end
hold(ax, 'on')

for k = 1:numel(scene) %for each obstacle
    V = scene{k};
    F = 1:length(V);
    if(isequal(k,1))
        patch('Parent',ax,'Faces',F,'Vertices',V,'FaceColor','none');
    else
        patch('Parent',ax,'Faces',F,'Vertices',V,'FaceColor','black');
    end
end

%fix aspect ratio
axis(ax,"equal")

%set ylims based on frame
xlim(ax,[scene{1}(1,1),scene{1}(3,1)])
ylim(ax,[scene{1}(1,2),scene{1}(3,2)])

xlabel(ax,"x")
ylabel(ax,"y")
title(ax,"Cyclone Robosub Intro Project")
set(ax,'YDir','reverse')

end