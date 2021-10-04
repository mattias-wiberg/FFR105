function length = GetPathLength(path, cityLocation)
    length = 0;
    for i = 2:length(path)
        length = length + norm(cityLocation(path(i),:)-cityLocation(path(i-1),:));
    end
    length = length - norm(cityLocation(path(1), :) - cityLocation(path(end), :));
end

