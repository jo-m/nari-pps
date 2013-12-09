function data = receive( modulated )
    repenc = 10;
    
    synced = symbolsync(modulated,  80 * repenc, 20, 8);

    demodulated = demodulate(synced,  80, 20, 8);

    decoded = repdecode(demodulated, repenc);
    
    data = framesync(decoded);
end
