clear all;
close all; 
clf;

N=1000;

x=zeros(1,N+1);
v=zeros(1,N+1);
E=zeros(1,N+1);
tfinal=100;
tau=tfinal/N;
k=0.5;
b=0.1;
m=1;
t(4)=0;    %condiciones inciales
x(1)=10;
v(2)=2;
x(2)=x(1)+v(2)*tau;

for i=3:N       %iteracion para calcular la segunda derivada con metoditos
  t(i+1)=i*tau;
  x(i)=2*x(i-1)-x(i-2)-(k/m)*x(i-1)*tau*tau-(b/m)*v(i-1)*tau*tau;  %reescritura de la segunda derivada de la ecuacion de oscilador amortiguado... ver foto
  v(i)=(x(i)-x(i-1))/(2*tau);  %el dos viene porque se involucra informacion de dos intervalos de tiempo
  E(i-2)=.5*m*v(i-1)^2+.5*k*x(i-1)^2;
  endfor

subplot(3,1,1)
plot(t,x,'--*r')
grid on
xlabel('t') ;
ylabel('posicion');

subplot(3,1,2)
plot(t,v,'--*b')
grid on;
xlabel('t') ;
ylabel('velocidad');


subplot(3,1,3)
plot(t,E,'--*p')
grid on;
xlabel('t') ;
ylabel('energia');
