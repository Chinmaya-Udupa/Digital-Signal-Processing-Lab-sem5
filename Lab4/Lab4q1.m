clc;
clear;

x=[1 0.5 0 -0.5];
X16=fft(x,16);
X32=fft(x,32);
X24=fft(x,24);
ix24=ifft(X24);
subplot(3,1,1)
stem(-length(X16)/2:length(X16)/2-1,abs(fftshift(X16)))
title('16 point DFT')
subplot(3,1,2)
stem(-length(X32)/2:length(X32)/2-1,abs(fftshift(X32)))
title('32 point DFT')
subplot(3,1,3)
stem(-length(X24)/2:length(X24)/2-1,abs(fftshift(X24)))
title('24 point DFT')

figure;

subplot(2,1,1)
stem(x)
title('original function')
subplot(2,1,2)
stem(1:24,ix24)
title('inverse of 24 point')