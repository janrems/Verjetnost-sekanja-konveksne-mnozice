function [n_pres, A_nova] = presecisca (A,velika)
    %Funkcija za argumenta dobi matriko "A", ki ima v vsaki vrstici podan
    %par to?k(x1,y1,x2,y2), ki predstavja daljico med njima, ter "velika", ki je matrika
    %mno�ice to?k,ki dolo?a ve?jo od krivulj. Funkcija vrne �tevilo
    %prese?i�? mno�ice z daljicami(1 ?e daljica mno�ico seka, 0 sicer)"n_pres", ter
    %matriko "A_nova", ki je enaka matriki "A" brez daljic, ki krivulje ne
    %sekajo.
    n_pres = 0;
    dolzina = length(A(:,1));
    A_nova = A;
    izbris =[];

    
    for i = 1:dolzina
        n = (length(intersections(A(i,[1 3]),A(i,[2 4]),velika(:,1),velika(:,2))))/2;
        n_pres = n_pres + n;
        
        if n < 1
            izbris = [izbris, i];
        end      
    end
    %for se zapelje ?ez vse dalice iz matrike "A", ter, ?e funkcija
    %"intersections" prese?i�?e najde, �tevcu "n_pres" pri�teje 1(daljica
    %konveksno mno�ico seka ali 2-krat ali pa nobenkrat zato dol�ino
    %vektorja prese?i�? pred pri�tetjem deljimo z 2). ?e daljica krivulje
    %ne seka, njen indeks dodamo v vktor izbris.
    
    A_nova(izbris,:) = []; %Iz matrike "A_nova", ki je definirana kot "A", 
    %daljice na mestih indeksov iz "izbrisa" pobri�emo
end
    




