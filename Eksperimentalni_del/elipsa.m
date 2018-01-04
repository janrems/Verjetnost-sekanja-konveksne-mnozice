function[rezult,rezultm, pmax]=elipsa(xmax, ymax)
%t te�e med 0 in 2*pi
t = 0 : 0.05 : 2*pi;
rezult=zeros(length(t), 2);
a=xmax.*rand(1);
b=ymax.*rand(1);
pmax = max(a,b);
am = a*rand(1);
bm = b*rand(1);
rezultm=zeros(length(t), 2);

rezult(:,1) = a*cos(t);
rezult(:,2) = b*sin(t);
rezult(length(t)+1,:) = rezult(1,:);

rezultm(:,1) = am*cos(t);
rezultm(:,2) = bm*sin(t);
rezultm(length(t)+1,:) = rezultm(1,:);

% plot(rezult(:,1), rezult(:,2))
% hold on
% plot(rezultm(:,1), rezultm(:,2))
% hold off
% rezultm
end