clc;
clear;

fs=22050;
Ts=1/fs;
n=0:Ts:2;
y=sin(2*pi*500.*n);
%soundsc(y);
y2=square(2*pi*500.*n);
soundsc(y2);
