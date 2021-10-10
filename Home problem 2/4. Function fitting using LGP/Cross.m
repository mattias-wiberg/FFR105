function newIndividuals = Cross(induvidual1, induvidual2)
    % Two point crossover
    chromosome1 = induvidual1.Chromosome;
    chromosome2 = induvidual2.Chromosome;
    instructionSize = 4;
    
    numberOfInstructions1 = length(chromosome1)/instructionSize;
    points1 = randi([0 numberOfInstructions1], 2, 1);
    points1 = sort(points1*4);
    
    numberOfInstructions2 = length(chromosome2)/instructionSize;
    points2 = randi([0 numberOfInstructions2], 2, 1);
    points2 = sort(points2*4);
    
    tmpIndividual = struct('Chromosome',[chromosome1(1:points1(1)),...
                                         chromosome2(points2(1)+1:points2(2)),...
                                         chromosome1(points1(2)+1:end)]);
    newIndividuals(1) = tmpIndividual;
    tmpIndividual = struct('Chromosome',[chromosome2(1:points2(1)),...
                                         chromosome1(points1(1)+1:points1(2)),...
                                         chromosome2(points2(2)+1:end)]);
    newIndividuals(2) = tmpIndividual;
    
    if length(newIndividuals(1).Chromosome) == 0 || length(newIndividuals(2).Chromosome) == 0
        newIndividuals = Cross(induvidual1, induvidual2);
    end
    
end