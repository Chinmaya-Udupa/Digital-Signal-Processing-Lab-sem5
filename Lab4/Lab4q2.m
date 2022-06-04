clc;
clear;

x1=[1 1 0 2 5 7 1 6];
x2=[3 8 5 2 9 0 3 1];
X1=fft(x1);
X2=fft(x2);
X12=X1+X2;
x12=x1+x2;
X3=fft(x12);
subplot(2,1,1)
stem(abs(X12))
title('addition after transform')
subplot(2,1,2)
stem(abs(X3))
title('transform after addition')