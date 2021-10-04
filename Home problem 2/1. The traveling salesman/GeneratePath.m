function tabuList = GeneratePath(pheromoneLevel, visibility, alpha, beta)
    numberOfCities = size(pheromoneLevel, 1);
    cities = 1:numberOfCities;
    tabuList = zeros(numberOfCities,1);
    i = randi(numberOfCities);
    
    for j = 1:numberOfCities
        tabuList(j) = i;
        currentNodeIndex = tabuList(j);
        notInTabuList = setdiff(cities, tabuList);
        normalizationFactor = sum((pheromoneLevel(notInTabuList,currentNodeIndex).^alpha).*...
            visibility(notInTabuList,currentNodeIndex).^beta);
        
        %Roulette wheel selection
        randomSelection = rand;
        previousProbability = 0;

        for i = notInTabuList
            previousProbability = previousProbability + pheromoneLevel(i,currentNodeIndex)^alpha*...
                visibility(i,currentNodeIndex)^beta/normalizationFactor;
            if previousProbability > randomSelection
                break
            end
        end
    end
end

