%circular convolution%
clc;
close all
clear all
x=input('enter the 1st value');
h=input('enter the 2nd value');
N1=length(x);
N2=length(h);
N=max(N1,N2);
for n=0:1:N-1
y(n+1)=0;
for M=0:1:N-1
i=n-M;
if(i<0)
i=i+N;
end
y(n+1)=y(n+1)+x(M+1)*h(i+1);
end
end
disp(y)
n=0:1:N-1;
stem(n,y)
title('circular convolution plot');
xlabel('time');
ylabel('amplitude');
