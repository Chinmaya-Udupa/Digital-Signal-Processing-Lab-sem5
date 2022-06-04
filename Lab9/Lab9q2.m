clc
clear

M=25;
m=0:M-1;
wc=0.4*pi;
n=-(M-1)/2:(M-1)/2;
n1=-(M-1)/2:-1;
n2=1:(M-1)/2;
h1=((2/pi)*((sin(0.5*wc*n1)).^2))./n1;
h2=((2/pi)*((sin(0.5*wc*n2)).^2))./n2;
h=[h1 0 h2];

wrect=ones(1,25);
wham=transpose(hamming(25));
wblack=transpose(blackman(25));
xrect=h.*wrect;
xham=h.*wham;
xblack=h.*wblack;

wc1=0.1;
nt=0:100;
x=sin(2*pi*wc1*nt);

yrect=conv(xrect,x);
yham=conv(xham,x);
yblack=conv(xblack,x);

subplot(3,1,1);
plot(nt,x);
hold on;
plot(0:length(yrect)-1,yrect);
title("Hilbert Transformer with Rectangular Window");
subplot(3,1,2);
plot(nt,x);
hold on;
plot(0:length(yham)-1,yham);
title("Hilbert Transformer with Hamming Window");
subplot(3,1,3);
plot(nt,x);
hold on;
plot(0:length(yblack)-1,yblack);
title("Hilbert Transformer with Blackman Window");
