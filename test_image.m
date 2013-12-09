fid = fopen('image.bmp', 'r');
data = fread(fid, 'ubit1')';
fclose(fid)

repenc = 1;

tosend = send(data, repenc);
tosend = [zeros(1, 800) tosend zeros(1, 8000)];

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

dataout = receive(recv, repenc);

fid = fopen('image-recv.bmp', 'w');
fwrite(fid, dataout, 'ubit1')';
fclose(fid);
