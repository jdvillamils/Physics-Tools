clear all;
close all;
clf;

A=5;
B=5;
w0=50;
t=0:.001:5;
D= -pi/2;
x=A*cos(w0*t);
y=B*cos(w0*t-D);
plot(x,y,'b*')
axis equal