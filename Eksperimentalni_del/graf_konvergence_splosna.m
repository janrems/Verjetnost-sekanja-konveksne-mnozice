%Nari�e graf absolutnega odmika od pri?akovanega rezultata pri sekanju neke
%krivulje z razli?nim �tevilom premic
t = 10:30:1000;

povprecna_napaka = mean(tabela_osp,1);
plot(t,povprecna_napaka)