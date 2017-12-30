function[seznam]=premice(n)
seznam=zeros(n,2);
for i=1:n
    a=rand(1);
    seznam(i,1)=a;    
    b=2*pi*rand(1);
    seznam(i,2)=b;
end
end