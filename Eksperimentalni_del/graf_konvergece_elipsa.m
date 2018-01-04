t = 10:30:1000;
for i = 1:length(tabela_ospe(:,1))
    plot(t,tabela_ospe(i,:))
    figure()
end

povprecna_napaka = mean(tabela_ospe,1);
plot(t,povprecna_napaka)