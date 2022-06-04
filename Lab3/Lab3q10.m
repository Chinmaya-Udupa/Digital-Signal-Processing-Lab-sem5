clc;
clear;
[y,fs] =audioread('DSPaudio.wav');
% stem((abs(fft(y))));
L=length(abs(fft(y)));
n=(-L/2):(L/2)-1;
x=fftshift(abs(fft(y)));
plot(n,abs(x));