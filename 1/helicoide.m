clear all;
close all;
clf;

t=[0:.01:20];
plot3(cos(t),t,cos(t-pi/2),'r');
title('Helicoide');
xlabel('x'), ylabel('y'), zlabel('z');
equal axis
grid on
