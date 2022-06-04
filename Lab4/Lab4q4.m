clc;
clear;

x=[zeros(1,5) ones(1,5)];
X=fft(x);
Xc=fft(X);
n=-5:4;

subplot(3,1,1)
stem(n,x)
title('x(n)')
subplot(3,1,2)
plot(n,abs(fftshift(X)))
title('X(k)')
subplot(3,1,3)
stem(n,Xc)
title('ft of X(k)')