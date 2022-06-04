clc;
clear;

x=[1 1 2 0.5 0 1 2 1];
X=fft(x);
x1=[2 1 1 1 2 0.5 0 1];
X1=fft(x1);
freqsht=@(sht) [X(end-sht+1:end) X(1:end-sht)] ;
X2=freqsht(2);
x2=ifft(X2);
%time shift
subplot(3,2,1)
stem(x)
title('x(n)')

subplot(3,2,3)
stem(abs(X))
title('|X(k)|')

subplot(3,2,5)
stem(angle(X))
title('Phase of X(k)')

subplot(3,2,2)
stem(x1)
title('x(n-2)')

subplot(3,2,4)
stem(abs(X1))
title('|X1(k)|')

subplot(3,2,6)
stem(angle(X1))
title('Phase of X1(k)')

%frequency shift
figure;

subplot(3,2,1)
stem(abs(X1))
title('|X1(k)|')

subplot(3,2,3)
stem(angle(X1))
title('Phase of X1(k)')

subplot(3,2,5)
stem(x)
title('x(n)')

subplot(3,2,2)
stem(abs(X2))
title('|X1(k-2)|')

subplot(3,2,4)
stem(angle(X2))
title('Phase of X1(k-2)')

subplot(3,2,6)
stem(abs(x2))
title('inverse of X1(k-2)')