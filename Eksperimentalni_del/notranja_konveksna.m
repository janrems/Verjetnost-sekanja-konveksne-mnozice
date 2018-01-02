
%{
a = 0.6 .* rand(15,1) + 0.3;
b = 0.6 .* rand(15,1) + 0.3;
h = convhull(a,b);
maxa = max(a)
maxb = max(b)
mina = min(a)
minb = min(b)
for i = 1: 20
    x1 = (maxa - mina) * rand + mina;
    x2 = (maxa -mina) * rand + mina;
    y1 = (maxb -minb) * rand + minb;
    y2 = (maxb -minb) * rand + minb;
    a2 = abs(x1 - x2) .* rand(15,1) + min(x1,x2)
    b2 = abs(y1 - y2) .* rand(15,1) + min(y1,y2)
    l = convhull(a2,b2);
    plot(a(h),b(h))
    hold on 
    plot(a2(l),b2(l))
    hold off
    figure()
end 
%}


%druga�?e
% zunanja fiksn spreminjamo notranje

function [a1,b1,l] = notranja_konveksna(a,b,h)
    a1 = a;
    b1 = b;
    a1(h) = [];
    b1(h) = [];
    vzorec = nakljucni_vzorec([a1';b1'],50);
    a1 = vzorec(1,:)';
    b1 = vzorec(2,:)';
    l = convhull(a1,b1);
    plot(a(h),b(h))
    hold on
    plot(a1(l),b1(l))
    hold off
end


