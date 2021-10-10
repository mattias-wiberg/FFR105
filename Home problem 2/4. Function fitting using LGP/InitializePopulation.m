function population = InitializePopulation(populationSize,minNumberOfInstructions,maxNumberOfInstructions,numberOfVariables,numberOfConstants,numberOfOperators);

population = [];
instructionSize = 4;

for i = 1:populationSize
   numberOfInstructions = randi([minNumberOfInstructions maxNumberOfInstructions]);
   chromosome = zeros(1,numberOfInstructions*instructionSize);
   for j = 1:numberOfInstructions
       instructionStartIndex = ((j-1) * instructionSize)+1;
       chromosome(instructionStartIndex) = randi(numberOfOperators);
       chromosome(instructionStartIndex + 1) = randi(numberOfVariables);
       chromosome(instructionStartIndex + 2 : instructionStartIndex + 3) = randi(numberOfVariables+numberOfConstants, 2, 1);
   end
   tmpIndividual = struct('Chromosome',chromosome);
   population = [population tmpIndividual];
end