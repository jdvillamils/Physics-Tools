clear all;
close all;
clf; 
%Forced HO with ode45
w=2;  

x0=[0,10];  %cond In
t=0:0.05:100;    %tf
b=0.2;
m=1;
wd=5;
A=8;
f=@(t,x)[x(2);-w*w*x(1)-(b/m)*x(2)-A*sin(wd*t)];
[t,x]=ode45(f,[t],x0);

figure(1);
plot(t,x(:,1))
grid on
xlabel('time');
ylabel('Displacement');
title('Forced HO with ODE45');

figure(2)
plot(t,x(:,2))
grid on
xlabel('time');
ylabel('velocity');
title('Forced HO ODE45');


figure(3);
plot(x(:,1),x(:,2))
grid on
xlabel('distance');
ylabel('velocity');
title('Forced HO con ODE45');