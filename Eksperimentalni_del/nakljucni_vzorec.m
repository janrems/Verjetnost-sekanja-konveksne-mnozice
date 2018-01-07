function y =  nakljucni_vzorec(x,p)
%Funkcija za parameter dobi matriko "x" dimenzije m x n in odstotek "p".
%Vrne novo matriko "y", ki ima le �e "p"% prvotnih stolpcev.
    dim = size(x);
    n = dim(2);
    k = round(n* (p/100)); % "p"% "n"-ja zaokro�enih na celo �tevilo
    y = x(:,sort(randperm(n,k)));%randperm zgenerira naklju?ni vektor k celih �tevil med 0 in n 
    %brez ponavljanja. Ta vektor uredimo in vzamemo kot indeksni vektor po
    %dimenziji stolpcev matrike "x"
end
