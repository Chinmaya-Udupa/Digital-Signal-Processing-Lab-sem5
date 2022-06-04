clc;
clear;
x=0:1:15;
for i=6:1:16
   y(i)=x(i-5);
end
stem (x,y)