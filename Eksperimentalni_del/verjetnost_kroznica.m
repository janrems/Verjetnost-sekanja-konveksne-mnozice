function [p,o,n_pres_v] = verjetnost_kroznica (rmax,n,j)
    % Funkcija kot argumente sprejme "rmax", ki v funkciji "kroznica_premaknjena" 
    % omejuje parametra radij ve?je krožnice, "n_premic" ki poda število premic katerih
    % preseèišèa funkcija išèe ter parameter "j", ki doloèa seme. Funkcija
    % vrne vrednost "p", ki je razmerje števila premic, ki sekajo majhno in
    % veliko krožnico, vrednost "o", ki je razmerje dolžine male in velike
    % krožnice ter vrednost "n_pres_v", ki pove koliko premic seka veèjo
    % od krožnic. 
    seme= j; rand('seed',seme);
    [velika,mala,r,rm] = kroznica_premaknjena(rmax);%Vrne matriki, ki dolo?ata kriožnici ter 
    %njune radije
    
    A = vrni_tocke(n,r,r+0.01);%v matriki s štirimi stolpci vrne pare toèk izven ve?je 
    %krožnice((-r+0.01)*k +n,(r+0.01)*k +n),ki dolo?ajo daljice. Te daljice so odseki 
    %premic, katerih parameter "p" teèe na intervalu (0,r). 

    [n_pres_v, A_nova] = presecisca(A,velika);%vrne število prese?iš? ve?je krožnice 
    %"n_pres" in matriko premic "A_nova"
     
    [n_pres_m] = presecisca_majhna(A_nova,mala);%vrne število prese?iš? manjše krožnice s 
    %daljicami iz "A_nova"
    
    
    p = n_pres_m/n_pres_v ;%razmerje števila prese?iš? ve?je in manjše krožnice
    
    o_velika = 2*pi*r;%dolžina ve?je krožnice
    
    o_mala = 2*pi*rm;% dolžina manjše krožnice
    
    o = o_mala/o_velika;%razmerje dolžin ve?je in manjše krožnice
    
    
    
end