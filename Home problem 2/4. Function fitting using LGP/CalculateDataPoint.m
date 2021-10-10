function yHat = EvaluateDataPoint(x, registers, individual, cMax)
    chromosome = individual.Chromosome;
    registers(1) = x;

    for j = 1:length(chromosome)/4
        instructionStartIndex = ((j-1) * 4)+1;
        registers = CalculateInstruction(chromosome(instructionStartIndex:instructionStartIndex+3), registers, cMax);
    end
    
    yHat = registers(1);
end

