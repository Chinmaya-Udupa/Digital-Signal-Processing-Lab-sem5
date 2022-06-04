clc;
clear;
A=4*rand(1,5);
phi=2*pi*rand(1,5);
n=linspace(0,2*pi,31);

for i=1:5
    x= A(i).*cos((n)+ phi(i));
    stem (n,x);
    hold on
end