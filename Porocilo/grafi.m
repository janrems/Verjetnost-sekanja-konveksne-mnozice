t = 10:30:1000;
% for i = 1:length(A(:,1))
%     plot(t,A(i,:))
%     figure()
% end

povprecna_napaka = mean(A,1);
plot(t,povprecna_napaka)
xlabel('število premic')
ylabel('absolutni odmik')