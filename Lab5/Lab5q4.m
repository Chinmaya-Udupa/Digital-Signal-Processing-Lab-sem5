clc;
clear;

x=[1 2 3 4 5 6 7 8];
X=fft(x,8);
x1=fft(X,8);

subplot(3,1,1)
stem(x)
title('x')
subplot(3,1,2)
stem(abs(X))
title('DFT of x')
subplot(3,1,3)
stem(abs(x1))
title('DFT of DFT of x')