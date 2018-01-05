function[rezult,rezultm,pmax,r,rm]=kroznica_premaknjena(rmax)
%t teèe med 0 in 2*pi
t = 0 : 0.05 : 2*pi;
r = rmax*rand(1);
pmax = r ;
k = r*rand(1);
fi = 2*pi*rand(1);
rm = (r-k)*rand(1);
xm = k*cos(fi);
ym = k*sin(fi);

rezultm=zeros(length(t), 2);

rezult(:,1) = r*cos(t);
rezult(:,2) = r*sin(t);
rezult(length(t)+1,:) = rezult(1,:);

rezultm(:,1) = rm*cos(t) + xm ;
rezultm(:,2) = rm*sin(t) + ym;
rezultm(length(t)+1,:) = rezultm(1,:);

% plot(rezult(:,1), rezult(:,2))
% hold on
% plot(rezultm(:,1), rezultm(:,2))
% hold off


end