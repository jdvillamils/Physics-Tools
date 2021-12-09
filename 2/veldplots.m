clear all;
close all;
clf;
c=0.1;
m=0.2;
g=9.8;
t=0:.1:20;
b=0.5;
c2=0.6;
c3=0.9;
v=((-sqrt(-4*b*g*m-c^(2)))*tan((t*sqrt(-4*b*g*m-c^(2))/2*m))-c)/2*b;
v2=((-sqrt(-4*b*g*m-c2^(2)))*tan((t*sqrt(-4*b*g*m-c2^(2))/2*m))-c)/2*b;
v3=((-sqrt(-4*b*g*m-c3^(2)))*tan((t*sqrt(-4*b*g*m-c3^(2))/2*m))-c)/2*b;
plot(t,v,'k*',t,v2,'y*',t,v3,'b*')