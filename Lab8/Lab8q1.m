clc
clear

r=0.3; 
z=[1./r*exp(1i*[-1,1]*0.5*pi), 1./r*exp(1i*[-1,1]*0.4*pi)]; 
p=[r*exp(1i*[-1,1]*0.5*pi), r*exp(1i*[-1,1]*0.4*pi)]; 
k=r^4;
[b,a]=zp2tf(z',p,k); 
[H,w]=freqz(b,a);
subplot(2,1,1);
plot(w,abs(H))
title('Magnitude Response')
subplot(2,1,2);
plot(w,angle(H))
title('Phase Response')