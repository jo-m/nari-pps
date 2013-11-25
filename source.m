function bitsequence = source( sequence_length, p )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    bitsequence = rand(1, sequence_length) > p;
end

