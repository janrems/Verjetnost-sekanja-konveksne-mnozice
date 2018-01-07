function[nov]=skupaj(n,pmax)
    %Funkcija skupaj za argumenta dobi števili "n" in "pmax" in s tema
    %vrednostima pokli?e funkciji "premice" in "spremeni". Vrne matriko
    %"nov" dimenzije "n" x 2, ki vsebuje "n" premic in njihove parametre (k,n).
    nov=zeros(n,2);
    sez=premice(n,pmax);%n x 2 matrika, z n premicami
    for i=1:n
        nov(i,:)=spremeni(sez(i,1),sez(i,2));
    end
    %for zanka na vsaki premici pokli?e funkcijo "spremeni" in vrednosti
    %spravi v n x 2 matriko "nov"
    end