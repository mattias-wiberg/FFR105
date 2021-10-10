clear;
clc;

constants = [-1 1 3];

minNumberOfInstructions = 3;
maxNumberOfInstructions = 10;
populationSize = 10;
numberOfVariables = 8;
numberOfConstants = length(constants);
numberOfOperators = 4;

population = InitializePopulation(populationSize,minNumberOfInstructions,maxNumberOfInstructions,numberOfVariables,numberOfConstants,numberOfOperators);

