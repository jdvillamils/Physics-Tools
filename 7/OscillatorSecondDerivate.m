clear all;
close all; 
clf;

N=1000;

x=zeros(1,N+1);
v=zeros(1,N+1);
tfinal=100;
tau=tfinal/N;
k=0.5;
m=1;
t(1)=0;    %condiciones inciales
x(1)=10;
x(2)=6;

for i=3:N       %iteracion para calcular la segunda derivada con metoditos
  t(i+1)=i*tau;
  x(i)=2*x(i-1)-x(i-2)-(k/m)*x(i-1)*tau*tau;  %reescritura de la segunda derivada de la ecuacion de oscilador amortiguado... ver foto
  v(i)=(x(i+1)-x(i-1))/2*tau;  %el dos viene porque se involucra informacion de dos intervalos de tiempo
endfor
subplot(2,1,1)
plot(t,x,'--*r')
grid on
xlabel('t') ;
ylabel('posicion');

subplot(2,1,2)
plot(t,v,'--*b')
grid on;
xlabel('t') ;
ylabel('velocidad');

