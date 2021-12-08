clear all;
close all;
clf;

x=linspace(1,10);
y=4*exp(2*x);
subplot(2,1,1);
plot(x,y,'k','linewidth',2);
title('y=4exp(2x) with linear axes');
xlabel('x'), ylabel('y');
subplot(2,1,2);
semilogy(x,y,'k','linewidth',2);
title('y=4 exp(2x) con semilog');
xlabel('x'), ylabel('y');

