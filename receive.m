function data = receive( modulated, repenc )
    synced = symbolsync(modulated,  30 * repenc, 10, 3);

    demodulated = demodulate(synced,  30, 10, 3);

    decoded = repdecode(demodulated, repenc);
    
    data = framesync(decoded);
end
