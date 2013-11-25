function [ bitsequence_encoded ] = repencode(bitsequence, n )
%UNTITLED13 Summary of this function goes here
%   Detailed explanation goes here
    bitsequence_encoded = repmat(bitsequence, n, 1);
    bitsequence_encoded = bitsequence_encoded(:)';
end
