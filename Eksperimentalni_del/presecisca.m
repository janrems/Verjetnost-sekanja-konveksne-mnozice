function [n_pres, A_nova] = presecisca (A,velika)
    n_pres = 0;
    dolzina = length(A(:,1));
    A_nova = A;
    izbris =[];

    
    for i = 1:dolzina
        n = (length(intersections(A(i,[1 3]),A(i,[2 4]),velika(:,1),velika(:,2))))/2;
        n_pres = n_pres + n;
        
        if n == 0
            izbris = [izbris, i];
        end           
        
    end
    A_nova(izbris,:) = [];
end
    




