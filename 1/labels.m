clear all;
close all;
clf;

x=-pi:.1:pi;
plot(x,sin(x),'b-',x,sin(4*x),'k--');
title('graph of y=cos(4x)');
legend('sin(x)','sin(4x)');

