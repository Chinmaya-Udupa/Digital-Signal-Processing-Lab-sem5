clc;
clear;

r=0.9;
phi=0.34*pi;
b=[1 0 -1];
a=[1 -2*r*cos(phi) r^2];

z=exp(1i*phi);
H=(1-z^-2)/(1-(2*r*cos(phi)*z^-1)+(r/z)^2);
b0=1/abs(H);

fvtool(b,a)