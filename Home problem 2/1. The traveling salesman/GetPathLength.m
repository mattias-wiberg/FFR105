function pathLength = GetPathLength(path, cityLocation)
    pathLength = 0;
    for i = 2:length(path)
        pathLength = pathLength + norm(cityLocation(path(i),:) - cityLocation(path(i-1),:));
    end
    pathLength = pathLength + norm(cityLocation(path(1), :) - cityLocation(path(end), :));
end

