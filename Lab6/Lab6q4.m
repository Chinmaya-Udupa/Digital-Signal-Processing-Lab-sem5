clc;
clear;

mu=0;
sigma=[0.5 1 2];
w1=0.34*pi;
w2=0.6*pi;
n=linspace(-5,5,100);
n_=0:length(n)-1;

s=(1/sqrt(2*pi*sigma(3)))*exp((-1*(n-mu).^2)./(2*sigma(3).^2));
s1=s.*cos(w1*n_);
s2=s.*cos(w2*n_);
x=[s1 s2];

r=0.9;
phi=0.34*pi;
b=[1 0 -1];
a=[1 -2*r*cos(phi) r^2];

z=exp(1i*phi);
H=(1-z^-2)/(1-(2*r*cos(phi)*z^-1)+(r/z)^2);
b0=1/abs(H);
h=impz(b0.*b,a);

y=conv(x,h);

subplot(3,1,1)
plot(x)
title('input signal x[n]')
subplot(3,1,2)
stem(h)
title('impulse response h[n]')
subplot(3,1,3)
plot(y)
title('output response y[n]')
sgtitle('analysis in time domain')

figure;

subplot(3,1,1)
plot(linspace(-1,1,length(x)),abs(fftshift(fft(x))))
title('input signal Xf')
subplot(3,1,2)
plot(linspace(-1,1,length(h)),abs(fftshift(fft(h))))
title('impulse response H')
subplot(3,1,3)
plot(linspace(-1,1,length(y)),abs(fftshift(fft(y))))
title('output response Yf')
sgtitle('analysis in frequency domain')