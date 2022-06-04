clc;
clear;

n=1:100;
x=sin(0.2*pi*n)+cos(0.4*pi*n);
stem(n,x)
X=fft(x);
Ptime=0;
Pfreq=0;
for i=1:100
    Ptime=Ptime+x(i)*x(i);
end
for j=1:100
    Pfreq=Pfreq+((abs(X(j))^2));
end
Pfreq=Pfreq/100;