function [n] = presecisca_vec(A,velika,pmax)
    l = length(A(:,1));
    x1 = A(:,1);
    x2 = A(:,3);
    y1 = A(:,2);
    y2 = A(:,4);
    velikax = velika(:,1);
    velikay = velika(:,2); 
    x = repmat([-pmax pmax],1, l)';
    y=[y1; y2];
    y=y(:); 
    [pres_x,pres_y ] = polyxpoly(x, y, velikax,velikay);
    n = length(pres_x);
%     plot(x,y)
%     hold on
%     plot(velikax,velikay)
%     hold off
    
end