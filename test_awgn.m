clear

repenc = 10

seq = source(10000, 0.5);
enc = repencode(seq, repenc);
y = modulate(enc, 80, 20, 8);
% ax(1)=subplot(3,1,1);
% plot(y)
r = awgn(y, -30);
% ax(2)=subplot(3,1,2);
% plot(r)
% linkaxes(ax,'x')

dec = repdecode(demodulate(r, 80, 20, 8), repenc);

calcBER(seq, dec);
