clc;
clear all;
close all;
wp= input('Enter the pass band edge (rad)= ');
ws= input('Enter the stop band edge (rad)= ');
ks= input('Enter the stop band attenuation (dB)= ');
%If 43<Ks<54 choose hamming window.
%To select N,order of filter.
N= (2*pi*4)/(ws-wp) % k=4 for Hamming window.
N= ceil(N) %To round-off N to the next integer.
r = rem(N,2) %Choose odd N.
if(r==0)
N=N+1;
end
wc=(wp+(ws-wp)/2)./pi
% To obtain h(n)
h= fir1(N-1,wc,hamming(N))
% Frequency response
freqz(h,1); % 1 is the normalized frequency
title('Frequency response of the lowpass digital FIR filter')
figure(2), stem(h);
title('Impulse response of the lowpass digital FIR filter')






