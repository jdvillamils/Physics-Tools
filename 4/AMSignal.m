clear all;
close all;
clf;

A=10;
B=10;

t=0:.01:20;
D=pi/2;

w0=51;
w1=50;

subplot(3,1,1)
x1=A*cos(w0*t+D);
plot(t,x1,'g','linewidth', .7);
grid on
xlabel('t'), ylabel('y');
title('Acos(w0t+D)');

subplot(3,1,2)
y1=B*cos(w1*t+D);
plot(t,y1,'b','linewidth', .7)
grid on
xlabel('t'), ylabel('y');
title('Bcos(w1t+D)');

subplot(3,1,3)
s1=x1+y1;
plot(t,s1,'k','linewidth', .7)
grid on
xlabel('t'), ylabel('x+y');
title('Acos(w0t+D)+Bcos(w1t+D)');