function [p,o] = verjetnost_elipsa_hitra (xmax,ymax,n)

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
% 
%     hold off
    
    n = presecisca_vec(A,velika,pmax);
    
    
    m = presecisca_vec(A,mala,pmax);
    
    p = m/n;
    
    o_velika = dolzina(velika(:,1),velika(:,2));
    
    o_mala = dolzina(mala(:,1),mala(:,2));
    
    o = o_mala/o_velika
    
end