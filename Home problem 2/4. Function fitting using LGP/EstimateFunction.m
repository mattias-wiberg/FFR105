function g = EstimateFunction(chromosome, numberOfRegisters, constants, cMax)
    syms x
    
    registers = num2cell([zeros(1,numberOfRegisters) constants]);
    registers{1} = x;
    
    instructionStartIndex = 1;
    for j = 1:length(chromosome)/4
        instruction = chromosome(instructionStartIndex:instructionStartIndex+3);
        operator = instruction(1);
        operand1 = registers{instruction(3)};
        operand2 = registers{instruction(4)};

        switch operator
            case 1
                registers{instruction(2)} = operand1 + operand2;
            case 2
                registers{instruction(2)} = operand1 - operand2;
            case 3
                registers{instruction(2)} = operand1 * operand2;
            case 4
                if operand2 == 0
                    registers{instruction(2)} = cMax;
                else
                    registers{instruction(2)} = operand1 / operand2;
                end
        end
        instructionStartIndex = instructionStartIndex + 4;
    end
    g = simplify(registers{1});
end

