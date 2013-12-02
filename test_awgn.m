clear

repenc = 10

seq = source(10, 0.5);
enc = repencode(seq, repenc);
y = modulate(enc, 80, 20, 8);
figure(1)
ax(1)=subplot(2,1,1);
plot(y)
ax(2)=subplot(2,1,2);
r = awgn(y, -12)
%r = randn(1,length(y))* .1 + y
plot(r)
linkaxes(ax,'x')

dec = repdecode(demodulate(r, 80, 20, 8), repenc);

calcBER(seq, dec)