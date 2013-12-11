function modulated = send( data, repenc )
    seq = addkeys(data);
    enc = repencode(seq, repenc);

    modulated = modulate(enc, 30, 10, 3);
end
