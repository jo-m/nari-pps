function [ mittelwert, sigma ] = drain( bitsequenz )
    mittelwert = mean(bitsequenz);
    sigma = std(bitsequenz);
end
