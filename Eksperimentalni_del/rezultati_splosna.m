function [tabela] = rezultati_splosna(n_poizkusov,n_premic)
    tabela = zeros(4*n_poizkusov,5);
    n_tock = [20 40 80 200];
    for j = 1:4
        for i = 1:n_poizkusov
            [p,o,n_pres_v] = verjetnost(n_tock(j),n_premic,((j-1)*n_poizkusov +i));
            tabela(((j-1)*n_poizkusov +i),1) = p;
            tabela(((j-1)*n_poizkusov +i),2) = o;
            tabela(((j-1)*n_poizkusov +i),3) = abs(p-o);
            tabela(((j-1)*n_poizkusov +i),4) = p - o;
            tabela(((j-1)*n_poizkusov +i),5) = n_pres_v;

            
        end
    end
end
    
            
            
        
    
