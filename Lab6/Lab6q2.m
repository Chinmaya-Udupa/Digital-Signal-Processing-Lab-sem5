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
Xf=fft(x);

subplot(2,1,1)
plot(x)
xlabel('n'), ylabel('x[n]')
subplot(2,1,2)
plot(linspace(-1,1,200),abs(fftshift(Xf)))
xlabel('f'), ylabel('|X(f)|')