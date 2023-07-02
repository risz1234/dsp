clc;
clear all;
close all;
x=input('enter the 1st value');
h=input('enter the 2nd value');
N=length(x)+length(h)-1
Xk=fft(x,N)
Hk=fft(h,N)
Yk=Xk.*Hk
yn=ifft(Yk,N)
yr=real(yn);
subplot(2,2,1)
n=0:1:length(x)-1;
stem(n,x)
title('the values of x');
subplot(2,2,2)
n1=0:1:length(h)-1;
stem(n1,h)
title(' values of h');
subplot(2,2,[3 4])
n2=0:1:N-1;
stem(n2,yr)
title('real of ifft');

..................................................................

clc; 
clear all; 
close all; 
x=input('enter the 1st value'); 
h=input('enter the 2nd value'); 
N1=length(x); 
N2=length(h); 
N=max(N1,N2); 
Xk=fft(x,N) 
Hk=fft(h,N) 
Yk=Xk.*Hk 
yn=ifft(Yk,N) 
yr=real(yn) 
subplot(2,2,1) 
n=0:1:length(x)-1; 
stem(n,x) 
title('the values of x'); 
subplot(2,2,2) 
stem(n,h) 
title(' values of h'); 
subplot(2,2,[3 4]) 
stem(n,yr) 
title('real of ifft');
disp(yr);



