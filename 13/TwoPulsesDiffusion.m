clear all;
close all;
clf;
%SOLUTION FOR DIFFERENTIAL EQUATION OF DIFFUSION

%parameters
D=0.00005;
nu=0.5;
sigma=0.05;
numx=101;
dx=1/(numx-1);
x=0:dx:1;
numt=5001;
dt=1;

%memory
c1=zeros(numx,numt);
c1(1,1)=0;
c1(1,numt)=0;
c2=zeros(numx,numt);
c2(1,1)=0;
c2(1,numt)=0;

%
for i=2:numx-1
  %First for for spatial evolution
  c1(i,1)=exp(-((x(i)-nu-0.1)^2)/(2*sigma^2))/sqrt(2*pi*sigma^2);
  c2(i,1)=exp(-((x(i)-nu+0.1)^2)/(2*sigma^2))/sqrt(2*pi*sigma^2);
end
t(1)=0;
for j=1:numt
  %second for for time evolution
  t(j+1)=t(j)+dt;
  for i=2:numx-1
    c1(i,j+1)=c1(i,j)+D*(dt/dx^2)*(c1(i+1,j)-2*c1(i,j)+c1(i-1,j));
    c2(i,j+1)=c2(i,j)+D*(dt/dx^2)*(c2(i+1,j)-2*c2(i,j)+c2(i-1,j));
  end
end

%
figure(1)
plot(x,c1(:,5001),'mo-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c1(:,2001),'bo-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c1(:,201),'ro-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c1(:,101),'ko-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c1(:,1),'go-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c2(:,5001),'yo-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c2(:,2001),'co-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c2(:,201),'bo-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c2(:,101),'go-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
plot(x,c2(:,1),'go-','linewidth',2,'markeredgecolor','k','markerfacecolor','y','markersize',2);
hold on;
legend('C(x,5000)','C(x,2000)','C(x,200)','C(x,100)','C(x,0)','C2(x,5000)','C2(x,2000)','C2(x,200)','C2(x,100)','C2(x,0)');
grid on
xlabel('x');
hold off

%Superfitial plot
[X,T]=meshgrid(x,t);
figure(2)
Vr2=c2(:,1:20:5001);
Vr1=c1(:,1:20:5001);  %size(101,5001)
tr=T(1:20:5002,:);  %tsize (5001,101)
xr=X(1:20:5002,:);  %size (5001,101)
%So its necesary to take the transpose
Xr=xr';
Tr=tr';
surf(Xr,Tr,Vr1)
hold on
surf(Xr,Tr,Vr2)
hold off
view(130,30);
colormap jet
xlabel('x')
ylabel('t')
zlabel('C(x,t)')
axis([0 1 0 3001 -1 8])