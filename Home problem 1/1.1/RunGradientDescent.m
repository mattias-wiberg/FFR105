% This function should run gradient descent until the L2 norm of the
% gradient falls below the specified threshold.

function x = RunGradientDescent(xStart, mu, eta, gradientTolerance)
    x = xStart;
    while true
        gradient = ComputeGradient(x, mu);
        x = x - eta*gradient;
        if norm(gradient) < gradientTolerance
            return
        end
    end
end
