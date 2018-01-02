function [A] = vrni_tocke_modif(n,pmax, a, b)
    B = tocke_v_elipsi(n,a, b);
    y1 = -pmax .*B(:,1) + B(:,2);
    y2 = pmax .*B(:,1) + B(:,2);
    x1 = -pmax * ones(n,1);
    x2 = pmax * ones(n,1);
    A = [x1 y1 x2 y2];
%     for i = 1:n
%         
%     plot(A(i,1:2),A(i,3:4))
%     hold on
%     end
%     hold off
end
        