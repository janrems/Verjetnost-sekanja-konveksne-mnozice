function indeksi = rand_sample(vektor,p)
    l = length(vektor);
    k = round(l*p/100);
    indeks = randperm(l,k);