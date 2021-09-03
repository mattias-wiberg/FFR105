% This function should run the Newton-Raphson method, making use of the
% other relevant functions (StepNewtonRaphson, DifferentiatePolynomial, and
% GetPolynomialValue). Before returning iterationValues any non-plottable values 
% (e.g. NaN) that can occur if the method fails (e.g. if the input is a
% first-order polynomial) should be removed, so that only values that
% CAN be plotted are returned. Thus, in some cases (again, the case of
% a first-order polynomial is an example) there may be no points to plot.

function iterationValues = NewtonRaphson(polynomialCoefficients, startingPoint, tolerance)
    if isempty(DifferentiatePolynomial(polynomialCoefficients, 2))
        error('Too low polynominal degree! The polynomial degree has to be atleast 2');
        return
    end
    
    fPrimCoefficitents = DifferentiatePolynomial(polynomialCoefficients, 1);
    fBisCoefficitents = DifferentiatePolynomial(polynomialCoefficients, 2);
    i = 1;
    x = startingPoint;
    % Do while loop
    while 1
        iterationValues(i) = x;
        fPrimX = GetPolynomialValue(x, fPrimCoefficitents);
        fBisX = GetPolynomialValue(x, fBisCoefficitents);
        
        xNext = StepNewtonRaphson(x, fPrimX, fBisX);
        if isnan(xNext)
            return
        end
        
        error = abs(xNext - x);
        x = xNext;
        if error < tolerance
            iterationValues(i) = x
            return
        end
        i = i + 1;
    end
    
