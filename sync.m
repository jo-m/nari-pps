function offset = sync( a, b )
    [c, lag] = xcorr(a, b);
    [m, i] = max(c);
    
    %figure(3)
    %ax(1)=subplot(3,1,1);
    %stem(a)
    %ax(2)=subplot(3,1,2);
    %stem(b)
    %ax(3)=subplot(3,1,3);
    %stem(lag, c)
    %linkaxes(ax,'x')
    
    offset = lag(i) + 1;
end
