function y =  nakljucni_vzorec(x,p)
    dim = size(x);
    n = dim(2);
    k = round(n* (p/100));
    y = x(:,sort(randsample(n,k)));
end
