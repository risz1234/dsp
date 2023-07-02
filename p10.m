%circular matrix mutlipication%
clc;
clear all;
close all;
x=input('enter the 1st sequence');
h=input('enter the 2nd sequence');
a=h'
A=circshift(a,1);
B=circshift(a,2);
C=[a A B]
y=C*x';
disp('the circular conv o/p is');
disp(y);
subplot(3,1,1)
n=0:1:length(x)-1;
stem(n,x);
title('input of x');
xlabel('time');
ylabel('amplitude');
subplot(3,1,2)
n1=0:1:length(h)-1;
stem(n1,h);
title('input of h');
xlabel('time');
ylabel('amplitude');
subplot(3,1,3)
n2=0:1:length(y)-1;
stem(n2,y);
title('input of y');
xlabel('time');
ylabel('amplitude');
