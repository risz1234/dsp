clc; close all; clear all;
wc=input('enter the cut off freq'); 
N=input('enter order of the filter'); 
a=(N-1)/2;
n=0:1:N-1;
hd=(sin(pi*(n-a+.001))-sin(wc*(n-a+.001)))./(pi*(n-a+.001))
wn=hamming(N);
hn=hd.*wn' 
freqz(hn,1);
