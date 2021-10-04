function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection)
%COMPUTEDELTAPHEROMONELEVELS Summary of this function goes here
%   Detailed explanation goes here
    numberOfCities = length(pathCollection(1,:));
    numberOfAnts = length(pathCollection(:,1));
    deltaPheromoneLevel = zeros(numberOfCities, numberOfCities);
    for k = 1:numberOfAnts
        antPath = pathCollection(k,:);
        for i = 2:length(antPath)
            pathCollection(antPath(i),antPath(i-1)) = pathCollection(antPath(i),antPath(i-1)) + 1/pathCollection(k);
        end
        pathCollection(antPath(1),antPath(end)) = pathCollection(antPath(1),antPath(end)) + 1/pathCollection(k);
    end
end

