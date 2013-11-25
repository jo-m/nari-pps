%v = source(1000,0.5);
%calcBER(v,BSC_channel(v,0.1))

v = source(5,0.5)
repdecode(repencode(v, 1), 1)


n = 100
q = 0.4
v = source(1000,0.5);
encoded = repencode(v, n);
transmitted = BSC_channel(encoded, q);
decoded = repdecode(transmitted, n);
calcBER(v, decoded)
