clear all;
close all;
clf;

%Diffusion equation and gaussian pulse

D=0.00005;
nu=0.5;
sigma=0.05;
numx=101;
dx=1/(numx-1);
x=0:dx:1;
numt=5001;
dt=1;
t(1)=0;
for j=1:numt
  t(j+1)=t(j)+dt;
end
%%Analitic solution

% 2D plot
[X,T]=meshgrid(x,t);
v=(exp(-((X-nu).^2)./((T.*(4*D))+2*sigma^2)))./(sqrt(pi*((T.*(4*D))+2*sigma^2)));
figure(1)
plot(x,v(5001,:),'-y','linewidth',2); %como v es una matriz, la expresion (5000,:) toma un 'perfil' de la matriz en 5000.
hold on;
plot(x,v(2001,:),'-b','linewidth',2);
hold on;
plot(x,v(201,:),'-r','linewidth',2);
hold on;
plot(x,v(101,:),'-c','linewidth',2);
hold on;
plot(x,v(1,:),'-g','linewidth',2);
legend('\phi(x,5000)','\phi(x,2000)','\phi(x,200)','\phi(x,100)','\phi(x,0)');
grid on
xlabel('x');
hold off

%sup plot
figure(2)
Vr=v(1:20:3001,:);
Tr=T(1:20:3001,:);
Xr=X(1:20:3001,:);
surf(Xr,Tr,Vr)
view(130,30);
colormap jet
xlabel('x')
ylabel('t')
zlabel('C(x,t)')
axis([0 1 0 3001 -1 8])