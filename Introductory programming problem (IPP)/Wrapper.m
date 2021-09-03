% Here, the polynomial 10 - 2x - x^2 + x^3 is defined.
%
% Note: This is just an example! You can (and should) try
% with many different polynomials to make sure that your
% program can handle all cases.
%
clc
clear

polynomialCoefficients = [10 -2 -1 1];
%polynomialCoefficients = [5 0 0 1];
%polynomialCoefficients = [4 0 5 2];
startingPoint = 2;
tolerance = 0.0001;
iterationValues = RunNewtonRaphson(polynomialCoefficients, startingPoint, tolerance);
PlotIterations(polynomialCoefficients,iterationValues);

%% Testing 
clear
clc
assert(GetPolynomialValue(0.82, [1,2,3,4,5]) == 1+0.82*2+0.82^2*3+0.82^3*4+0.82^4*5)
assert(GetPolynomialValue(0, [2,3]) == 2)
assert(GetPolynomialValue(1, [2,3,5,1]) == 2+3+5+1)
assert(all(DifferentiatePolynomial([1,2,3], 0) == [1,2,3]))
assert(all(DifferentiatePolynomial([1,2,3], 1) == [2,6]))
assert(all(DifferentiatePolynomial([1,2,3], 2) == [6]))
assert(all(DifferentiatePolynomial([1,2,3], 3) == []))
assert(all(DifferentiatePolynomial([1,2,3], 4) == []))
assert(all(DifferentiatePolynomial([1,2,3], 4) == []))
assert(all(DifferentiatePolynomial([5,23,31,4,5], 2) == [62,24,60]))
assert(all(DifferentiatePolynomial([1,1,0,2,3], 1) == [1,0,6,12]))
assert(all(DifferentiatePolynomial([1,1,0,2,3], 2) == [0,12,36]))
assert(all(DifferentiatePolynomial([], 0) == []))

assert(StepNewtonRaphson(0, 2, 1) == -2);
assert(StepNewtonRaphson(1, 1, 2) == 0.5);
assert(isnan(StepNewtonRaphson(1, 1, 0)));
clc
PlotIterations([1,3,4], [1,2])


