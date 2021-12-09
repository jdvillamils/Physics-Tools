clear all;
close all;
clf;
c=0.1;
c2=0.2;
c3=0.3;
t=0:.1:10;
g=9.8;
m=10;
veld=(m*g/c)-(m*g/c)*exp(-c*t/m);
veld2=(m*g/c2)-(m*g/c)*exp(-c*t/m);
veld3=(m*g/c3)-(m*g/c)*exp(-c*t/m);
plot(t,veld,'r*',t,veld2,'k*',t,veld3,'y*')