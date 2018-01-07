function[rezult,rezultm, pmax]=elipsa(xmax, ymax)
%Funkcija za argument dobi par vrednosti "xmax" in "ymax", ki dolo?ata
%interval na katerem, sta naklju?no izbrana "a" in "b" iz en??be elipse.
%>Funkcija vrne "pmax", ki je enak ve?jemu od "a" in "b" ter dve matriki z
%dvema stolpcema "rezult" in "rezultm", ki dolo?ata vejo in manjšo elipso.
t = 0 : 0.05 : 2*pi;
rezult=zeros(length(t), 2);
a=xmax.*rand(1); %enakomerno zvezno generiranje parametra a na intervalu [0,xmax]
b=ymax.*rand(1); %enakomerno zvezno generiranje parametra b na intervalu [0,xmax]
pmax = max(a,b); 
am = a*rand(1); %enakomerno zvezno generiranje parametra am na intervalu [0,a]
bm = b*rand(1); %enakomerno zvezno generiranje parametra bm na intervalu [0,b]
rezultm=zeros(length(t), 2);

rezult(:,1) = a*cos(t);%x kordinate množice to?k, ki dolo?ajo ve?jo elipso
rezult(:,2) = b*sin(t);%y kordinate množice to?k, ki dolo?ajo ve?jo elipso
rezult(length(t)+1,:) = rezult(1,:); % prva in zadnja to?ka sta enaki. S tem popravkom je krivulja res sklenjena

rezultm(:,1) = am*cos(t);%x kordinate množice to?k, ki dolo?ajo manjšo elipso
rezultm(:,2) = bm*sin(t);%y kordinate množice to?k, ki dolo?ajo manjšo elipso
rezultm(length(t)+1,:) = rezultm(1,:);% prva in zadnja to?ka sta enaki. S tem popravkom je krivulja res sklenjena

% plot(rezult(:,1), rezult(:,2))
% hold on
% plot(rezultm(:,1), rezultm(:,2))
% hold off
% rezultm
end