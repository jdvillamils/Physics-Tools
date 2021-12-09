clear all;
close all;
clf;

A=5;
B=5;
w0=50;
w1=65;
t=0:.001:5;
D= -pi/666;
x=A*cos(w0*t);
y=B*cos(w1*t-D);
plot(x,y,'b*')
text(0,0.2,'Sup');
grion on
