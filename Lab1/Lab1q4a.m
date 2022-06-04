clc;
clear;
n=linspace(0,2*pi,50);
y=2.5*sin(2*pi*0.08.*n +(pi/2));
stem(n,y)