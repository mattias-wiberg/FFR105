function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection)
    numberOfCities = length(pathCollection(1,:));
    numberOfAnts = length(pathCollection(:,1));
    deltaPheromoneLevel = zeros(numberOfCities, numberOfCities);
    for k = 1:numberOfAnts
        antPath = pathCollection(k,:);
        for i = 2:numberOfAnts
            deltaPheromoneLevel(antPath(i),antPath(i-1)) = deltaPheromoneLevel(antPath(i),antPath(i-1)) + 1/pathLengthCollection(k);
        end
        deltaPheromoneLevel(antPath(1),antPath(end)) = deltaPheromoneLevel(antPath(1),antPath(end)) + 1/pathLengthCollection(k);
    end
end

