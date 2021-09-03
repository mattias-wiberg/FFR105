% Here, the polynomial 10 - 2x - x^2 + x^3 is defined.
%
% Note: This is just an example! You can (and should) try
% with many different polynomials to make sure that your
% program can handle all cases.
%

polynomialCoefficients = [10 -2 -1 1];
startingPoint = 2;
tolerance = 0.0001;
%iterationValues = RunNewtonRaphson(polynomialCoefficients, startingPoint, tolerance);
%PlotIterations(polynomialCoefficients,iterationValues);
%% Testing 
clear
clc
assert(GetPolynomialValue(0.82, [1,2,3,4,5]) == 1+0.82*2+0.82^2*3+0.82^3*4+0.82^4*5)
assert(GetPolynomialValue(0, [2,3]) == 2)
assert(GetPolynomialValue(1, [2,3,5,1]) == 2+3+5+1)