function output = framesync( signal )
    [pre, post] = preamble();
    pre = pre * 2 - 1;
    post = post * 2 - 1;
    
    signal_ = signal * 2 - 1;

    offset = sync(signal_, pre);
    offset_end = sync(signal_, post);
    
    output = signal(offset+length(pre):offset_end - 1);
end
