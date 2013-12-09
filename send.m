function modulated = send( data, repenc )
    seq = addkeys(data);
    enc = repencode(seq, repenc);

    modulated = modulate(enc, 80, 20, 8);
end
