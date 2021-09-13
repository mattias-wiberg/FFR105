%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameter specifications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

numberOfRuns = 100;                % Do NOT change
populationSize = 100;              % Do NOT change
maximumVariableValue = 5;          % Do NOT change (x_i in [-a,a], where a = maximumVariableValue)
numberOfGenes = 50;                % Do NOT change
numberOfVariables = 2;		   % Do NOT change
numberOfGenerations = 300;         % Do NOT change
tournamentSize = 2;                % Do NOT change
tournamentProbability = 0.75;      % Do NOT change
crossoverProbability = 0.8;        % Do NOT change


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Batch runs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define more runs here (pMut < 0.02) ...

mutationProbabilities = [0, 0.02:0.05:1, 1];
maximumFitnesses = zeros(numberOfRuns,length(mutationProbabilities));

for i = 1:length(mutationProbabilities)
    sprintf('Mutation rate = %0.5f\n', mutationProbabilities(i))
    for j = 1:numberOfRuns 
     [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                           tournamentProbability, crossoverProbability, mutationProbabilities(i), numberOfGenerations);
     sprintf('Run: %d, Score: %0.10f', j, maximumFitness);
      maximumFitnesses(j,i) = maximumFitness;
    end
    
    averageMaximumFitness = mean(maximumFitnesses(:,i));
    medianMaximumFitness = median(maximumFitnesses(:,i));
    stdMaximumFitness = sqrt(var(maximumFitnesses(:,i)));
    sprintf('PMut = %0.2f: Median: %0.10f, Average: %0.10f, STD: %0.10f', mutationProbabilities(i), medianMaximumFitness, averageMaximumFitness, stdMaximumFitness)
end


% ... and here (pMut > 0.02)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Summary of results
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Add more results summaries here (pMut < 0.02) ...
loglog(mutationProbabilities, median(maximumFitnesses))
[mutationProbabilities' median(maximumFitnesses)']
%average = mean(maximumFitnesses);
%median = median(maximumFitnesses);
%std = sqrt(var(maximumFitnesses));
%sprintf('PMut = 0.02: Median: %0.10f, Average: %0.10f, STD: %0.10f', median, average, std)

% ... and here (pMut > 0.02)