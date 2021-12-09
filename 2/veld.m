clear all;
close all;
clf;
c=0.1;
t=0:.1:30;
g=9.8;
m=10;
veld=(m*g/c)-(m*g/c)*exp(-c*t/m);
plot(t,veld,'r*')