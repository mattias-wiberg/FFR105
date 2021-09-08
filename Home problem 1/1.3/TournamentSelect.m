function selectedIndividualIndex = TournamentSelect(fitnessList, tournamentProbability, tournamentSize)
    populationSize = length(fitnessList);
    selectedIndividualsIndexes = randi(populationSize, tournamentSize, 1);
    selectedIndividualsFitness = fitnessList(selectedIndividualsIndexes);
    for i = 1:selectedIndividualsIndexes
        % Gives the individual with the highest fitness index
        [~, highestIndividualFitnessIndex] = max(selectedIndividualsFitness);
        selectedIndividualIndex = selectedIndividualsIndexes(highestIndividualFitnessIndex)
        if rand < tournamentProbability
            return
        else
            % Remove the individual from both of the lists
            selectedIndividualsIndexes(selectedIndividualIndex) = [];
            selectedIndividualsFitness(highestIndividualFitnessIndex) = [];
        end
    end
end
