function seq = demodulate( y, ts, t0, t1 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    x0 = repmat(cos([0:ts - 1] / t0 * 2 * pi), 1, length(y) / ts);
    x1 = repmat(cos([0:ts - 1] / t1 * 2 * pi), 1, length(y) / ts);
    
    %plot(x0 .* y)
    
    seq0 = sum(reshape(x0 .* y, ts, length(y) / ts));
    seq1 = sum(reshape(x1 .* y, ts, length(y) / ts));
    
    seq = abs(seq0) < abs(seq1)
end
