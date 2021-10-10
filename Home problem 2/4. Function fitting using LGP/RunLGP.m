clear;
clc;

constants = [-1 1 3];
numberOfConstants = length(constants);
numberOfOperators = 4; % + - * /


populationSize = 10;
numberOfVariables = 8;
minNumberOfInstructions = 3;
maxNumberOfInstructions = 10;

population = InitializePopulation(populationSize,minNumberOfInstructions,maxNumberOfInstructions,numberOfVariables,numberOfConstants,numberOfOperators);
Cross(population(1), population(2));
