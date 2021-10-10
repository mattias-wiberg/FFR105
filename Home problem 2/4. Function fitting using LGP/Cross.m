function newIndividuals = Cross(individual1, individual2)
    % Two point crossover
    
    instructionSize = 4;
    numberOfInstructions1 = length(individual1)/instructionSize;
    points1 = randi([0 numberOfInstructions1], 2, 1)+1;
    while length(unique(points1)) < 2 
        % the two random points has to be unique else one newIndividual
        % could have a empty chromosome. Only has to be done for one
        points1 = randi([0 numberOfInstructions1], 2, 1)+1;
    end
    points1 = sort(points1);
    
    numberOfInstructions2 = length(individual2)/instructionSize;
    points2 = randi([0 numberOfInstructions2], 2, 1)+1;
    points2 = sort(points2);
    
    newIndividuals(1,:) = [individual1(1:points1(1))...
                           individual2(points2(1)+1:points2(2))...
                           individual1(points1(2)+1:end)];
    newIndividuals(2,:) = [individual2(1:points2(1))...
                           individual1(points1(1)+1:points1(2))...
                           individual2(points2(2)+1:end)];
    
end