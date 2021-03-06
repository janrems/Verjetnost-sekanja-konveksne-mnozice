function[rezult,rezultm,r,rm]=kroznica_premaknjena(rmax)
%Funkcija za argument dobi vrednost "rmax", ki dolo?a
%interval na katerem je naklju?no generiran radij elipse.
%Funkcija vrne dve matriki z dvema stolpcema, ki dolo??ata ve?jo in manj�o
%kro�nico, ter radija obeh kro�nic
t = 0 : 0.05 : 2*pi;
r = rmax*rand(1); %radij ve?je kro�nice naklju?no izbran iz intervala [0,rmax]
k = r*rand(1);%oddaljenost naklu?ne to?ke, znotraj ve?je kro�nice, od izhodi�?a
fi = 2*pi*rand(1); %kot ki ga oklepata abcisa in krajevni vektor do k
rm = (r-k)*rand(1); %naklju?ni radij manj�e kro�nice (s sredi�?em v k) generiran na intervalu [0,(r-k)]
xm = k*cos(fi); %x kordinata to?ke k
ym = k*sin(fi); %y kordinata to?ke k

rezultm=zeros(length(t), 2);

rezult(:,1) = r*cos(t); %x kordinate mno�ice to?k, ki dolo?ajo ve?jo kro�nico
rezult(:,2) = r*sin(t); %y kordinate mno�ice to?k, ki dolo?ajo ve?jo kro�nico
rezult(length(t)+1,:) = rezult(1,:);%prva to?ka je enaka zadnji

rezultm(:,1) = rm*cos(t) + xm ; %x kordinate mno�ice to?k, ki dolo?ajo manj�o kro�nico
rezultm(:,2) = rm*sin(t) + ym; %y kordinate mno�ice to?k, ki dolo?ajo manj�o kro�nico
rezultm(length(t)+1,:) = rezultm(1,:);%prva to?ka je enaka zadnji

% plot(rezult(:,1), rezult(:,2))
% hold on
% plot(rezultm(:,1), rezultm(:,2))
% hold off


end