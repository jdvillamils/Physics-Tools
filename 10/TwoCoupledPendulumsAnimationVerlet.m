clear all;
close all;
clf;

%Two Coupled pendulums  

%Time parameters
tau=0.05;
tfinal=20;
t=0:tau:tfinal;
N=length(t);

x1=zeros(1,N+1);
x2=zeros(1,N+1);
v1=zeros(1,N+1);
v2=zeros(1,N+1);
a1=zeros(1,N+1);
a2=zeros(1,N+1);

%I C
x1(1)=0.24;
x2(1)=0.12;
x1(2)=x1(1)+tau*v1(1);
x2(2)=x2(1)+tau*v2(1);
v1(1)=0.32;
v2(1)=0.22;
a1(1)=0;
a2(1)=0;

g=9.8;
l=1;
k1=0.5;
k2=0.2;
m=1;


%Using the difference coupled pendulums equations

for i=3:N
  x1(i)=2*x1(i-1)-x1(i-2)+tau*tau*(-1*g/l)*sin(x1(i-1))+(k1/m)*(x2(i-1)-x1(i-1));  %discrete form of diff eq for the first mass
  x2(i)=2*x2(i-1)-x2(i-2)+tau*tau*(-1*g/l)*sin(x2(i-1))+(k2/m)*(x2(i-1)-x1(i-1));  %second mass
  v1(i-1)=(x1(i)-x1(i-2))/(2*tau); %discrete form for velocity
  v2(i-1)=(x2(i)-x2(i-2))/(2*tau);
  a1(i-1)=(v1(i)-v1(i-2))/(2*tau);  %acceleration
  a2(i-1)=(v2(i)-v2(i-2))/(2*tau);
 end 
 %Final values for velocity and acceleration
v1(N)=(x1(N)-x1(N-1))/(2*tau);
v2(N)=(x2(N)-x2(N-1))/(2*tau);
a1(N)=(v1(N)-v1(N-1))/(2*tau);
a2(N)=(v2(N)-v2(N-1))/(2*tau);  


%Animation 

ct=1;
for j=1:length(x1)
  position1=x1(j);
  position2=x2(j);
  %Pivot fices points
  %First pendulum
  x01=0;
  y01=0;
  %second
  x02=4;
  y02=0;
  %moving points
 %First 
 x11=l*cos(position1-(pi/2));
 y11=-l*sin(position1+(pi/2));
 %Second
 x22=l*cos(position2-(pi/2));
 y22=-l*sin(position2+(pi/2));

 figure(6)
 %plotting coordinates first pendulum
 plot([x01,x11],[y01,y11],'linewidth',5) 
 hold on
 %coupling line
 plot([x11,x22+4],[y11,y22],'linewidth',5)
 hold on
 %Mass first pendulum
 plot(x11,y11,'marker','o','markersize',40,'MarkerFaceColor','red','MarkerEdgeColor','black')
 %Top line
 plot([-3,5],[0,0],'b','linewidth',4)
  %Second pendullum
 plot([x02,x22+4],[y02,y22],'linewidth',5)
 hold on
 %
 plot(x22+4,y22,'marker','o','markersize',40,'MarkerFaceColor','red','MarkerEdgeColor','black')
 hold off
 axis([-2,6,-1.5,0.5])
 grid on
 pause(0.1)
 ct=ct+1;
end
