function plot = LogContour(f,range,a)
    x = linspace(range(1),range(2),100);
    y = x;

    [X,Y] = meshgrid(x,y);
    Z = f(X,Y);
    logZ = log(a+f(X,Y));
    plot = contour(X,Y,logZ,100);
end

