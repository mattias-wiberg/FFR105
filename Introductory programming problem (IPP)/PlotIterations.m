% This method should plot the polynomial and the iterates obtained
% using NewtonRaphsonStep (if any iterates were generated).

function PlotIterations(polynomialCoefficients, iterationValues)
    % Have x range from 10% less than the min and 10% more than the max
    xMin = min(iterationValues)-abs(0.1*min(iterationValues));
    xMax = max(iterationValues)+abs(0.1*max(iterationValues));
    xRange = linspace(xMin,xMax);
    % Plot function curve
    plot(xRange, GetPolynomialValue(xRange, polynomialCoefficients));
    hold on
    % Plot iterations points as rings
    plot(iterationValues, GetPolynomialValue(iterationValues, polynomialCoefficients), 'o');
    hold off


