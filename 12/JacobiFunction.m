close all;
clear all;
clf;

%Elliptic Jacobi Function
m2=0.7;  %elliptic level
u=-5:0.01:5;  %range
[Sn,Cn,Dn]=ellipj(u,m2); %Jacobi Function
figure(2);
clf;
plot(u,Sn,u,Cn,u,Dn);
legend('SN','CN','DN','location','best')
grid on
title('Jacobi Elliptic Function sn,cn,dn')

[m,u]=meshgrid(0:0.1:1,-5:0.1:5);   %grid
s=ellipj(u,m);
figure(3);
clf;
surf(u,m,s)
xlabel('u')
ylabel('m')
zlabel('sn')
title('surface plot of jacobi function sn')
