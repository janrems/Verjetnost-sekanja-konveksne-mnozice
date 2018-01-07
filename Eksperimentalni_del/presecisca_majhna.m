function [n_pres] = presecisca_majhna (A,majhna)
    %Funkcija deluje na enak princip kot "presecisca", le da, vrne zgolj
    %število prese?iš? "n_pres" daljic iz "A" z konveksno krivuljo "mala" in ne tudi nove matrike.
    n_pres = 0;
    dolzina = length(A(:,1));
    for i = 1:dolzina
        n = length(intersections(A(i,[1 3]),A(i,[2 4]),majhna(:,1),majhna(:,2)))/2;
        n_pres = n_pres + n;
        
    end
  
end