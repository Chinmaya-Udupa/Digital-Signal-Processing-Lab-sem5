clc;
clear;
%% filter design
Fs=8000;
Ap=0.5;
ws=[355 365]/4000;
[bn,an]=cheby1(3,Ap,ws,'stop');
freqz(bn,an);
title('Notch Filter at 360 Hz')
figure;

%% input signal say from 320 Hz to 400 Hz
for i=1:50
    freq(i)=320+80.*rand;
end

n=0:500;
xn=0;

for i=1:50
    xn=xn+(5*sin(2*pi*freq(i).*n/Fs).*rand);
end

Xs=fftshift(fft(xn));

subplot(2,1,1);
plot(xn)
xlim([0 500]);
title('random input signal, x');
subplot(2,1,2);
plot(linspace(-4000,4000,length(Xs)),abs(Xs))
title('fourier of x');
figure;

%% filtering out 360Hz from x
hn=impz(bn,an);
yn=conv(xn,hn);
Ys=fftshift(fft(yn));

subplot(2,1,1);
plot(yn)
xlim([0 500]);
title('Filtering 360 Hz noise, y');
subplot(2,1,2);
plot(linspace(-4000,4000,length(Ys)),abs(Ys))
title('fourier of y');
