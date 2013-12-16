function [ channel_bit_sequence ] = BSC_channel( bit_sequence, q )
    channel_bit_sequence = xor( source(length(bit_sequence), 1-q), bit_sequence);
end
