function snd = recordsound( seconds )
    ar = audiorecorder(22044, 16, 1, -1);
    record(ar);
    pause(seconds);
    stop(ar);
    
    snd = getaudiodata(ar);
    snd = snd';
end
