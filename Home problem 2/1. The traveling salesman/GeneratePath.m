function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)
    numberOfCities = size(pheromoneLevel, 1);
    cities = 1:numberOfCities;
    path(1) = randi(numberOfCities);
    while length(path) < numberOfCities
        for j = 1:numberOfCities
            nodeIndex = path(j);
            normalizationFactor = sum(pheromoneLevel(:,nodeIndex).^alpha*visibility(:,nodeIndex).^beta);
            randomSelection = rand;
            
        for i = setdiff(path, cities)
            
        end
    end
end

