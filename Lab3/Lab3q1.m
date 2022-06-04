clc;
clear;

x=[1 zeros(1,9)];
n=0:9;

a1=[1 -1.5];
a2=[1 -1];
a3=[1 -0.5];
b=1;
y1=filter(b,a1,x);
y2=filter(b,a2,x);
y3=filter(b,a3,x);

subplot(3,1,1)
stem(n,y1)
title('a < -1')

subplot(3,1,2)
stem(n,y2)
title('a = -1')

subplot(3,1,3)
stem(n,y3)
title('a > -1')