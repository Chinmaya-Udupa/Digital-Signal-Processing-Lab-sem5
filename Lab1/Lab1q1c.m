clc;
clear;
x=0:1:10;
a=0.9;
for i=1:11
   y(i)=exp(a*x(i));
end
stem (x,y)
xlabel('x') ,ylabel('y');