function yHat = EvaluateDataPoint(x, registers, individual, cMax)
    chromosome = individual.Chromosome;
    instructions = reshape(chromosome, length(chromosome)/4, 4);
    
    registers(1) = x;

    for j = 1:size(instructions,1)
        registers = CalculateInstruction(instructions(j,:), registers, cMax);
    end
    
    yHat = registers(1);
end

