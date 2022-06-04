clc;
clear;

Fs=8000;
n=0:5000;
ws=[50 1450]/4000;
wp=[650 850]/4000;
Ap=1;
As=50;
xn=sin(1500*pi*n/Fs) + sin(10*pi*n/Fs) + sin(5000*pi*n/Fs);
Xs=fftshift(fft(xn));

subplot(2,1,1);
plot(n,xn)
title('input signal in time domain')
subplot(2,1,2);
plot(linspace(-4000,4000,length(Xs)),abs(Xs))
title('input signal in frequency domain');
figure;

[order,wn]=cheb1ord(wp,ws,Ap,As);
[b,a]=cheby1(order,Ap,wp);
freqz(b,a);
title('frequency response of filter');
figure;

hn=impz(b,a);
yn=conv(xn,hn);
Ys=fftshift(fft(yn));

subplot(2,1,1);
plot(yn)
xlim([0 500]);
title('flitered signal in time domain');
subplot(2,1,2);
plot(linspace(-4000,4000,length(Ys)),abs(Ys))
title('flitered signal in frequency domain');