clc;
clear;

fs=8000;
Ts=1/fs;
t=0:Ts:0.5;
n=0:length(t)-1;
x=sin(2*pi*852*t)+sin(2*pi*1400*t);
y=fft(x);
T=(-length(t)/2:(length(t)/2)-1)*fs/length(t);
plot(T,fftshift(abs(y)))