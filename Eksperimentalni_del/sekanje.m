function [l] = sekanje(A,B,poly)
    n = length(poly(:,1));
    if n == 1
        l = 0;
    end
    k = fix(n/2)+1;
    C = poly(1,:);
    D = poly(k,:);
    if sekanje_premic([A(1), B(1), C(1), D(1)],[A(2), B(2), C(2), D(2)])== 1
        l = 1;
    elseif point_to_line_distance([C(1) C(2) 0],[A(1) B(1) 0],[A(2), B(2) 0]) < point_to_line_distance([D(1) D(2) 0],[A(1) B(1) 0],[A(2), B(2) 0])
        l = sekanje(A,B,poly(k:n,:));
    else
        l = sekanje(A,B,poly(1:k,:));
    end
    