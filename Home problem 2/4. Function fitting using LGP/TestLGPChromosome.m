clc;
%clear;

numberOfVariables = 3;
constants = [-1 1 3];
cMax = 10^15;
dataPoints = LoadFunctionData();

bestChromosome = BestChromosome();
g = EstimateFunction(bestChromosome, numberOfVariables, constants, cMax);

hold off;
plot(dataPoints(:,1), dataPoints(:,2));
hold on;
fplot(g, '--*');

squareSum = 0;
k = length(dataPoints);

for i = 1:k
    registers = [zeros(1, numberOfVariables) constants];
    x = dataPoints(i, 1);
    y = dataPoints(i, 2);

    yHat = CalculateDataPoint(x, registers, struct('Chromosome', bestChromosome), cMax);
    squareSum = squareSum + (yHat-y)^2;
end

rmsError = sqrt(squareSum/k);
fprintf('g(x) = %s had an error of %d.\n', char(g), rmsError);