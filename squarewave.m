clc;
clear all;
close all;
k=0.8;
w=pi/128;
q=pi/6;
load golomb1
M=length(x);
ts=0.00001;
t=(0:M-1)*ts;
subplot(3,1,1);
plot(x(1:100));
for n=2:(816)
   y(n)=x(n)-x(n-1);
end
subplot(3,1,2)
plot(y(1:100))
hold on
for n=2:815
    ey(n) = (y(n)^2) - ((y(n-1)) * (y(n+1)));
end
plot(ey(1:100),'g')
hold on
for n=2:815
    ex(n) = (x(n)^2) - ((x(n-1)) * (x(n+1)));
end
plot(ex(1:100),'r')
hold on
for  n=2:814
   Q(n)=acos(1-(((ey(n)+ey(n+1))/(4*(ex(n))))));
end
plot(Q);
for n=2:814
    j(n)=sqrt(ex(n)/(1-(1-(((ey(n)+ey(n+1))/(4*(ex(n))))))^2));
end
subplot(3,1,3);
plot(j(1:100),'r');
