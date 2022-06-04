clc
clear

M=39;
m=0:M-1;
n=[-(M-1)/2:-1 1:(M-1)/2];
wc=0.35*pi;
H= -(sin(wc*n)/pi)./n;
hn=[H(1:(((M-1)/2))) (1-wc/pi) H((((M-1)/2)+1):M-1)];
wn=0.42-(0.5*cos(2*pi*m/(M-1))) + 0.08*(cos(4*pi*m/(M-1)));
x=hn.*wn;
plot(m,wn);
title("Blackman window with "+ M +" Samples");
fvtool(x,1)