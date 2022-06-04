clc;
clear;

n=0:1:10;
x1=[ones(1,10) 0];
x2=n;
%linearity%
y1=sin(x1);
y2=sin(x2);
x=x1+x2;
z2=y1+y2;
z1= sin(x);

subplot(2,1,1)
stem(z1)
title('x1+x2')

subplot(2,1,2)
stem(z2)
title('y1+y2')

figure;
% time variance
x3=[0 0 0 x1];
z3=sin(x3);
x4=sin(x1);
z4=[0 0 0 x4];

subplot(2,1,1)
stem(z3)
subplot(2,1,2)
stem(z4)