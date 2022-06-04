clc;
clear;

f1=0.22;
f2=0.26;

m1=0:15;
m2=0:31;
m3=0:255;

x1=0.5*sin(2*pi*f1*m1) + sin(2*pi*f2*m1);
x1_h=x1.*transpose(hamming(16));
x2=0.5*sin(2*pi*f1*m1) + sin(2*pi*f2*m1);
x2_h=x2.*transpose(hamming(16));
x3=0.5*sin(2*pi*f1*m2) + sin(2*pi*f2*m2);
x3_h=x3.*transpose(hamming(32));
x4=0.5*sin(2*pi*f1*m3) + sin(2*pi*f2*m3);
x4_h=x4.*transpose(hamming(256));

X1=fft(x1,16);
X2=fft(x2,64);
X3_32=fft(x3,32);
X3_64=fft(x3,64);
X4=fft(x4,1024);
X1_h=fft(x1_h,16);
X2_h=fft(x2_h,64);
X3_h32=fft(x3_h,32);
X3_h64=fft(x3_h,64);
X4_h=fft(x4_h,1024);

subplot(2,2,1)
stem(0:15,abs(X1))
title('16 point DFT, Samples=16')
subplot(2,2,2)
stem(0:63,abs(X2))
title('64 point DFT, Samples=16')
subplot(2,2,3)
stem(0:63,abs(X3_64))
title('64 point DFT, Samples=32')
subplot(2,2,4)
stem(0:1023,abs(X4))
title('1024 point DFT, Samples=256')

sgtitle('Principle Window')

figure;

subplot(2,2,1)
stem(0:31,abs(X3_32))
title('32 Point DFT in priciple Window')
subplot(2,2,2)
stem(0:63,abs(X3_64))
title('64 Point DFT in priciple Window')
subplot(2,2,3)
stem(0:31,abs(X3_h32))
title('32 Point DFT in Hamming Window')
subplot(2,2,4)
stem(0:63,abs(X3_h64))
title('64 Point DFT in Hamming Window')

sgtitle('Comparision between 32 and 64 point DFT in different windows')

figure;

subplot(2,2,1)
stem(0:15,abs(X1_h))
title('16 point DFT, Samples=16')
subplot(2,2,2)
stem(0:63,abs(X2_h))
title('64 point DFT, Samples=16')
subplot(2,2,3)
stem(0:63,abs(X3_h64))
title('64 point DFT, Samples=32')
subplot(2,2,4)
stem(0:1023,abs(X4_h))
title('1024 point DFT, Samples=256')

sgtitle('Hamming Window')