function pheromoneLevel = InitializePheromoneLevels(numberOfCities, tau0)
%INITIALIZEPHEROMONELEVELS Summary of this function goes here
%   Detailed explanation goes here
    pheromoneLevel = zeros(numberOfCities);
    for i=1:numberOfCities
        for j=1:numberOfCities
            pheromoneLevel(i,j) = tau0;
        end
    end
end

