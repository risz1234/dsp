clc;
clear all;
close all;
x=input('Enter the sequence')
N=length(x);
y=fft(x,N)
mag=abs(y)
phase=angle(y)
phase1=phase*(180/pi);
%verification%							
yi=ifft(y)
yd=real(yi)
subplot(2,2,1)
n=0:1:length(x)-1;
stem(n,x)
title('the values ox x');
subplot(2,2,2)
stem(n,mag)
title('magnitude values of y');
subplot(2,2,3)
stem(n,phase1)
title('phase values of y');	
subplot(2,2,4)
stem(n,yd)
title('real of ifft')
	                                                                  
