clc;
clear;

n=0:1:100;
f1=4;
f2=7;
x= sin(2*pi*(f1/100)*n)+cos(2*pi*(f2/100)*n);

xc= flip(x);

subplot(2,2,1)
stem(n,x)
title('sin fn')

subplot(2,2,2)
stem(n,xc)
title('time reversed sin fn')

subplot(2,2,3)
stem(n,(x+xc)/2)
title('even part of sin fn')

subplot(2,2,4)
stem(n,(x-xc)/2)
title('odd part of sin fn')