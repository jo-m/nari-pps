seconds = 10

ar = audiorecorder(samplerate, 16, 1, -1);
record(ar);
pause(seconds)
stop(ar);

recv = getaudiodata(ar);
recv = recv';

%figure(1)
%subplot(2,1,1)
%plot(tosend)
%subplot(2,1,2)
%plot(recv)

dataout = receive(recv, repenc);

playsound(recv)
calcBER(data, dataout);
