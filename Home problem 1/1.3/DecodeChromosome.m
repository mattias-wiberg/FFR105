% Note: Each component of x should take values in [-a,a], where a = maximumVariableValue.

function x = DecodeChromosome(chromosome,numberOfVariables,maximumVariableValue)
    numberOfGenesPerVariable = length(chromosome)/numberOfVariables;
    x = zeros(1,numberOfVariables);
    
    for i = 1:numberOfVariables
        for j = 1:numberOfGenesPerVariable
            % Offset j with the total amount of previous variables genes
            x(1) = x(1) + chromosome((i-1)*numberOfGenesPerVariable+j)*2^(-j);
        end
        x(1) = -maximumVariableValue + 2*maximumVariableValue*x(1)/(1 - 2^(-numberOfGenesPerVariable));
    end
end