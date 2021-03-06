function [sigma_total] = loop( n, loopsize )
    p = 0.5;

    mittelwert_v = zeros(loopsize, 1);
    sigma_v = zeros(loopsize, 1);
    for k = [1:loopsize]
        [ mittelwert, sigma ] = drain(source(n,p));
        mittelwert_v(k) = mittelwert;
        sigma_v(k) = sigma;
    end
    
    figure(1);
    hist(mittelwert_v, 100)
    figure(2);
    hist(sigma_v, 100)
    
    gauss(1-p, std(mittelwert_v))
    
    sigma_total = std(mittelwert_v);
end