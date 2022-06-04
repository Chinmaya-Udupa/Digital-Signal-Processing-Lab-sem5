clc;
clear;

x1=[0.59 0.95 0.95 0.59 0.0 0.59 0.95 0.95 0.59 0.00];
x2=[0.16 0.97 0.96 0.49 0.8 0.14 0.42 0.92 0.79 0.96];
x2r=flip(x2);

y=cconv(x1,x2r,10);
X1=fft(x1);
X2r=fft(x2r);
yc=ifft(X1.*X2r);

subplot(2,1,1)
stem(y)
title('circular correlation using cconv')
subplot(2,1,2)
stem(yc)
title('circular correlation using fft and ifft')