clear;
clc;

constants = [-1 1 3];
numberOfConstants = length(constants);
numberOfOperators = 4; % + - * /
dataPoints = LoadFunctionData;

cMax = 10^15;
populationSize = 100;
numberOfVariables = 3;
minNumberOfInstructions = 3;
maxNumberOfInstructions = 10;
chromosomePenaltySize = 160;
tournamentSize = 5;
tournamentProbability = 0.75;
crossoverProbability = 0.2;
mutationProbability = 0.04;
numberOfGenerations = 9999;

 population = InitializePopulation(populationSize,minNumberOfInstructions,maxNumberOfInstructions,...
    numberOfVariables,numberOfConstants,numberOfOperators);
 for generation = 1:numberOfGenerations
   maximumFitness  = 0.0;
   fitnessList = zeros(populationSize,1);
   for i = 1:populationSize
     fitnessList(i) = EvaluateIndividual(cMax, chromosomePenaltySize, numberOfVariables, constants, dataPoints, population(i));
     if (fitnessList(i) > maximumFitness ) 
         generation
        maximumFitness  = fitnessList(i)
        iBestIndividual = i;
        
    end
   end
 
   temporaryPopulation = population;  
   for i = 1:2:populationSize
    i1 = TournamentSelect(fitnessList,tournamentProbability,tournamentSize);
    i2 = TournamentSelect(fitnessList,tournamentProbability,tournamentSize);
    r = rand;
    if (r < crossoverProbability) 
     individual1 = population(i1);
     individual2 = population(i2);
     newIndividualPair = Cross(individual1, individual2);
     temporaryPopulation(i) = newIndividualPair(1);
     temporaryPopulation(i+1) = newIndividualPair(2);
    else
     temporaryPopulation(i) = population(i1);
     temporaryPopulation(i+1) = population(i2);     
    end
   end
  
   temporaryPopulation(1) = population(iBestIndividual);
   for i = 2:populationSize
     temporaryPopulation(i) = Mutate(temporaryPopulation(i),mutationProbability,...
         numberOfConstants, numberOfVariables, numberOfOperators);
   end
   population = temporaryPopulation;
   

 end