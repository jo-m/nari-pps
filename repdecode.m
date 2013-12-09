function [ bitsequence_decoded ] = repdecode( bitsequence, n )
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here
    bitsequence_decoded = reshape(bitsequence', n, length(bitsequence) / n);
    bitsequence_decoded = mean(bitsequence_decoded, 1) > 0.5;
end

