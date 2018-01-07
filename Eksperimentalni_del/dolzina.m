function l = dolzina (a,b)
%Funkcija za argumenta dobi par vektorjev "a", "b", ki dolo?ata krivuljo,
%in vrne njeno dolžino "l"
n = length(a); 
l = sum(sqrt((a(2:n) - a(1:(n-1))).^2 + (b(2:n) - b(1:(n-1))).^2));
 

