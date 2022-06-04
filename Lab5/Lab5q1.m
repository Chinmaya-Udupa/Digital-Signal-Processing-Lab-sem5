clc;
clear;

f1=1/10;
f2=1/16;
n=0:127;
n1=0:63;
n2=0:79;
x=cos(2*pi*f1*n) + cos(2*pi*f2*n);
x1=cos(2*pi*f1*n1) + cos(2*pi*f2*n1);
x2=cos(2*pi*f1*n2) + cos(2*pi*f2*n2);

X1=fft(x1,128);
X2=fft(x1,256);
X3=fft(x2,128);
X4=fft(x2,256);

subplot(2,2,1)
stem(abs(X1))
xlabel('N=64'), title('128-point DFT')

subplot(2,2,2)
stem(abs(X2))
xlabel('N=64'), title('256-point DFT')

subplot(2,2,3)
stem(abs(X3))
xlabel('N=80'), title('128-point DFT')

subplot(2,2,4)
stem(abs(X4))
xlabel('N=80'), title('256-point DFT')