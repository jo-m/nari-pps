function [ channel_bit_sequence ] = BSC_channel( bit_sequence, q )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    channel_bit_sequence = xor( source(length(bit_sequence), 1-q), bit_sequence);
end
