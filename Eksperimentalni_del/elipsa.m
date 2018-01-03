function[rezult,rezultm, pmax]=elipsa(xmax, ymax)
%t teèe med 0 in 2*pi
t = 0:0.001:2*pi;
rezult=zeros(length(t), 2);
a=xmax.*rand(1);
b=ymax.*rand(1);
pmax = a + 0.1;
am = a*rand(1);
bm = b*rand(1);
rezultm=zeros(length(t), 2);
for i=1:length(t)
rezult(i, 1)=a*cos(t(i));
rezult(i, 2)=b*sin(t(i));

rezultm(i,1)=am*cos(t(i));
rezultm(i,2)=bm*sin(t(i));
end

% plot(rezult(:,1), rezult(:,2))
% hold on
% plot(rezultm(:,1), rezultm(:,2))
% hold off
end