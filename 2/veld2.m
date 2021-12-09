clear all;
close all;
clf;
c=0.5;
m=1;
g=9.8;
t=0:.1:20;
c2=0.2;
c3=0.3;
v=sqrt(m*g/c)*tanh(sqrt(c*g/m)*t);
v2=sqrt(m*g/c2)*tanh(sqrt(c2*g/m)*t);
v3=sqrt(m*g/c3)*tanh(sqrt(c3*g/m)*t);
plot(t,v,'r*',t,v2,'b*',t,v3,'k*')