function mutatedIndividual = Mutate(individual, mutationProbability, numberOfConstants, numberOfVariables, numberOfOperators)
    
    chromosome = individual.Chromosome;
    numberOfInstructions = length(chromosome)/4;
    registerSize = numberOfVariables+numberOfConstants;
    maxValuesForChromosome = [numberOfOperators numberOfVariables registerSize registerSize];
    
    for i = 1:numberOfInstructions
       instructionStartIndex = ((i-1) * 4)+1;
       for j = 1:4
           if rand < mutationProbability
                chromosome(instructionStartIndex + (j-1)) = randi(maxValuesForChromosome(j));
           end
       end
    end
    mutatedIndividual = struct('Chromosome', chromosome);

end