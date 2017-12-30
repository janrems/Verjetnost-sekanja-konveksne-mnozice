function[izid]=skupaj(n)
nov=zeros(n,2);
sez=premice(n);
for i=1:n
    nov(i,:)=spremeni(sez(i,1),sez(i,2));
end
izid=nov
end