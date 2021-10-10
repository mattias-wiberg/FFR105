function newIndividuals = Cross(induvidual1, induvidual2)
    % Two point crossover
    chromosome1 = induvidual1.Chromosome;
    chromosome2 = induvidual2.Chromosome;
    instructionSize = 4;
    numberOfInstructions1 = length(chromosome1)/instructionSize;
    points1 = randi([0 numberOfInstructions1], 2, 1)+1;
    while length(unique(points1)) < 2 
        % the two random points has to be unique else one newIndividual
        % could have a empty chromosome. Only has to be done for one
        points1 = randi([0 numberOfInstructions1], 2, 1)+1;
    end
    points1 = sort(points1);
    
    numberOfInstructions2 = length(chromosome2)/instructionSize;
    points2 = randi([0 numberOfInstructions2], 2, 1)+1;
    points2 = sort(points2);
    
    newIndividuals(1,:) = [chromosome1(1:points1(1))...
                           chromosome2(points2(1)+1:points2(2))...
                           chromosome1(points1(2)+1:end)];
    newIndividuals(2,:) = [chromosome2(1:points2(1))...
                           chromosome1(points1(1)+1:points1(2))...
                           chromosome2(points2(2)+1:end)];
    
end