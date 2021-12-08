clear all;
close all;
clf;
x1=pi*(-1:0.001:1);
y1=x1.*sin(x1);
y2=sin(x1);
y3=cos(x1);
plot(x1,y1,'k*',x1,y2,'b*',x1,y3,'r*');
grid on
xlabel('x'), ylabel('f(x)');
title('OBOKMASIVO');
legend('xsin(x)','sin(x)','cos(x)');
