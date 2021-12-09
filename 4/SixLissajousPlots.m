clear all;
close all;
clf;

A=5;
B=5;

t=0:.001:5;
D= -pi/666;

subplot(3,2,1)
w0=50;
w1=65;
x1=A*cos(w0*t);
y1=B*cos(w1*t-D);
plot(x1,y1)
grid on
xlabel('x'), ylabel('y');
title('w1/w2=50/65');

subplot(3,2,2)
w0=50;
w1=100;
x2=A*cos(w0*t);
y2=B*cos(w1*t-D);
plot(x2,y2)
grid on
xlabel('x'), ylabel('y');
title('w1/w2=50/100');

subplot(3,2,3)
w0=50;
w1=70;
x3=A*cos(w0*t);
y3=B*cos(w1*t-D);
plot(x3,y3)
grid on
xlabel('x'), ylabel('y');
title('w1/w2=50/70');

subplot(3,2,4)
w0=20;
w1=70;
x4=A*cos(w0*t);
y4=B*cos(w1*t-D);
plot(x4,y4)
grid on
xlabel('x'), ylabel('y');
title('w1/w2=20/70');

subplot(3,2,5)
w0=60;
w1=100;
x5=A*cos(w0*t);
y5=B*cos(w1*t-D);
plot(x5,y5)
grid on
xlabel('x'), ylabel('y');
title('w1/w2=60/100');

subplot(3,2,6)
w0=50;
w1=95;
x6=A*cos(w0*t);
y6=B*cos(w1*t-D);
plot(x6,y6)
grid on
xlabel('x'), ylabel('y');
title('w1/w2=50/95');

