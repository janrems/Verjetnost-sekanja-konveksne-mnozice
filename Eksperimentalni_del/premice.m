function[seznam]=premice(n,pmax)
seznam=zeros(n,2);
for i=1:n
    p=pmax*rand(1);
    seznam(i,1)=p;    
    theta=2*pi*rand(1);
    seznam(i,2)=theta;
end
end