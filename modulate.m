function y = modulate( seq, ts, t0, t1 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    seq1 = repencode(seq, ts);
    f0 = repmat(cos([0:ts - 1] / t0 * 2 * pi), 1, length(seq));
    f1 = repmat(cos([0:ts - 1] / t1 * 2 * pi), 1, length(seq));
    
    y = (seq1 .* f1) + (~seq1 .* f0);
    
    plot(y)
end
