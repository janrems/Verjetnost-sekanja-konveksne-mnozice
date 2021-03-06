function [p,o,n_pres_v] = verjetnost_elipsa (xmax,ymax,n,j)
    % Funkcija kot argumente sprejme "xmax" in "ymax", ki v funkciji "elipsa" 
    % omejuje parametra a in b(iz ena?be elipse), "n_premic" ki poda �tevilo premic katerih
    % prese�i��a funkcija i��e ter parameter "j", ki dolo�a seme. Funkcija
    % vrne vrednost "p", ki je razmerje �tevila premic, ki sekajo majhno in
    % veliko elipso, vrednost "o", ki je razmerje dol�ine male in velike
    % elipse ter vrednost "n_pres_v", ki pove koliko premic seka ve�jo
    % od elips. 
    seme= j; rand('seed',seme);
    
    [velika,mala,pmax] = elipsa(xmax,ymax);%vrne matriki, ki dolo?ata veliko in majhno elipso
    %in �tevilo "pmax", ki je definiran kot max(a,b)
    
    A = vrni_tocke(n,pmax,pmax);%v matriki s �tirimi stolpci vrne pare to�k izven ve�je 
    %elipse((-pmax)*k +n,(pmax)*k +n),ki dolo?ajo daljice. Te daljice so odseki 
    %premic, katerih parameter "p" te�e na intervalu (0,pmax). 


    [n_pres_v, A_nova] = presecisca(A,velika);%vrne �tevilo prese?i�? ve?je elipse "n_pres" in
    %matriko premic "A_nova"
     
    [n_pres_m] = presecisca_majhna(A_nova,mala);%vrne �tevilo prese?i�? manj�e elipse s 
    %daljicami iz "A_nova"
    
    p = n_pres_m/n_pres_v ;%razmerje �tevila prese?i�? ve?je in manj�e elipse
    
    o_velika = dolzina(velika(:,1),velika(:,2));%dol�ina ve?je elipse
    
    o_mala = dolzina(mala(:,1),mala(:,2));%dol�ina manj�e elipse
    
    o = o_mala/o_velika;%razmerej dol�in ve?je in manj�e elipse
    
    
end