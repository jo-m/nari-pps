function bitsequence = source( sequence_length, p )
    bitsequence = rand(1, sequence_length) > p;
end
