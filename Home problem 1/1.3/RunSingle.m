%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameter specifications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

populationSize = 100;              % Do NOT change
maximumVariableValue = 5;          % Do NOT change: (x_i in [-a,a], where a = maximumVariableValue)
numberOfGenes = 50;                % Do NOT change
numberOfVariables = 2;  	   % Do NOT change

tournamentSize = 4;                % Changes allowed
tournamentProbability = 0.75;      % Changes allowed (= pTour)
crossoverProbability = 1;        % Changes allowed (= pCross)
mutationProbability = 0.1;        % Changes allowed. (Note: 0.02 <=> 1/numberOfGenes)
numberOfGenerations = 1000;        % Changes allowed.

for i = 1:10
    [maximumFitness(i), bestVariableValues(:,i)] = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
                                   
    sprintf('Fitness: %d, x(1): %0.10f, x(2): %0.10f', maximumFitness(i), bestVariableValues(1,i), bestVariableValues(2,i))
end


