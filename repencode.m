function [ bitsequence_encoded ] = repencode(bitsequence, n )
    bitsequence_encoded = repmat(bitsequence, n, 1);
    bitsequence_encoded = bitsequence_encoded(:)';
end
