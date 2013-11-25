function [ ber ] = calcBEr(bit_sequence, channel_bit_sequence)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
    ber= mean(xor(bit_sequence, channel_bit_sequence))

end

