clc;
clear all;
close all;
x=input('enter the 1st value');
N=length(x);
for k=0:N-1
y(k+1)=0;
for n=0:N-1
y(k+1)=y(k+1)+x(n+1)*exp(-i*2*pi*n*k/N);
end
end
y
mag=abs(y)
phase=angle(y)
subplot(2,2,1)
n=0:1:length(x)-1;
stem(n,x)
title('the values of x');
subplot(2,2,2)
n1=0:1:length(y)-1;
stem(n1,y)
title('output of y');
subplot(2,2,3)
n2=0:1:length(y)-1;
stem(n2,mag)
title('magnitude plot');
subplot(2,2,4)
n3=0:1:length(y)-1
stem(n3,phase)
title('phase plot');
