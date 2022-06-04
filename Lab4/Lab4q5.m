clc;
clear;

x1=[0.59 0.95 0.95 0.59 0.0 0.59 0.95 0.95 0.59 0.00];
x2=[0.16 0.97 0.96 0.49 0.8 0.14 0.42 0.92 0.79 0.96];
y=cconv(x1,x2,10);
X1=fft(x1);
X2=fft(x2);
yc=ifft(X1.*X2);
x11=[x1 zeros(1,length(x2)-1)];
x22=[x2 zeros(1,length(x1)-1)];
z=conv(x1,x2);
X11=fft(x11);
X22=fft(x22);
zc=ifft(X11.*X22);
subplot(2,2,1)
stem(0:9,y)
title('circ conv directly')
subplot(2,2,2)
stem(0:length(x11)-1,z)
title('linear conv directly')
subplot(2,2,3)
stem(0:9,yc)
title('circ conv using fourier')
subplot(2,2,4)
stem(0:length(x11)-1,zc)
title('linear conv using fourier')