function selectedIndividualIndex = TournamentSelect(fitnessList, tournamentProbability, tournamentSize)
    populationSize = length(fitnessList);
    selectedIndividualsIndexes = randi(populationSize, tournamentSize, 1);
    
    for i = 1:length(selectedIndividualsIndexes)
        selectedIndividualsFitness = fitnessList(selectedIndividualsIndexes);
        % Gives the index in selectedIndividualsFitness with the highest fitness index
        [~, maxFitnessIndex] = max(selectedIndividualsFitness);
        selectedIndividualIndex = selectedIndividualsIndexes(maxFitnessIndex);
        if rand < tournamentProbability
            return
        else
            % Remove the index of the individual from the picked indexes
            selectedIndividualsIndexes(maxFitnessIndex) = [];
        end
    end
end
