% This function should return the value of the polynomial f(x) = a0x^0 + a1x^1 + a2x^2 ...
% where a0, a1, ... are obtained from polynomialCoefficients.

function value = GetPolynomialValue(x, polynomialCoefficients)
    i = 0;
    value = 0;
    for coefficient = polynomialCoefficients
        value = value + coefficient * x.^i;
        i = i + 1;
    end
end