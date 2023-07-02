%%Step input
clc;
clear all;
close all;
a=input('enter the 1st values');
b=input('enter the 2nd values');
N=input('enter the length of the impulse response requirement');
x=[ones(1,N)];
y=filter(b,a,x);
y
subplot(2,1,1)
n=0:1:length(x)-1;
stem(n,x)
title('the impulse input');
xlabel('time index');
ylabel('Ampiltude');                             
subplot(2,1,2)
n1=0:1:length(y)-1;
stem(n1,y)
title('output values');
xlabel('time index');
ylabel('Ampiltude');

%%Impulse input
clc;
clear all;
close all;
a=input('enter the 1st values');
b=input('enter the 2nd values');
N=input('enter the length of the impulse response requirement');
x=[1,zeros(1,N-1)];
y=filter(b,a,x);
y
subplot(2,1,1)
n=0:1:length(x)-1;
stem(n,x)
title('the impulse input');
xlabel('time index');
ylabel('Ampiltude');
subplot(2,1,2)
n1=0:1:length(y)-1;
stem(n1,y)
title('output values');
xlabel('time index');
ylabel('Ampiltude');

 %%Arbitrary input
clc;
clear all;
close all;
a=input('enter the 1st values');
b=input('enter the 2nd values');
N=input('enter the length of the impulse response requirement');
n=0:1:N-1;
x=2.^n
y=filter(b,a,x);
y
subplot(2,1,1)
n1=0:1:length(x)-1;
stem(n1,x)
title('the impulse input');
xlabel('time index');
ylabel('Ampiltude');
subplot(2,1,2)
n2=0:1:length(y)-1;
stem(n2,y)
title('output values');
xlabel('time index');
ylabel('Ampiltude');



%%Steady state input
clc;
clear all;
close all;
a=input('enter the 1st values');
b=input('enter the 2nd values');
N=input('enter the length of the impulse response requirement');
n=0:1:N-1;
x=cos(0.5*pi*n)
y=filter(b,a,x);
y
subplot(2,1,1)
n1=0:1:length(x)-1;
stem(n1,x)
title('the impulse input');
xlabel('time index');
ylabel('Ampiltude');
subplot(2,1,2)
n2=0:1:length(y)-1;
stem(n2,y)
title('output values');
xlabel('time index');
ylabel('Ampiltude');

