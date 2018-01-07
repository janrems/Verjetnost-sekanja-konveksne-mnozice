function [A] = vrni_tocke(n,pmax,krajisce)
    %Funkcija za argumente sobi števila "n", "pmax" in "krajisce". "n" in
    %"pmax" podamo funkciji "skupaj", ki generira n parov(n,k), ki dolo?ajo
    %premice. Funkcija vrne matriko "A" dimenzij "n" x 4.
    B = skupaj(n,pmax); %matrika "n" x 2, parov (n,k)
    x1 = -krajisce * ones(n,1);%vektor dolžine "n" levih krajiš? daljic
    x2 = krajisce * ones(n,1);%vektor dolžine "n" desnih krajiš? daljic"
    y1 = -krajisce .*B(:,1) + B(:,2);% vektor dolžnie "n" funkcijskih vrednosti kordinat v "x1"
    y2 = krajisce .*B(:,1) + B(:,2); % vektor dolžnie "n" funkcijskih vrednosti kordinat v "x2"
    A = [x1 y1 x2 y2];%matrika generirana iz zgornje ?etverice vektorjev
end
        