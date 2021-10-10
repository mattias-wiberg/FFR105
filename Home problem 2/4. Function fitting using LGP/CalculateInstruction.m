function newRegisters = CalculateInstruction(instruction, registers, cMax)
    operator = instruction(1);
    destinationRegister = instruction(2);
    operand1 = instruction(3);
    operand2 = instruction(4);
    newRegisters = registers;
    
    switch operator
        case 1
            newRegisters(destinationRegister) = operand1 + operand2;
            return
        case 2
            newRegisters(destinationRegister) = operand1 - operand2;
            return
        case 3
            newRegisters(destinationRegister) = operand1 * operand2;
            return
        case 4
            if operand2 == 0
                newRegisters(destinationRegister) = cMax;
            else
                newRegisters(destinationRegister) = operand1 / operand2;
            end
            return
    end
end

