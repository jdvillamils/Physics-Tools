clear all;
close all;
clf; 
%Eurler method for wave eq solution.
w=1;
N=1000;
tfinal=2*pi/w*10;
t=zeros(1,N+1);
x=zeros(1,N+1);
v=zeros(1,N+1);
tau=tfinal/N;
t(1)=0;
x(1)=1;
v(1)=0;

%Count
for n=1:N
  t(n+1)=n*tau;
  x(n+1)=x(n)+v(n)*tau;
  v(n+1)=v(n)-w^2*x(n)*tau;
end

plot(t,x,'*r',t,cos(w*t),'--*b')
grid on;
legend('Euler approx','Analytical solution');
