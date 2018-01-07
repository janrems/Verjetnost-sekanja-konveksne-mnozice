function[seznam]=premice(n,pmax)
%Funkcija kot argumenta dobi parametra"n" in "pmax", ter vrne n x 2
%matriko, kjer je v prvem stolpcu n vrednosti p, naklju?no generiranih na
%intervalu [0,pmax](oddaljenost premice od izhodiš?a), v drugem pa n
%vrednosti naklju?no generiranih na intervalu [0,2*pi](kot premice glede na abciso)
seznam=[pmax*rand(n,1), 2*pi*rand(n,1)];
end