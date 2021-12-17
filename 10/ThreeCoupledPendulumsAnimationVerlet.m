clear all;
close all;
clf;

%Three coupled pendulums  


tau=0.05;
tfinal=20;
t=0:tau:tfinal;
N=length(t);

x1=zeros(1,N+1);
x2=zeros(1,N+1);
x3=zeros(1,N+1);
v1=zeros(1,N+1);
v2=zeros(1,N+1);
v3=zeros(1,N+1);
a1=zeros(1,N+1);
a2=zeros(1,N+1);
a3=zeros(1,N+1);

%
x1(1)=0.24;
x2(1)=0.12;
x3(1)=0.16;
x1(2)=x1(1)+tau*v1(1);
x2(2)=x2(1)+tau*v2(1);
x3(2)=x3(1)+tau*v3(1);
v1(1)=0.32;
v2(1)=0.22;
v3(1)=0.11;
a1(1)=0;
a2(1)=0;
a3(1)=0;

%
g=9.8;
l=1;
k=0.5;
m=1;


for i=3:N
  x1(i)=2*x1(i-1)-x1(i-2)+tau*tau*(((-g/l)*x1(i-1))-((k/m)*(x1(i-1)-x2(i-1))));
  x2(i)=2*x2(i-1)-x2(i-2)+tau*tau*(((-g/l)*x2(i-1))-((k/m)*(x2(i-1)-x3(i-1)))-((k/m)*(x2(i-1)-x1(i-1))));
  x3(i)=2*x3(i-1)-x3(i-2)+tau*tau*(((-g/l)*x3(i-1))-((k/m)*(x3(i-1)-x2(i-1))));
  v1(i-1)=(x1(i)-x1(i-2))/(2*tau);
  v2(i-1)=(x2(i)-x2(i-2))/(2*tau);
  v3(i-1)=(x3(i)-x3(i-2))/(2*tau);
  a1(i-1)=(v1(i)-v1(i-2))/(2*tau); 
  a2(i-1)=(v2(i)-v2(i-2))/(2*tau);
  a2(i-1)=(v3(i)-v3(i-2))/(2*tau);
end


v1(N)=(x1(N)-x1(N-1))/(2*tau);
v2(N)=(x2(N)-x2(N-1))/(2*tau);
v3(N)=(x3(N)-x3(N-1))/(2*tau);
a1(N)=(v1(N)-v1(N-1))/(2*tau);
a2(N)=(v2(N)-v2(N-1))/(2*tau); 
a3(N)=(v3(N)-v3(N-1))/(2*tau);



ct=1;
for j=1:length(x1)
  position1=x1(j);
  position2=x2(j);
  position3=x3(j);

  x01=0;
  y01=0;
  %
  x02=4;
  y02=0; 
  %
  x03=8;
  y03=0;
   %
 %
 x11=l*cos(position1-(pi/2));
 y11=-l*sin(position1+(pi/2));
 %
 x22=l*cos(position2-(pi/2));
 y22=-l*sin(position2+(pi/2));
 %
 x33=l*cos(position3-(pi/2));
 y33=-l*sin(position3+(pi/2));
 
 figure(6)
 %plotting
 plot([x01,x11],[y01,y11],'linewidth',5) %linea desde el punto pibote del primero pendulo hasta el punto movil (separados en coordenadas)
 hold on
 %plotting
 plot([x02,x22+4],[y02,y22],'linewidth',5)
 hold on
 %plotting
 plot([x03,x33+8],[y03,y33],'linewidth',5)
 hold on
 %
 plot([x11,x22+4],[y11,y22],'linewidth',5) %igualmente linea desde el punto fijo al punto movil. 
 hold on
  %
 plot([x22+4,x33+8],[y11,y22],'linewidth',5) 
 hold on
 %
 plot([-3,10],[0,0],'b','linewidth',4)
 %
 plot(x11,y11,'marker','o','markersize',40,'MarkerFaceColor','red','MarkerEdgeColor','black')
 %
 plot(x22+4,y22,'marker','o','markersize',40,'MarkerFaceColor','red','MarkerEdgeColor','black')
 %
 plot(x33+8,y33,'marker','o','markersize',40,'MarkerFaceColor','red','MarkerEdgeColor','black')
 hold off
 axis([-2.5,10,-2,0.5]) %
 grid on
 pause(0.1)
 ct=ct+1;
end