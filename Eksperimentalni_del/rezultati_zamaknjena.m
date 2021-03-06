function [tabela] = rezultati_zamaknjena(n_poizkusov,n_premic,rmax)
    %Funkcija kot argumente dobi "n_poizkusov", ki pove, kolikokrat bomo
    %poklicali funkcijo "verjetnost_kroznica" na kro�nicah katerih radij je omejen z "rmax" in
    %"n_premic", ki pove s koliko premicami bo funkcija "verjetnost_kroznica"
    %operirala. Na koncu vrne matriko "tabela", ki vsebuje rezultate
    %funkcije "verjetnost_kroznica".
    tabela = zeros(n_poizkusov,5);
    for i = 1:n_poizkusov
        [p,o,n_pres_v] = verjetnost_kroznica(rmax,n_premic,i);
        tabela(i,1) = p;
        tabela(i,2) = o;
        tabela(i,3) = abs(p-o);
        tabela(i,4) = p - o;
        tabela(i,5) = n_pres_v;
    end
    %For zanka za vsako kroznico"n_poizkusov"-krat pokli?e funkcijo verjetnost. 
    %Nato v prvi stolpecmatrike shranimo razmerje sekanj ve?je in manj�e kroznice. 
    %V 2.stolpec zapi�emo razmerje obsegov. V 3. stolpcu je absolutna razlika
    %vrednosti v prvih dveh stolpcih, v 4. pa predzna?ena. V 5. stolpcu
    %je navedeno �tevilo sekanj ve?je kro�nice.
end
    
            
            
        
    
