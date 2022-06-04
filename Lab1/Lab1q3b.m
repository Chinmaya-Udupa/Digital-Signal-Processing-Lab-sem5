clc;
clear;
n=0:1:20;
r1=0.8;
r2=1.2;
y1=(r1.^n) .*exp(1i*n*(pi/3));
y2=(r2.^n) .*exp(1i*n*(pi/3));

subplot(2,2,1);
stem(n,abs(y1));
ylabel('mag y1');

subplot(2,2,2);
stem(n,angle(y1));
ylabel('phase y1');

subplot(2,2,3);
stem(n,abs(y2));
ylabel('mag y2');

subplot(2,2,4);
stem(n,angle(y2));
ylabel('phase y2');