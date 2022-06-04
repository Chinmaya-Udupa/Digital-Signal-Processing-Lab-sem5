clc;
clear;

n=0:1:10;
x1=[ones(1,10) 0];
x2=n;
%linearity%

y11=[0 0 x1];
y12=[0 0 0 x1];
y13=conv(y11,y12);

y21=[0 0 x2];
y22=[0 0 0 x2];
y23=conv(y21,y22);

y31=y11+y21;
y32=y12+y22;

z1=conv(y31,y32);
z2= y13+ y23;

subplot(2,1,1)
stem(z1)
title('convolution after adding')

subplot(2,1,2)
stem(z2)
title('adding after convolution')

figure;

w1=[0 0 0 y11];
w2=[0 0 0 y12];
w3=conv(w1,w2);
w4=[0 0 0 y13];
subplot(2,1,1)
stem(w3)
subplot(2,1,2)
stem(w4)
