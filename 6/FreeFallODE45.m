clear all;
close all;
clf;
%CFree Fall using Ode45
x0=[1,0]   %CI
t=0:0.05:70;  
g=9.8; 
m=1;
c=0.1;
vt=m*g/c;

f=@(t,x)[x(2); -g*(1+(x(2))/vt)];
[t,x]=ode45(f,[t],x0);

subplot(2,1,1)
plot(t,x(:,1),'*r')
grid on;
xlabel('Time'), ylabel('distance');
title('Free Fall distance with RK45')

subplot(2,1,2)
plot(t,x(:,2),'*b')
grid on;
xlabel('Time'), ylabel('Velocity');
title('Free Fall Velocity with RK45')
