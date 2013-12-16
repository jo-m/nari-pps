function seq = demodulate( y, ts, t0, t1 )
    x0 = repmat(cos([0:ts - 1] / t0 * 2 * pi), 1, length(y) / ts);
    x1 = repmat(cos([0:ts - 1] / t1 * 2 * pi), 1, length(y) / ts);
    
    % subplot(4,1,1)
    % plot(y)
    
    % subplot(4,1,2)
    % plot(x0 .* y)
    
    % subplot(4,1,3)
    % plot(x1 .* y)
    
    seq0 = sum(reshape(x0 .* y, ts, length(y) / ts));
    seq1 = sum(reshape(x1 .* y, ts, length(y) / ts));
    
    seq = abs(seq0) < abs(seq1);
    
    % subplot(4,1,4)
    % stem(repencode(seq, 80))
end
