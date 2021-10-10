function result = CalculateInstruction(instruction, registers, cMax)
    operator = instruction(1);
    operand1 = registers(instruction(3));
    operand2 = registers(instruction(4));
    
    switch operator
        case 1
            result = operand1 + operand2;
            return
        case 2
            result = operand1 - operand2;
            return
        case 3
            result = operand1 * operand2;
            return
        case 4
            if operand2 == 0
                result = cMax;
            else
                result = operand1 / operand2;
            end
            return
    end
end

