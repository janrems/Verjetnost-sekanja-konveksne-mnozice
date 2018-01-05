function [tabela_abs,tabela_rel] = opt_st_premic_premak(n_poizkusov)
    st_premic = 10:30:1000;
    tabela_abs = zeros(n_poizkusov,length(st_premic));
    tabela_rel = zeros(n_poizkusov,length(st_premic));
    
    for j = 1:n_poizkusov
        for i = 1:length(st_premic)
            [p,o,n_pres_v] = verjetnost_kroznica(3,st_premic(i),j);
            tabela_abs(j,i) = abs(p-o);
            tabela_rel(j,i) = p-o;
        end
%         plot(vk(:,1),vk(:,2))
%         hold on
%         plot(nk(:,1),nk(:,2))
%         hold off
%         figure()
    end
end
        
    