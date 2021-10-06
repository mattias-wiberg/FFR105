function velocities = InitializeVelocities(numberOfParticles, numberOfVariables, xMin, xMax, alpha, deltaT)
    velocities = (alpha/deltaT)*(-(xMax-xMin)/2 + rand(numberOfParticles, numberOfVariables)*(xMax-xMin));
end

