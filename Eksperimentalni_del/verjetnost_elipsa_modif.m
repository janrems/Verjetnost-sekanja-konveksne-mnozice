function [p,o] = verjetnost_elipsa_modif (xmax,ymax,n)

    [velika,mala,pmax, a, b, am, bm] = elipsa_modif(xmax,ymax);
    A = vrni_tocke_modif(n,pmax,a, b);
%     for i = 1:n
%         
%         plot(A(i,[1 3]),A(i,[2 4]))
%         hold on
%     end
%     plot(velika(:,1), velika(:,2))
%     hold on
%     plot(mala(:,1), mala(:,2))
% 
%     hold off
% % %     axis([-3 3 -3 3])

    
    [n_pres_m] = presecisca_modif(A, mala);
    
    p = n_pres_m/length(A(:,1))
    
    o_velika = dolzina(velika(:,1),velika(:,2));
    
    o_mala = dolzina(mala(:,1),mala(:,2));
    
    o = o_mala/o_velika
    
    
end