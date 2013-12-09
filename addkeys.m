function signal = addkeys( source )
    [pre, post] = preamble();
    signal = [pre, source, post];
end
