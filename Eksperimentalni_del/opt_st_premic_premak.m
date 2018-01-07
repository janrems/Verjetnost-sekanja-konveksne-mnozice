function [tabela_abs] = opt_st_premic_premak(n_poizkusov)
    %Funkcija za parameter dobi "n_poizjusov", ki dolo?a število ponovitev
    %klicanja funkcije "verjetnost_kroznica". Funkcija vrne matriko dimenzije n_poizkusov x 34, ki
    %predstavlja absolutni odmik od pri?akovanega rezultata za
    %poizkus(vrstice) pri sekanju z razli?nim številom premic(stolpci).
    
    st_premic = 10:30:1000;
    tabela_abs = zeros(n_poizkusov,length(st_premic));
    
    
    for j = 1:n_poizkusov
        for i = 1:length(st_premic)
            [p,o,n_pres_v] = verjetnost_kroznica(3,st_premic(i),j);
            tabela_abs(j,i) = abs(p-o);
        end
    %Dvojna for zanka v prazno tabelo vstavlja absolutno razliko razmerja
    %št. premic ki sekajo veliko in malo krožnico in pa razmerja njunih obsegov.
    end
end
        
    