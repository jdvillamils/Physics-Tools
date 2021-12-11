clear all;
close all;
clf; 
%Dumped Oscillator with ode45
w=2;  %freq

x0=[0,10];  %condin
t=0:0.05:100;    %tf
b=0.2;
m=1;
f=@(t,x)[x(2);-w*w*x(1)-(b/m)*x(2)];
[t,x]=ode45(f,[t],x0);

figure(1);
plot(t,x(:,1))
grid on
xlabel('time');
ylabel('Displacement');
title('Dumped Oscillator with ODE45');

figure(2)
plot(t,x(:,2))
grid on
xlabel('time');
ylabel('velocity');
title('Dumped Oscillator ODE45');


figure(3);
plot(x(:,1),x(:,2))
grid on
xlabel('distance');
ylabel('velocity');
title('Dumped Oscillator with ODE45');
axis equal