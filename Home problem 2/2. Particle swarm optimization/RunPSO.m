clc;
clear;

f = @(x,y) (x.^2+y-11).^2+(x+y.^2-7).^2;
numberOfParticles = 30; % Common values 20-40
numberOfVariables = 2; % x and y
xMin = -5; % range given in task
xMax = 5;
alpha = 1; 
deltaT = 1; % ususally 1 

LogPlotFunction(f, [-5 5], 0.01);
particlePositions = InitializePositions(numberOfParticles, numberOfVariables, xMin, xMax);

particleFitness = f(particlePositions(:,1), particlePositions(:,2));