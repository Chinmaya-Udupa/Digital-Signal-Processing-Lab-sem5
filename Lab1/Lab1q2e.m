clc;
clear;

x=0:1:10;
y=x;

x1= 1:5;%downsampling
for i=1:5
    y1(i)=x(2*i);
end

x2=1:20;%upsampling
for j=1:20
    if (rem(j,2)==0)
        y2(j)= x(0.5*j);
    else
        y2(j)=0;
    end
end
subplot(3,1,1);
stem(x,y);
subplot(3,1,2);
stem(x1,y1);
subplot(3,1,3);
stem(x2,y2);