% First compute the function value, then compute the fitness
% value; see also the problem formulation.

function fitness = EvaluateIndividual(dataPoints, numberOfVariables, constants, individual)
    chromosome = individual.Chromosome;
    instructions = reshape(chromosome, length(chromosome)/4, 4);
    
    yValues = 0;
    for i = 1:length(dataPoints)
        registers = [zeros(1, numberOfVariables) constants];
        registers(1) = dataPoints(i, 1);
    
        for j = 1:length(instructions)
            registers = CalculateInstruction(instructions(j));
        end
        sum =
    end
    
    error = 
    fitness = 1/r1;
end
