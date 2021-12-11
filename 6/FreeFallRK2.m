clear all;
close all;
clf;
%Free Fall with RK2
N=200;
tfinal=70;
t=zeros(1,N+1);
x=zeros(1,N+1);
v=zeros(1,N+1);
tau=tfinal/N;

t(1)=0;
x(1)=1;
v(1)=0;
g=9.8;  
m=1;
c=0.1;
vt=m*g/c;

for n=1:N
  t(n+1)=n*tau;
  xhalf=x(n)+v(n)*tau*.5;
  vhalf=v(n)-g*(1+(v(n))/vt)*tau*.5;
  x(n+1)=x(n)+vhalf*tau; 
  v(n+1)=v(n)-g*(1+(vhalf)/vt)*tau;
 end
 subplot(2,1,1)
plot(t,x,'*r')
grid on;
xlabel('Time'), ylabel('distance');
title('Free Fall Distance Runge-Kutta')

subplot(2,1,2)
plot(t,v,'*b')
grid on;
xlabel('Time'), ylabel('Velocity');
title('Free Fall Velocity with Runge-Kutta')