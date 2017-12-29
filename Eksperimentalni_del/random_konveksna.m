function r = random_konveksna (k)
    for j = 20 : 30
        for i = 1:k
            a = 0.6.* rand(j,1) + 0.3;
            b = 0.6.* rand(j,1) + 0.3;
            h = convhull(a,b);
            plot(a(h),b(h))
            hold on
            plot(t,z)
            hold off
            figure()
        
        end 
    end 
    
end
    
% morda še glajenje

