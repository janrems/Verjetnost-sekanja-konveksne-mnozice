function[konec]=tocke(n, xmax, ymax)
konec=zeros(n,2);
for i=1:n
    x1=xmax*rand(1);
    y1=ymax*rand(1);
    x2=xmax*rand(1);
    y2=ymax*rand(1);
    konec(i,:)=[(y2-y1)/(x2-x1),y1-((y2-y1)/(x2-x1))*x1];
end
end