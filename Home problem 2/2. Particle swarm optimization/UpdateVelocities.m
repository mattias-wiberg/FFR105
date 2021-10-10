function particleVelocities = UpdateVelocities(oldVelocities,w,c1,c2,maxVelocity,deltaT,bestPositions,particlePositions,globalBestPosition)
%UPDATEVELOCITIES Summary of this function goes here
%   Detailed explanation goes here
    q = rand;
    r = rand;
    
    particleVelocities = w*oldVelocities +...
        c1*q*((bestPositions-particlePositions)/deltaT) +...
        c2*r*((globalBestPosition-particlePositions)/deltaT);
    particleVelocities(particleVelocities > maxVelocity) = maxVelocity;
end

