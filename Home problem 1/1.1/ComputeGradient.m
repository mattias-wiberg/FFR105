% This function should return the gradient of f_p = f + penalty.
% You may hard-code the gradient required for this specific problem.

function gradF = ComputeGradient(x,mu)
    x1 = x(1);
    x2 = x(2);
    
    if x1^2+x2^2 >= 1
        gradF(1) = 4*x1*mu*(x1^2+x2^2-1)+2*x1-2;
        gradF(2) = 4*x2*mu*(x1^2+x2^2-1)+4*x2-8;
    else
        gradF(1) = 2*(x1-1);
        gradF(2) = 4*(x2-2);
    end
end

