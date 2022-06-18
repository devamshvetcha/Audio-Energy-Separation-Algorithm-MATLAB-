clc;
close all;
clear all;
k=0.8;
w=pi/128;
q=pi/6;
for n=1:512
    x(n)=(1+(k*cos(w*(n))))*(cos(q*(n)));
end
for n=2:512
   y(n)=x(n)-x(n-1);
end
plot(y)
hold on
for n=2:511
    ey(n) = (y(n)^2) - ((y(n-1)) * (y(n+1)));
end
plot(ey,'g')
hold on
for n=2:511
    ex(n) = (x(n)^2) - ((x(n-1)) * (x(n+1)));
end
plot(ex,'r')
hold on

for  n=2:510
   Q(n)=acos(1-(((ey(n)+ey(n+1))/(4*(ex(n))))));
end
plot(Q);
hold on;
for n=2:510
    j(n)=sqrt(ex(n)/(1-(1-(((ey(n)+ey(n+1))/(4*(ex(n))))))^2));
end
% j()
plot(j,'r');
for n=1:512
    x(n)=(1+(k*cos(w*(n))))*(cos(q*(n)));
end
for n=2:511 % for envelop of  signal.
    j(n)=(1 + ((k)*(cos(w*n))));
end
 plot(j,'o');