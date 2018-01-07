function [p,o,n_pres_v] = verjetnost_kroznica (rmax,n,j)
    % Funkcija kot argumente sprejme "rmax", ki v funkciji "kroznica_premaknjena" 
    % omejuje parametra radij ve?je kro�nice, "n_premic" ki poda �tevilo premic katerih
    % prese�i��a funkcija i��e ter parameter "j", ki dolo�a seme. Funkcija
    % vrne vrednost "p", ki je razmerje �tevila premic, ki sekajo majhno in
    % veliko kro�nico, vrednost "o", ki je razmerje dol�ine male in velike
    % kro�nice ter vrednost "n_pres_v", ki pove koliko premic seka ve�jo
    % od kro�nic. 
    seme= j; rand('seed',seme);
    [velika,mala,r,rm] = kroznica_premaknjena(rmax);%Vrne matriki, ki dolo?ata krio�nici ter 
    %njune radije
    
    A = vrni_tocke(n,r,r+0.01);%v matriki s �tirimi stolpci vrne pare to�k izven ve?je 
    %kro�nice((-r+0.01)*k +n,(r+0.01)*k +n),ki dolo?ajo daljice. Te daljice so odseki 
    %premic, katerih parameter "p" te�e na intervalu (0,r). 

    [n_pres_v, A_nova] = presecisca(A,velika);%vrne �tevilo prese?i�? ve?je kro�nice 
    %"n_pres" in matriko premic "A_nova"
     
    [n_pres_m] = presecisca_majhna(A_nova,mala);%vrne �tevilo prese?i�? manj�e kro�nice s 
    %daljicami iz "A_nova"
    
    
    p = n_pres_m/n_pres_v ;%razmerje �tevila prese?i�? ve?je in manj�e kro�nice
    
    o_velika = 2*pi*r;%dol�ina ve?je kro�nice
    
    o_mala = 2*pi*rm;% dol�ina manj�e kro�nice
    
    o = o_mala/o_velika;%razmerje dol�in ve?je in manj�e kro�nice
    
    
    
end