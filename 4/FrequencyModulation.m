clear all;
close all;
clf;

A=5;
B=5;

t=0:.001:5;
D=pi/2;

w0=50;
w1=65;

subplot(3,1,1)
x1=A*cos(w0*t);
plot(t,x1);
grid on
xlabel('t'), ylabel('y');
title('Acos(w0t)');

subplot(3,1,2)
y1=B*cos(w1*t-D);
plot(t,y1)
grid on
xlabel('t'), ylabel('y');
title('Bcos(w1t-D)');

subplot(3,1,3)
s=A*cos(w0*t)+B*cos(w1*t-D);
plot(t,s)
grid on
xlabel('t'), ylabel('x+y');
title('Acos(w0t)+Bcos(w1t-D)');