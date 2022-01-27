clc;
clear;
hold off;

f = @(x,y) (x.^2+y-11).^2+(x+y.^2-7).^2;
numberOfParticles = 30; % Common values 20-40
numberOfVariables = 2; % x and y
xMin = -5; % range given in task
xMax = 5;
alpha = 1; % ususally 1 
deltaT = 1; 
c1 = 2; % Usually 2
c2 = 2;
w = 1.4; % as starting value
wMin = 0.4;
beta = 0.98; % reduction
maxVelocity = 0.5;
steps = 10000;

uniqueGlobalBestPoints = zeros(4,numberOfVariables);
LogContour(f, [-5 5], 0.01);
hold on;

amountOfUniqueBestPoints = 0;
iteration = 1;
while amountOfUniqueBestPoints < 4
    particlePositions = InitializePositions(numberOfParticles, numberOfVariables, xMin, xMax);
    particleVelocities = InitializeVelocities(numberOfParticles, numberOfVariables, xMin, xMax, alpha, deltaT);

    globalBestPosition = particlePositions(1,:);
    bestPositions = particlePositions;
    
    for i = 1:steps
        bestPositionsFitness = f(bestPositions(1,:), bestPositions(2,:));
        currentFitness = f(particlePositions(:,1), particlePositions(:,2));
        betterFitnessIndexes = currentFitness < bestPositionsFitness;
        bestPositions(betterFitnessIndexes) = particlePositions(betterFitnessIndexes);

        [minValue, minValueIndex] = min(currentFitness);
        if minValue < f(globalBestPosition(1), globalBestPosition(2))
            globalBestPosition = particlePositions(minValueIndex, :);
        end
        particleVelocities = UpdateVelocities(particleVelocities,w,c1,c2,maxVelocity,deltaT,bestPositions,particlePositions,globalBestPosition);

        particlePositions = particlePositions + particleVelocities*deltaT;

        if w > wMin
            w = w*beta;
        end
    end
    
    if all(round(uniqueGlobalBestPoints, 3) ~= round(globalBestPosition, 3))
        amountOfUniqueBestPoints = amountOfUniqueBestPoints + 1;
        uniqueGlobalBestPoints(amountOfUniqueBestPoints,:) = globalBestPosition;
        disp(sprintf('Iteration %d, found minima: x = %.5f, y = %.5f, f(x,y) = %.5f',...
            iteration,globalBestPosition(1),globalBestPosition(2),...
            f(globalBestPosition(1),globalBestPosition(2))));
        
        scatter(globalBestPosition(1),globalBestPosition(2), [], 'k')
    end
    iteration = iteration + 1;
end
uniqueGlobalBestPoints