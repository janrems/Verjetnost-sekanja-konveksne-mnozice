function[a]=spremeni(p, theta)
k=tan(theta);
if theta<(pi/2)
    n=-p/sin((pi/2)-theta);
elseif theta>=(pi/2) && theta<pi
    n=p/sin(theta-pi/2);
elseif theta>=pi && theta<(3*pi)/2
    n=p/sin((3*pi)/2-theta);
elseif theta>=(3*pi)/2
    n=-p/sin(theta-(3*pi)/2);
end
a=[k, n];
end
  
    