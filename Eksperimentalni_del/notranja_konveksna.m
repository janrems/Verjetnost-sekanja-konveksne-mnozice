function [a1,b1,l] = notranja_konveksna(a,b,h)
%Funkcija kot argument dobi "a", "b", "h", kjer "a" in "b" dolo?ata mno�ico
%to?k, na katerih je napeta ve?ja konveksna ovojnica, ki jo dolo?a "h". Funkcija
%vrne mno�ico to?k ("a1", "b1") znotraj ve?je krivulje in konveksna ovojnica
%teh to?k je podano z "l".
    a1 = a;
    b1 = b;
    a1(h) = [];%iz a1 odstrnimo x kordinate to?k, ki dolo?ajo ve?jo krivuljo
    b1(h) = [];%iz b1 odstrnimo y kordinate to?k, ki dolo?ajo ve?jo krivuljo
    
    k = 1;
    p = 40
    while k > 0    
        vzorec = nakljucni_vzorec([a1';b1'],p);
        if length(vzorec(1,:)) > 3
            k = 0;
        else
            p = p + 5
        end
    end
    %zanka while vrne 40% naklju?ni vzorec  to?k generiranih z "a1" in
    %"b1". ?e je velikost 40% vzorca manj od 3(minimalno �tevilo to?k
    %potrebnih za generiranje netrivialne konveksne mno�ice) velikost
    %vzorca pove?am za 5%
    
    a1 = vzorec(1,:)'; %x kordinate izbranih to?k
    b1 = vzorec(2,:)';%y kordinate izbranih to?k
    l = convhull(a1,b1);%konveksna ovojnica na izbranih to?kah
    
end


