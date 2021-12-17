
%Function being used in the Double Pendulum script


function [yprime]=doublepend(t,y)  
 
 yprime=zeros(4,1);
 m1=2;
 m2=1;
 l1=1;
 l2=2;
 g=9.8;
 a=(m1+m2)*l1;
 b=m2*l2*cos(y(1)-y(3));
 c=m2*l1*cos(y(1)-y(3));
 d=m2*l2;
 e=-m2*l2*y(4)*sin(y(1)-y(3))-g*(m1+m2)*sin(y(1));
 f=m2*l1*y(2)*y(2)*sin(y(1)-y(3))-m2*g*sin(y(3));
 yprime(1)=y(2);
 yprime(3)=y(4);
 yprime(2)=(e*d-b*f)/(a*d-c*b);
 yprime(4)=(a*f-c*e)/(a*d-c*b);
end




 