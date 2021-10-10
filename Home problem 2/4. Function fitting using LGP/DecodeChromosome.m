% Note: Each component of x should take values in [-a,a], where a = maximumVariableValue.

function x = DecodeChromosome(chromosome,numberOfVariables,maximumVariableValue)
    numberOfGenesPerVariable = length(chromosome)/numberOfVariables;
    x = zeros(1,numberOfVariables);
    
    for i = 1:numberOfVariables
        for j = 1:numberOfGenesPerVariable
            % Offset j with the total amount of previous variables genes
            x(i) = x(i) + chromosome((i-1)*numberOfGenesPerVariable+j)*2^(-j);
        end
        x(i) = -maximumVariableValue + 2*maximumVariableValue*x(i)/(1 - 2^(-numberOfGenesPerVariable));
    end
end