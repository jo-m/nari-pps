function [ output ] = symbolsync( a, ts, t0, t1 )
    b = modulate([0 1], ts, t0, t1);
    
    offset = sync(a, b);

    output = a(mod(offset, ts):length(a));
    output = [output, zeros(1, (ts - mod(length(output), ts)))];
end
