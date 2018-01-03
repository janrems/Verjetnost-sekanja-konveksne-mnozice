function [p,o] = verjetnost_elipsa (xmax,ymax,n)
 seme=15; rand('seed',seme);
    [velika,mala,pmax] = elipsa(xmax,ymax);
    A = vrni_tocke(n,pmax);
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
    
    p = n_pres_m/n_pres_v 
    
    o_velika = dolzina(velika(:,1),velika(:,2));
    
    o_mala = dolzina(mala(:,1),mala(:,2));
    
    o = o_mala/o_velika
    
    
end