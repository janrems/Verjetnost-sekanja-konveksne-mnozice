function [a,b,h] = random_konveksna (j)
    a = rand(j,1) -0.5;
    b = rand(j,1) -0.5;
    h = convhull(a,b); 
            
end

