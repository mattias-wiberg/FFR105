% This method should perform a single step of the Newton-Raphson method.
% Note: In cases where the step cannot be completed, e.g. if f" = 0, a
% clear error message should be given.

function xNext = NewtonRaphsonStep(x, fPrime, fDoublePrime)
    xNext = x - fPrime/fDoublePrime;
    if abs(xNext) == inf
        xNext = NaN;
        error('Error: f" = 0, can not divide by zero! Check 3rd argument (fDoublePrime) to NewtonRaphsonStep()');
    end
end

