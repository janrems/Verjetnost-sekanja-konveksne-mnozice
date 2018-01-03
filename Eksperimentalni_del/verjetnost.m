function [p,o] = verjetnost(n_tock,n_premic)
seme=69; rand('seed',seme);
[a,b,h] = random_konveksna(n_tock);
[a1,b1,l] = notranja_konveksna(a,b,h);
pmax = max(a(h)) + 0.1;
A = vrni_tocke(n_premic,pmax);

[n_pres_v, A_nova] = presecisca (A,[a(h) b(h)]);



[n_pres_m] = presecisca_majhna (A_nova,[a1(l) b1(l)]);

p = n_pres_m/n_pres_v;

o_v = dolzina(a(h),b(h));

o_m = dolzina(a1(l),b1(l));

o = o_m/o_v