function [ output_args ] = gauss( u, sigma )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
    
    x = (-sigma * 4 + u:sigma * 8 / 1000:sigma * 4 + u)';
    y = gaussmf(x, [sigma u]);
    figure(3);
    plot(x, y)
    ylim([0 1]);

end
