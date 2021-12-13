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
m=1;
t(1)=0;    %Initial conditions
x(1)=10;
v(2)=2;
x(2)=x(1)+v(2)*tau;

for i=3:N       %Iteration for the calculation of second derivate
  t(i+1)=i*tau;
  x(i)=2*x(i-1)-x(i-2)-(k/m)*x(i-1)*tau*tau;  %Re-write of the second derivate for dumped oscillator eq 
  v(i-1)=(x(i)-x(i-2))/(2*tau);  %the 2 term is because there are two time intervals being considered
  E(i-2)=.5*m*v(i-1)^2+.5*k*x(i-1)^2;
end

subplot(3,1,1)
plot(t,x,'*r')
grid on
xlabel('t') ;
ylabel('position');

subplot(3,1,2)
plot(t,v,'*b')
grid on;
xlabel('t') ;
ylabel('velocity');


subplot(3,1,3)
plot(t,E,'*p')
grid on;
xlabel('t') ;
ylabel('energy');
