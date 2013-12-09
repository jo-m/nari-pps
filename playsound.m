function [] = playsound( snd )
    samplerate = 22044;
    seconds = length(snd) / samplerate;

    ap = audioplayer(snd', samplerate, 16, -1);
    pause(2);
    play(ap);
    pause(seconds);
    stop(ap);
end
