clear all;
close all;
clf;
%Solution diffusion eq

%
D=0.00005;
nu=0.5;
sigma=0.05;
numx=101;
dx=1/(numx-1);
x=0:dx:1;
numt=5001;
dt=1;

%
c=zeros(numx,numt);
c(1,1)=0;
c(1,numt)=0;

%
for i=2:numx-1
  %Spatial
  c(i,1)=exp(-((x(i)-nu)^2)/(2*sigma^2))/sqrt(2*pi*sigma^2);
end
t(1)=0;
for j=1:numt
  %Time
  t(j+1)=t(j)+dt;
  for i=2:numx-1
    c(i,j+1)=c(i,j)+D*(dt/dx^2)*(c(i+1,j)-2*c(i,j)+c(i-1,j));
  end
end

%
figure(1)
plot(x,c(:,5001),'mo-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c(:,2001),'bo-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c(:,201),'ro-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c(:,101),'ko-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c(:,1),'go-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
legend('C(x,5000)','C(x,2000)','C(x,200)','C(x,100)','C(x,0)');
grid on
xlabel('x');
hold off

[X,T]=meshgrid(x,t);
figure(2)
Vr=c(:,1:20:5001);  %
tr=T(1:20:5002,:);  %
xr=X(1:20:5002,:);  %

Xr=xr';
Tr=tr';
surf(Xr,Tr,Vr)
view(130,30);
colormap jet
xlabel('x')
ylabel('t')
zlabel('C(x,t)')
axis([0 1 0 3001 -1 8])