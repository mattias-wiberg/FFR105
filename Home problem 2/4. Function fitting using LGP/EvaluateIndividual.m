% First compute the function value, then compute the fitness
% value; see also the problem formulation.

function fitness = EvaluateIndividual(r1, numberOfVariables, constants, individual)
    chromosome = individual.Chromosome;
    registers = [zeros(1, numberOfVariables) constants];
    registers(1) = r1;
    instructions = reshape(chromosome, length(chromosome)/4, 4);
    
    for i = 1:length(instructions)
        instruction = instructions(i);
        CalculateInstruction(instruction);
    end
    
    error = 
    fitness = 1/r1;
end
