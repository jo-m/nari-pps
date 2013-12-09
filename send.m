function modulated = send( data )
    repenc = 10;

    seq = addkeys(data);
    enc = repencode(seq, repenc);

    modulated = modulate(enc, 80, 20, 8);
end
