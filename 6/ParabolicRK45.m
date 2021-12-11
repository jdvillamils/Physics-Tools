clear all;
close all;
clf;
%Parabolic Shot using Ode45
theta=pi/6;
g=9.8; 
v0=20;
x0=[0,v0*cos(theta),0,v0*sin(theta)]  %CI
t=0:0.05:2*v0*sin(theta)/g;  
m=1;
c=0.1;
vt=m*g/c;

f=@(t,x)[x(2); -g*((x(2))/vt); x(4); -g*(1+(x(4))/vt)];
[t,x]=ode45(f,[t],x0);

plot(x(:,1),x(:,3),'*r')
grid on
xlabel('Distance'), ylabel('Height');
title('Parabolic Shot in 2D using Ode45')