clc;
clear;
x=1:100;
for i=1:100
    y(i)=-2 +4.*rand;
end
stem(x,y)
xlabel('x') ,ylabel('y');