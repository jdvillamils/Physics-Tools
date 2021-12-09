clear all;
close all;
clf;
v0x=10;
v0y=20;
v0z=35;
m=1;
g=9.8;
c1=0.4;
u=0.8;
us=0.1;
vtx1=m*g/c1;
vty1=m*g/c1;
vtz1=m*g/c1;
t=0:.001:10;
x1=(v0x*vtx1*u)*(1-exp(-g*t/vtx1))/(g);
y1=(v0y*vty1*u)*(1-exp(-g*t/vty1))/(g);
z1=((vtz1)/(g))*(v0z*us+vtz1)*(1-exp(-g*t/vtz1))-vtz1*t;

%no air

x1i=(v0x*u)*t;
y1i=(v0y*t*u);
z1i=(v0z*us*t)-(g/2)*t.^2;

plot3(x1,y1,z1,'k*',x1i,y1i,z1i,'b*');
view(45,15)
grid on;
xlabel('x'), ylabel('y'), zlabel('z')
title('3D parabolic shot. Comparison no air, with air')
legend('air (c=0.4)','no air');
axis([0 6 0 13 0 0.8])
EL=15
for n=1:100
  AZ=30+n/100*360;
  view(AZ,EL);
  pause(.08)
end

