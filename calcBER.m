function [ ber ] = calcBEr(bit_sequence, channel_bit_sequence)
    ber = mean(xor(bit_sequence, channel_bit_sequence))
end

