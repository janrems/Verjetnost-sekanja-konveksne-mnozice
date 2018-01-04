function [tabela] = rezultati_splosna(n_poizkusov,n_premic)
    tabela = zeros(4*n_poizkusov,4);
    n_tock = [20 40 80 200];
    for j = 1:4
        for i = 1:n_poizkusov
            [p,o,vk,nk] = verjetnost(n_tock(j),n_premic,((j-1)*n_poizkusov +i));
            tabela(((j-1)*n_poizkusov +i),1) = p;
            tabela(((j-1)*n_poizkusov +i),2) = o;
            tabela(((j-1)*n_poizkusov +i),3) = abs(p-o);
            tabela(((j-1)*n_poizkusov +i),4) = p - o;
            
        end
    end
end
    
            
            
        
    
