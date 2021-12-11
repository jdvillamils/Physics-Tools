clear all;
close all;
clf; 
%Dumped Oscillator with rk2
w=2; 
N=1000;
tfinal=70;
b=0.2;
m=1;
t=zeros(1,N+1);
x=zeros(1,N+1);
v=zeros(1,N+1);
tau=tfinal/N;

t(1)=0;
x(1)=0;
v(1)=10;

for n=1:N
  t(n+1)=n*tau;
  xhalf=x(n)+v(n)*tau*.5;
  vhalf=v(n)-(w*w*x(n)+(b/m)*v(n))*tau*.5;
  x(n+1)=x(n)+vhalf*tau; 
  v(n+1)=v(n)-(w*w*xhalf+(b/m)*vhalf)*tau;
 end
figure(1);
plot(t,x)
grid on
xlabel('time');
ylabel('Displacement');
title('HO with RK2');

figure(2)
plot(t,v)
grid on
xlabel('time');
ylabel('Velocity');
title('HO With RK2');

figure(3);
plot(x,v)
grid on
xlabel('distance');
ylabel('velocity');
title('HO with RK2');