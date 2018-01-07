function[a]=spremeni(p, theta)
    %Funkcija dobi za argumenta "p" in "theta", ki ponazarjata oddaljenost
    %premice od izhodiš?a in kot ki ga tvori z abciso. Vrne par (k, n), ki
    %nastopata v eksplicitni ena?bi premice (y = kx +n).
    k=tan(theta)
    if theta<pi
        n=-p/sin((pi/2)-theta);
    elseif theta>=pi
        n=p/sin((3*pi)/2-theta);
    end
    %V pogojnem stavku preverimo ali je "theta" ve?ja oz. manjša od pi in
    %temu ustrezno predzna?imo "n"
    a=[k, n];
    end