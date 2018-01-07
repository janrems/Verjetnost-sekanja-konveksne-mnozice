function [tabela] = rezultati_splosna(n_poizkusov,n_premic)
    %Funkcija kot argumenta dobi "n_poizkusov", ki pove, kolikokrat bomo
    %poklicali funkcijo "verjetnost" na krivulji dolo?enega tipa in
    %"n_premic", ki pove s koliko premicami bo funkcija "verjetnost"
    %operirala. Na koncu vrne matriko "tabela", ki vsebuje rezultate
    %funkcije "verjetnost".
    tabela = zeros(4*n_poizkusov,5);
    n_tock = [20 40 80 200];%Vektor �tevila to?k, na katerih generiramo krivulje
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
    %Dvojna for zanka za vsako krivuljo z dolo?enim �tevilom to?k,
    %"n_poizkusov"-krat pokli?e funkcijo verjetnost. Nato v prvi stolpec
    %matrike shranimo razmerje sekanj ve?je in manj�e krivulje. V 2.
    %stolpec zapi�emo razmerje obsegov. V 3. stolpcu je absolutna razlika
    %vrednosti v prvih dveh stolpcih, v 4. pa predzna?ena. V 5. stolpcu
    %je navedeno �tevilo sekanj ve?je od krivulj.
end
    
            
            
        
    
