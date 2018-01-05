function [tabela] = rezultati_zamaknjena(n_poizkusov,n_premic,rmax)
    tabela = zeros(n_poizkusov,5);
    for i = 1:n_poizkusov
        [p,o,n_pres_v] = verjetnost_kroznica(rmax,n_premic,i);
        tabela(i,1) = p;
        tabela(i,2) = o;
        tabela(i,3) = abs(p-o);
        tabela(i,4) = p - o;
        tabela(i,5) = n_pres_v;

    end
end
    
            
            
        
    
