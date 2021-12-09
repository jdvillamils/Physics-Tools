clear all;
close all;
clf;

A=5;
B=7;
w0=50;
t=0:.01:.5;
D= pi;
x=A*cos(w0*t);
y=B*cos(w0*t-D);

plot(t,x,'b-',t,y,'r-')