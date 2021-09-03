% This method should return the coefficients of the k-th derivative (defined by
% the derivativeOrder) of the polynomial given by the polynomialCoefficients (see also GetPolynomialValue)

function derivativeCoefficients = DifferentiatePolynomial(polynomialCoefficients, derivativeOrder)
    derivativeCoefficients = polynomialCoefficients;
    for i = [1:derivativeOrder]
        for j = [1:length(polynomialCoefficients)]
            derivativeCoefficients(j) = derivativeCoefficients(j)*(j-i);
        end
    end
    derivativeCoefficients = derivativeCoefficients(derivativeOrder+1:end);
    %derivativeCoefficients = TrimZeros(derivativeCoefficients);
end

% This method trims the zeros of the vector on either end. And returns
% the trimmed vector.
function trimmedVector = TrimZeros(vectorToTrim)
    nonZeroIndexes = find(vectorToTrim);
    trimmedVector = vectorToTrim(nonZeroIndexes(1):nonZeroIndexes(length(nonZeroIndexes)));
end