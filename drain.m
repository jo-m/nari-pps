function [ mittelwert, sigma ] = drain( bitsequenz )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    mittelwert = mean(bitsequenz);
    sigma = std(bitsequenz);
end
