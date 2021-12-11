clear all;
close all;
clf;

g=9.8;
m=1;
c=0.1;
N=300;
theta=pi/6;
v0=20;
t=zeros(1,N+1);
x=zeros(1,N+1);
z=zeros(1,N+1);
vx=zeros(1,N+1);
vz=zeros(1,N+1);
x(1)=0;
z(1)=0;
vx(1)=v0*cos(theta);
vz(1)=v0*sin(theta);

vt=m*g/c;
tfinal=2*v0*sin(theta)/g;
tau=tfinal/N;

for n=1:N
  t(n+1)=n*tau;
  vxhalf=vx(n)-((g/vt)*vx(n))*tau*.5;
  vzhalf=vz(n)-(g*(1+(vz(n)/vt)))*tau*.5;
  x(n+1)=x(n)+vxhalf*tau; 
  z(n+1)=z(n)+vzhalf*tau;
  vx(n+1)=vx(n)-(g/vt)*vxhalf*tau;
  vz(n+1)=vz(n)-(g*(1+(vzhalf/vt)))*tau;
end

plot(x,z,'-*r')
grid on
xlabel('Distance'), ylabel('Height');
title('Parabolic shot in 2D using Runge-Kutta method')
 