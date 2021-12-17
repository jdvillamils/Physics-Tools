close all;
clear all;
clf;

%Animation of Double Pendulum
m1=2;
 m2=1;
 l1=2;
 l2=2;
 g=9.8;

options=odeset('RelTol',1.0e-6);
x0=[1.57;0;2.1;0];
t=0:0.01:10;
[t,y]=ode45(@doublepend,t,x0,options);
x1=[l1*sin(y(:,1)), l1*sin(y(:,1))+l2*sin(y(:,3))];
y1=[-l1*cos(y(:,1)),-l1*cos(y(:,1))-l2*cos(y(:,3))];

tic;
for j=1:length(t)
  figure(8);
  plot([0,x1(j,1);x1(j,1),x1(j,2)],[0,y1(j,1);y1(j,1),y1(j,2)],'.-','markersize',20,'linewidth',2);
  axis equal;
  axis([-4 4 -4 4]);
  drawnow;
end
toc;
