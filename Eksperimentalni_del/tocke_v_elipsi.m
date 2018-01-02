function[A]=tocke_v_elipsi(n, a, b)
t=2*pi*rand(n,1);
x1=a.*rand(n,1).*cos(t);
y1=b.*rand(n,1).*sin(t);
x2=a.*rand(n,1).*cos(t);
y2=b.*rand(n,1).*sin(t);
A=[(y2-y1)./(x2-x1),y1-((y2-y1)./(x2-x1)).*x1];
plot(x1,y1, 'o', 'MarkerSize', 5)
xlim([-4 4])
ylim([-4 4])
end