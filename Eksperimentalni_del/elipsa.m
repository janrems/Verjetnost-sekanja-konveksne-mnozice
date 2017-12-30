function[rezult]=elipsa(t, xmax, ymax)
%t teèe med 0 in 2*pi
rezult=zeros(length(t), 2);
a=xmax.*rand(1);
b=ymax.*rand(1);
for i=1:length(t)
rezult(i, 1)=a*cos(t(i));
rezult(i, 2)=b*sin(t(i));
end
%plot(rezult(1,:), rezult(2,:))
end