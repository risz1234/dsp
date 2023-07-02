clc; close all; clear all;
wc1=input('enter the lower cut off freq'); 
wc2=input('enter the upper cut off freq');
N=input('enter order of the filter');
a=(N-1)/2;
n=0:1:N-1;
hd=(sin(wc2*(n-a+.001))-sin(wc1*(n-a+.001)))./(pi*(n-a+.001)) 
wn=boxcar(N);
hn=hd.*wn' 
freqz(hn,1);

