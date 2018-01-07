function [tabela_abs] = opt_stevilo_premic_elipsa(n_poizkusov)
    %Funkcija za parameter dobi "n_poizjusov", ki dolo?a število ponovitev
    %klicanja funkcije "verjetnost_elipsa". Funkcija vrne matriko dimenzije n_poizkusov x 34, ki
    %predstavlja absolutni odmik od pri?akovanega rezultata za
    %poizkus(vrstice) pri sekanju z razli?nim številom premic(stolpci).
    st_premic = 10:30:1000;
    tabela_abs = zeros(n_poizkusov,length(st_premic));
    for j = 1:n_poizkusov
        for i = 1:length(st_premic)
            [p,o] = verjetnost_elipsa(2,3,st_premic(i),j);
            tabela_abs(j,i) = abs(p-o);
        end
    end
     %Dvojna for zanka v prazno tabelo vstavlja absolutno razliko razmerja
    %št. premic ki sekajo veliko in malo elipso in pa razmerja njunih obsegov.
end
        
    