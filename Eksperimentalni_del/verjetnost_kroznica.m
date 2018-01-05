function [p,o,n_pres_v] = verjetnost_kroznica (rmax,n,j)
    seme= j; rand('seed',seme);
    [velika,mala,pmax,r,rm] = kroznica_premaknjena(rmax);
    A = vrni_tocke(n,pmax,pmax+0.01);
%     for i = 1:n
%         
%         plot(A(i,[1 3]),A(i,[2 4]))
%         hold on
%     end
%     plot(velika(:,1), velika(:,2))
%     hold on
%     plot(mala(:,1), mala(:,2))
%     axis([-5 5 -5 5])
%     hold off

    [n_pres_v, A_nova] = presecisca(A,velika);
     
    [n_pres_m] = presecisca_majhna(A_nova,mala);
    
    p = n_pres_m/n_pres_v ;
    
    o_velika = 2*pi*r;
    
    o_mala = 2*pi*rm;
    
    o = o_mala/o_velika;
    
    
    
end