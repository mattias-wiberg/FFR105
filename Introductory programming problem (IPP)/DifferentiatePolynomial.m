% This method should return the coefficients of the k-th derivative (defined by
% the derivativeOrder) of the polynomial given by the polynomialCoefficients (see also GetPolynomialValue)

function derivativeCoefficients = DifferentiatePolynomial(polynomialCoefficients, derivativeOrder)
    derivativeCoefficients = polynomialCoefficients;
    % Derivate, order amount of times
    for i = [1:derivativeOrder]
        % Start from derivativeOrder + 1 since of index starting at 1 and 
        % coefficients before will be 0 by construction. (*)
        for j = [derivativeOrder+1:length(polynomialCoefficients)] 
            % Multiply current coefficient with current exponent (j-i)
            derivativeCoefficients(j) = derivativeCoefficients(j)*(j-i);
        end
    end
    % Only include the calculated coefficients because of (*)
    derivativeCoefficients = derivativeCoefficients(derivativeOrder+1:end);
end