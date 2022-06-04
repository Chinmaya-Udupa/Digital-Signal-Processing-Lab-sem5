clc
clear

z=[0.9*exp(1i*pi/2) 0.9*exp(1i*3*pi/2)]; 
p=[0.9*exp(1i*[-1,1]*2*pi/3)]; 
[b,a]=zp2tf(z',p,1);
[H,w]=freqz(b,a);
subplot(2,1,1);
plot(w,abs(H))
title('Magnitude Response')
subplot(2,1,2);
plot(w,angle(H))
title('Phase Response')