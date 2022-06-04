clc;
clear;

mu=0;
sigma=[0.5 1 2];
t=linspace(-5,5,100);

st1=(1/sqrt(2*pi*sigma(1)))*exp((-1*(t-mu).^2)./(2*sigma(1).^2));
st2=(1/sqrt(2*pi*sigma(2)))*exp((-1*(t-mu).^2)./(2*sigma(2).^2));
st3=(1/sqrt(2*pi*sigma(3)))*exp((-1*(t-mu).^2)./(2*sigma(3).^2));
Sf1=fft(st1);
Sf2=fft(st2);
Sf3=fft(st3);

subplot(3,1,1)
stem(t,st1)
title('sigma=0.5')
subplot(3,1,2)
stem(t,st2)
title('sigma=1')
subplot(3,1,3)
stem(t,st3)
title('sigma=2')
sgtitle('In Time Domain')

figure;

subplot(3,1,1)
stem(t,abs(fftshift(Sf1)))
title('sigma=0.5')
subplot(3,1,2)
stem(t,abs(fftshift(Sf2)))
title('sigma=1')
subplot(3,1,3)
stem(t,abs(fftshift(Sf3)))
title('sigma=2')
sgtitle('In Frequency Domain')