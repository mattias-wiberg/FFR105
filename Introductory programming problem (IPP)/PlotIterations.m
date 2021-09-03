% This method should plot the polynomial and the iterates obtained
% using NewtonRaphsonStep (if any iterates were generated).

function PlotIterations(polynomialCoefficients, iterationValues)
    % Add 10 % of the range on min and max x for the xRange
    xMin = min(iterationValues)-abs(0.1*range(iterationValues));
    xMax = max(iterationValues)+abs(0.1*range(iterationValues));
    xRange = linspace(xMin,xMax);
    % Plot function curve
    plot(xRange, GetPolynomialValue(xRange, polynomialCoefficients));
    hold on
    % Plot iterations points as rings
    plot(iterationValues, GetPolynomialValue(iterationValues, polynomialCoefficients), 'o');
    hold off


