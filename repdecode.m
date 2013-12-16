function [ bitsequence_decoded ] = repdecode( bitsequence, n )
    bitsequence_decoded = reshape(bitsequence', n, length(bitsequence) / n);
    bitsequence_decoded = mean(bitsequence_decoded, 1) > 0.5;
end
