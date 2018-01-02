function [p,o] = verjetnost_hitra(n_tock,n_premic)
[a,b,h] = random_konveksna(n_tock);
[a1,b1,l] = notranja_konveksna(a,b,h);
pmax = max(max(a(h)),max(b(h)));
A = vrni_tocke(n_premic,pmax);

n_pres_v = presecisca_vec(A,[a(h) b(h)],pmax)
hold on



n_pres_m = presecisca_vec (A,[a1(l)' b1(l)'],pmax)

p = n_pres_m/n_pres_v;

o_v = dolzina(a(h),b(h));

o_m = dolzina(a1(l),b1(l));

o = o_m/o_v