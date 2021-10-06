function positions = InitializePositions(numberOfParticles, numberOfVariables, xMin, xMax)
    positions = xMin + rand(numberOfParticles, numberOfVariables)*(xMax-xMin);
end

