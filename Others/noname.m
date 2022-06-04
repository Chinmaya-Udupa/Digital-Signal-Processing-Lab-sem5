n=1:1000;
x=sin(pi*n/2);
X=fft(x,32);
plot(linspace(-16,16,length(X)),fftshift(abs(X)))