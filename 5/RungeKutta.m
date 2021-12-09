clear all;
close all;
clf;

w=1;
N=200;
tfinal=2*pi/w*10;
t=zeros(1,N+1);
x=zeros(1,N+1);
v=zeros(1,N+1);
a=zeros(1,N+1);
tau=tfinal/N;
t(1)=0;
x(1)=1;
v(1)=0;
%Runge-Kutta in N steps
for n=1:N
  t(n+1)=n*tau;
  xhalf=x(n)+v(n)*tau*.5; %x1/2=x(n)+(dx/dt)*(dt/2);
  vhalf=v(n)-w^2*x(n)*tau*.5; %v1/2=v(n)+(dv/dt)*(dt/2);  
  x(n+1)=x(n)+vhalf*tau;   %x(n+1)=x(n)+(dx/dt)half*dt;
  v(n+1)=v(n)-w^2*xhalf*tau; %v(n+1)=v(n)+(dv/dt)half*dt;
  a(n+1)=-w^2*x(n+1);
end

subplot(3,1,1)
plot(t,x,'*r',t,cos(w*t),'*b')
grid on;

subplot(3,1,2)
plot(t,v,'*r',t,-sin(w*t)*w,'*b')
grid on;

subplot(3,1,3)
plot(t,a,'*r',t,-w^2*cos(w*t),'*b')
grid on;
