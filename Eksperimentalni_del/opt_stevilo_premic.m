function [tabela] = opt_stevilo_premic(n_poizkusov)
    st_premic = 10:30:1000;
    tabela = zeros(n_poizkusov,length(st_premic));
    for j = 1:n_poizkusov
        for i = 1:length(st_premic)
            [p,o,vk,nk] = verjetnost(30,st_premic(i),j);
            tabela(j,i) = abs(p-o);
        end
        plot(vk(:,1),vk(:,2))
        hold on
        plot(nk(:,1),nk(:,2))
        hold off
        figure()
    end
end
        
    