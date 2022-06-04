clc;
clear;

x=[zeros(1,10) 1 zeros(1,10)];
n=-10:10;

a=[1 real(-0.8*exp(1i*pi/3))];
b=1;
y=filter(b,a,x);
stem(n,y);

    


