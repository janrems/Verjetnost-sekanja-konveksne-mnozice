function l = dolzin (a,b)
n = length(a); %morda že kje
l = sum(sqrt((a(2:n) - a(1:(n-1))).^2 + (b(2:n) - b(1:(n-1))).^2));

