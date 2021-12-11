clear all;
close all;
clf; 
%HO with ODE45
w=2;  %freq

x0=[0,10];  %Initial conditions
t=0:0.05:200;    %time interval

f=@(t,x)[x(2);-w*w*x(1)];
[t,x]=ode45(f,[t],x0);  %[t]:derivation parameter

figure(1);
plot(t,x(:,1))
grid on
xlabel('time');
ylabel('Displacement');
title('HO with ODE45');

figure(2)
plot(t,x(:,2))
grid on
xlabel('time');
ylabel('velocity');
title('HO with ODE45');

figure(3);
plot(x(:,1),x(:,2))
grid on
xlabel('distance');
ylabel('velocity');
title('HO with ODE45');