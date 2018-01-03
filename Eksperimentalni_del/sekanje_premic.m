function [intrsct] = sekanje_premic(x,y)

% x=[x1 x2 x3 x4];
% y=[y1 y2 y3 y4];
dt1=det([1,1,1;x(1),x(2),x(3);y(1),y(2),y(3)])*det([1,1,1;x(1),x(2),x(4);y(1),y(2),y(4)]);
dt2=det([1,1,1;x(1),x(3),x(4);y(1),y(3),y(4)])*det([1,1,1;x(2),x(3),x(4);y(2),y(3),y(4)]);

if(dt1<=0 & dt2<=0)
  intrsct=1;         %If lines intesect
else
 intrsct=0;
end

% plot(x(1:2),x(3:4))
% hold on
% plot(y(1:2),y(3:4))
% hold off