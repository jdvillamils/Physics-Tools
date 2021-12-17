clear all;
close all; 
clf;
%Animation of simple pendulum
N=1000;

x=zeros(1,N+1);
v=zeros(1,N+1);
tfinal=100;
tau=tfinal/N;
k=0.5;
m=1;
t(1)=0;    %I C
x(1)=0.2;
x(2)=0.1;

for i=3:N       %iteration for second derivate
  t(i+1)=i*tau;
  x(i)=2*x(i-1)-x(i-2)-(k/m)*x(i-1)*tau*tau;  %re-write of sec ond derivate
  v(i)=(x(i+1)-x(i-1))/2*tau;  %Two time intervals
end

l=1;
ct=1;
for i=1:length(x)  %movement cicle
  position=x(i);   %Angular displacement
  x0=0;  %I C
  y0=0;
  
  x1=l*cos(position-(pi/2));  %pi/2 for keeping the movement in the down side
  y1=-l*sin(position+(pi/2));
  figure(6)
  %
  plot([x0,x1],[y0,y1],'linewidth',5)   %line from (x0,y0) to (x1,y1)
  hold on
  plot(x1,y1,'marker','*','markersize',40)  %Point that acts as the mass
  %plot([-2,2],[0,0],'linewidth',4,'b')
  %
  hold off
  axis([-2,2,-1.5,0.5])  %Fix the box of the program
  grid on 
  pause(0.1)  %step pause time between each picture
  ct=ct+1;  %counter
  end
