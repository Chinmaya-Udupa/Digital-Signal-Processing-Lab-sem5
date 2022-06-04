clear;
clc;

f1=0.36;
f2=[0.28 0.29 0.3 0.31];

n=0:15;
n1=-64:63;
xn1=sin(2*pi*f1*n) + sin(2*pi*f2(1)*n);
xn2=sin(2*pi*f1*n) + sin(2*pi*f2(2)*n);
xn3=sin(2*pi*f1*n) + sin(2*pi*f2(3)*n);
xn4=sin(2*pi*f1*n) + sin(2*pi*f2(4)*n);
xk1=fft(xn1,128);
xk2=fft(xn2,128);
xk3=fft(xn3,128);
xk4=fft(xn4,128);

subplot(2,2,1)
stem(n1,abs(fftshift(xk1)))
title('|f1-f2|=0.08');

subplot(2,2,2)
stem(n1,abs(fftshift(xk2)))
title('|f1-f2|=0.07');

subplot(2,2,3)
stem(n1,abs(fftshift(xk3)))
title('|f1-f2|=0.06');

subplot(2,2,4)
stem(n1,abs(fftshift(xk4)))
title('|f1-f2|=0.05');
