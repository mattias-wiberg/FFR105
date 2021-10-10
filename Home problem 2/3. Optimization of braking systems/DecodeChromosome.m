function [wIH, wHO] = DecodeChromosome(chromosome, nIn, nHidden, nOut, wMax);
    wIH = reshape(chromosome(1:nIn*nHidden), [nIn, nHidden]);
    wHO = reshape(chromosome(nIn*nHidden:nHidden*nOut, [nIn, nHidden]);
    