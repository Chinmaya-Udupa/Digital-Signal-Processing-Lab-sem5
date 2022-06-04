clc;
clear;

x=[zeros(1,10) 1 zeros(1,100)];
n=-10:100;

a=[1 -1.8*cos(pi/16) 0.81];
b=[1 0.5];
y=filter(b,a,x);
stem(n,y);