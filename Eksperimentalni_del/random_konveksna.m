function r = random_konveksna (k)
    for j = 50 : 60
        for i = 1:k
            a = rand(j,1) -0.5;
            b = rand(j,1) -0.5;
            
            h = convhull(a,b);
            plot(a(h),b(h))
            figure()
            
        
        end 
    end 
    
end
    
% morda še glajenje

