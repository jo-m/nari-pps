data = source(50, 0.5);
repenc = 2;
%data = [1 1 0 1 0 1 1 0 0 1 1]
%length(data)
%receive(send(data))

tosend = send(data, repenc);
tosend = [zeros(1, 800) tosend zeros(1, 8000)];

%playsound(tosend);


samplerate = 22044;
seconds = length(tosend) / samplerate;

ar = audiorecorder(samplerate, 16, 1, -1);
record(ar);
pause(2)
ap = audioplayer(tosend', samplerate, 16, -1);
playblocking(ap);
pause(2)
stop(ar);

recv = getaudiodata(ar);
recv = recv';

%figure(1)
%subplot(2,1,1)
%plot(tosend)
%subplot(2,1,2)
%plot(recv)

dataout = receive(recv, repenc);

%playsound(recv)
calcBER(data, dataout);

