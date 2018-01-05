function [tabela_abs] = opt_stevilo_premic_elipsa(n_poizkusov)
    st_premic = 10:30:1000;
    tabela_abs = zeros(n_poizkusov,length(st_premic));
    tabela_rel = zeros(n_poizkusov,length(st_premic));
    for j = 1:n_poizkusov
        for i = 1:length(st_premic)
            [p,o] = verjetnost_elipsa(2,3,st_premic(i),j);
            tabela_abs(j,i) = abs(p-o);
            tabela_rel(j,i) = p-o;
        end
    end
end
        
    