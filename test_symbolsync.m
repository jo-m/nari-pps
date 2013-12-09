clear

repenc = 1;

seq = source(10, 0.5);
enc = repencode(seq, repenc);

y = modulate(enc, 80, 20, 8);

figure(4)
ax(1)=subplot(3, 1, 1)
plot(y)
length(y)

shifted = [zeros(1, 100 + floor(rand(1, 1) * 1000)), y, zeros(1, floor(rand(1, 1) * 1000))];
ax(2)=subplot(3, 1, 2)
plot(shifted)
length(shifted)


ax(3)=subplot(3, 1, 3)
synced = symbolsync(shifted,  80, 20, 8);
plot(synced)
hold on
sp = 1:80:length(synced)
stem(sp, ones(length(sp)), 'r')
hold off
linkaxes(ax,'x')