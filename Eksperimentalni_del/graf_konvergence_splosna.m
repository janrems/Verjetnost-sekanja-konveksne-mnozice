t = 10:30:1000;
% for i = 1:length(tabela_osp(:,1))
%     plot(t,tabela_osp(i,:))
%     figure()
% end

povprecna_napaka = mean(tabela_osp,1);
plot(t,povprecna_napaka)