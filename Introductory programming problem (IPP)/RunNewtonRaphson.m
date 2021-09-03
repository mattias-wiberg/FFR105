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
    x_i = startingPoint;
    % Do while loop
    while 1
        iterationValues(i) = x_i;
        fPrimX = GetPolynomialValue(x_i, fPrimCoefficitents);
        fBisX = GetPolynomialValue(x_i, fBisCoefficitents);
        
        xNext = StepNewtonRaphson(x_i, fPrimX, fBisX);
        error = abs(xNext - x_i);
        x_i = xNext;
        if error < tolerance
            iterationValues(i) = x_i;
            disp("Last iteration value: ")
            disp(x_i)
            return
        end
        i = i + 1;
    end
    
