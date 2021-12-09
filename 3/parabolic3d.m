clear all;
close all;
clf;
v0x=10;
v0y=20;
v0z=35;
m=1;
g=9.8;
c1=0.4;
c2=0.9;
c3=0.2;
u=0.8;
us=0.1;
vtx1=m*g/c1;
vty1=m*g/c1;
vtz1=m*g/c1;
vtx2=m*g/c2;
vty2=m*g/c2;
vtz2=m*g/c2;
vtx3=m*g/c3;
vty3=m*g/c3;
vtz3=m*g/c3;
t=0:.001:10;
x1=(v0x*vtx1*u)*(1-exp(-g*t/vtx1))/(g);
y1=(v0y*vty1*u)*(1-exp(-g*t/vty1))/(g);
z1=((vtz1)/(g))*(v0z*us+vtz1)*(1-exp(-g*t/vtz1))-vtz1*t;

x2=(v0x*vtx2*u)*(1-exp(-g*t/vtx2))/(g);
y2=(v0y*vty2*u)*(1-exp(-g*t/vty2))/(g);
z2=((vtz2)/(g))*(v0z*us+vtz2)*(1-exp(-g*t/vtz2))-vtz2*t;

x3=(v0x*vtx3*u)*(1-exp(-g*t/vtx3))/(g);
y3=(v0y*vty3*u)*(1-exp(-g*t/vty3))/(g);
z3=((vtz3)/(g))*(v0z*us+vtz3)*(1-exp(-g*t/vtz3))-vtz3*t;
plot3(x1,y1,z1,'k*',x2,y2,z2,'b*',x3,y3,z3,'g*')
view(45,15)
grid on;
xlabel('x'), ylabel('y'), zlabel('z')
title('3D parabolic shot')
legend('c=0.4','c=0.9', 'c=0.2');
axis([0 6 0 13 0 0.6])
EL=15
for n=1:100
  AZ=30+n/100*360;
  view(AZ,EL);
  pause(.08)
end

