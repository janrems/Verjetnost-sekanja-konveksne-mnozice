function[a]=spremeni(p, theta)
k=tan(theta);
if theta<pi
    n=-p/sin((pi/2)-theta);
elseif theta>=pi
    n=p/sin((3*pi)/2-theta);
end
a=[k, n];
end