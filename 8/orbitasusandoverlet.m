clear all;
close all;
clf;

%Velet Method for Obrtis Equation

%Time parameters
tau=0.1;  %time steps
tfinal=1;  %final time
t=0:tau:tfinal;  %total variation of time
N=length(t); 


x=zeros(1,N);
y=zeros(1,N);
vx=zeros(1,N);
vy=zeros(1,N);
R=zeros(1,N);
%Initial conditions (2D) 

x(1)=1;
y(1)=0;
vx(1)=0;
vy(1)=5;
%same as dumped oscillator:
x(2)=x(1)+vx(1)*tau;
y(2)=y(1)+vy(1)*tau;



for i=3:N
  R(i-1)=sqrt((x(i-1)^2)+(y(i-1)^2));  %start orbit radius
  x(i)=(2*x(i-1))-(x(i-2))-(tau*tau*4*pi*pi*(x(i-1)/(R(i-1)^3)));  %Y coord discretization
  y(i)=(2*y(i-1))-(y(i-2))-(tau*tau*4*pi*pi*(y(i-1)/(R(i-1)^3)));  %same discret for second derivate
  vx(i-1)=(x(i)-x(i-2))/(2*tau); 
  vy(i-1)=(y(i)-y(i-2))/(2*tau);
end


figure(1)
plot(t,x,'-k')
grid on
xlabel('time')
ylabel('x')
title('XvsT')

  

