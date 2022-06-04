clc;
clear;
n=0:1:20;
r1=0.8;
r2=1.2;
y1=(r1.^n) .*exp(1i*n*(pi/3));
y2=(r2.^n) .*exp(1i*n*(pi/3));

subplot(2,2,1);
stem(n,real(y1));
ylabel('real y1');

subplot(2,2,2);
stem(n,imag(y1));
ylabel('imag y1');

subplot(2,2,3);
stem(n,real(y2));
ylabel('real y2');

subplot(2,2,4);
stem(n,imag(y2));
ylabel('imag y2');