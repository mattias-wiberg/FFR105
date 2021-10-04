function pheromoneLevel = UpdatePheromoneLevels(pheromoneLevel,deltaPheromoneLevel,rho)
%UPDATEPHEROMONELEVELS Summary of this function goes here
%   Detailed explanation goes here
    pheromoneLevel = (1-rho)*pheromoneLevel+deltaPheromoneLevel;
end

