clc;
clear;
x=-10:1:10;
for i=1:21
    if x(i)<=0
        y(i)=-1*x(i);
    else
        y(i)=0;
    end
end
stem(x,y)