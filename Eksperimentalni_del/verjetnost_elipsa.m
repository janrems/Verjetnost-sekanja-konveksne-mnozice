function [p,o] = verjetnost_elipsa (xmax,ymax,n)
<<<<<<< HEAD
 seme=15; rand('seed',seme);
=======
 seme=170; rand('seed',seme);
>>>>>>> 4a9e513e2a8cfceb5fb4a51e20f60c15b22e56b9
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
<<<<<<< HEAD
    
=======
% %     
>>>>>>> 4a9e513e2a8cfceb5fb4a51e20f60c15b22e56b9
    [n_pres_v, A_nova] = presecisca(A,velika);
     
    [n_pres_m] = presecisca_majhna(A_nova,mala);
    
    p = n_pres_m/n_pres_v 
    
    o_velika = dolzina(velika(:,1),velika(:,2));
    
    o_mala = dolzina(mala(:,1),mala(:,2));
    
    o = o_mala/o_velika
    
    
end