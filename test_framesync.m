clear

repenc = 10;

signal = source(10, 0.5);

seq = addkeys(signal);
enc = repencode(seq, repenc);

y = modulate(enc, 80, 20, 8);

figure(4);

ax(1)=subplot(6, 1, 1);
stem(repencode(enc, 80));

ax(2)=subplot(6, 1, 2);
plot(y);
length(y);

shifted = awgn([zeros(1, 100 + floor(rand(1, 1) * 1000)), y, zeros(1, floor(rand(1, 1) * 1000))], 10);
ax(3)=subplot(6, 1, 3);
plot(shifted);

ax(4)=subplot(6, 1, 4)
synced = symbolsync(shifted,  80 * repenc, 20, 8);
plot(synced);
hold on
sp = 1:80:length(synced);
%stem(sp, ones(length(sp)), 'r');
hold off


demodulated = demodulate(synced,  80, 20, 8);
ax(5)=subplot(6, 1, 5);
stem(repencode(demodulated, 80));

fsynced = framesync(repdecode(demodulated, repenc));

ax(6)=subplot(6, 1, 6);
stem(repencode(fsynced, 80));


linkaxes(ax,'x');

signal
fsynced