% First compute the function value, then compute the fitness
% value; see also the problem formulation.

function fitness = EvaluateIndividual(cMax, chromosomePenaltySize, numberOfVariables, constants, dataPoints, individual)
    
    squareSum = 0;
    k = length(dataPoints);
    
    for i = 1:k
        registers = [zeros(1, numberOfVariables) constants];
        x = dataPoints(i, 1);
        y = dataPoints(i, 2);
        
        yHat = CalculateDataPoint(x, registers, individual, cMax);
        squareSum = squareSum + (yHat-y)^2;
    end
    
    rmsError = sqrt(squareSum/k);
    fitness = 1/rmsError;
    
    if length(individual.Chromosome) > chromosomePenaltySize
        fitness = fitness*chromosomePenaltySize/length(individual.Chromosome);
    end
end
