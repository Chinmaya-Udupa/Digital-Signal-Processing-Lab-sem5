clc;
clear;
n=0:1:80;
x1 = 5* cos (2*pi*5/80*n);
x2 = 5* cos (2*pi*12/80* n + 0.25*pi); 
x= x1+ x2;

subplot(3,1,1);
stem (n,x1);
ylabel('x1');

subplot(3,1,2);
stem(n,x2);
ylabel('x2');

subplot(3,1,3);
stem(n,x);
ylabel('x1 + x2');