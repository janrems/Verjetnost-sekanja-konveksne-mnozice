function [p,o,n_pres_v] = verjetnost(n_tock,n_premic,j)
    
    seme=j; rand('seed',seme);
    
    [a,b,h] = random_konveksna(n_tock);
    [a1,b1,l] = notranja_konveksna(a,b,h);
    
    pmax = sqrt(max(abs(a(h)))^2 + max(abs(b(h)))^2) + 0.001;
    krajisce = max(abs(a(h))) + 0.001;
    A = vrni_tocke(n_premic,pmax,krajisce);
    
    [n_pres_v, A_nova] = presecisca (A,[a(h) b(h)]);
    [n_pres_m] = presecisca_majhna (A_nova,[a1(l) b1(l)]);

    p = n_pres_m/n_pres_v;
    o_v = dolzina(a(h),b(h));
    o_m = dolzina(a1(l),b1(l));
    o = o_m/o_v;
%     for i = 1:length(A(:,1))
%         
%         plot(A(i,[1 3]),A(i,[2 4]))
%         hold on
%     end
%     plot(a(h),b(h))
%     hold on
%     plot(a1(l),b1(l))
%     axis([-1 1 -1 1])
%     hold off

end