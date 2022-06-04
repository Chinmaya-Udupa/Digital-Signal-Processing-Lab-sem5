clc;
clear;

n=0:1:10;
x1=[ones(1,10) 0];
x2=n;
%linearity%
y1=[x1 0 0];
y2=[x2 0 0];
x=x1+x2;
z1=[x 0 0];
z2=y1+y2;
n1=-2:1:10;

subplot(2,1,1)
stem(n1,z1)
title('x1+x2')

subplot(2,1,2)
stem(n1,z2)
title('y1+y2')

figure;
%time variance%
x3=[0 0 0 x1];
z3=[x3 0 0];
x4=[x1 0 0];
z4=[0 0 0 x4];

subplot(2,1,1)
stem(z3)
subplot(2,1,2)
stem(z4)