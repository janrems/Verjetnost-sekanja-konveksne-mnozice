function [p,o,n_pres_v] = verjetnost(n_tock,n_premic,j)
    % Funkcija kot argumente sprejme "n_to�k", ki da �tevilo to�k na katerih se generirata
    % splo�ni konveksni mno�ici, "n_premic" ki poda �tevilo premic katerih
    % prese�i��a funkcija i��e ter parameter "j", ki dolo�a seme. Funkcija
    % vrne vrednost "p", ki je razmerje �tevila premic, ki sekajo majhno in
    % veliko krivuljo, vrednost "o", ki je razmerje dol�ine male in velike
    % krivulje ter vrednost "n_pres_v", ki pove koliko premic seka ve�jo
    % od krivulj. 
    seme=j; rand('seed',seme);
    
    [a,b,h] = random_konveksna(n_tock); %vrne mno�ico to�k, ki dolo�a ve�jo krivuljo
    [a1,b1,l] = notranja_konveksna(a,b,h); %vrne mno�ico to�k ki dolo�a anj�o krivuljo
    
    pmax = sqrt(max(abs(a(h)))^2 + max(abs(b(h)))^2) + 0.001; %maksimalna potencialna 
    %oddaljenost ve�je krivulje od izhodi��a
    krajisce = max(abs(a(h))) + 0.001; %maksimalna x kordinata ve�je krivulje
    A = vrni_tocke(n_premic,pmax,krajisce); %v matriki s �tirimi stolpci vrne pare to�k 
    %izven ve�je krivulje((-krajisce)*k +n,(krajisce)*k +n),ki dolo�ajo daljice. Te daljice 
    %so odseki premic, katerih parameter "p" te�e na intervalu (0,pmax). 
    
    [n_pres_v, A_nova] = presecisca (A,[a(h) b(h)]); %funkcija "presecisca" vrne �tevilo 
    %prese�i�� daljic(ve�kratnost ni �teta) zbranih v matriki "A" in ve�je krivulje, 
    %ter podmatriko matrike "A", "A_nova", ki jo obimo tako, da iz matrike "A" odstranimo 
    %daljice, ki ve�je krivulje ne sekajo.
    
    [n_pres_m] = presecisca_majhna (A_nova,[a1(l) b1(l)]);%funkcija "presecisca_majhna" 
    %vrne �tevilo prese�i�� daljic(ve�kratnost ni �teta) zbranih v matriki "A" in manj�e 
    %krivulje.

    p = n_pres_m/n_pres_v; %razmerje �tevila sekanj male in velike krivulje
    o_v = dolzina(a(h),b(h)); %dol�ina velike krivulje
    o_m = dolzina(a1(l),b1(l)); %dol�ina majhne krivulje
    o = o_m/o_v; %razmerje dol�in majhne in velike krivulje

end