clc;
clear;
x1 = [1 2 3 4 5 6]; 
x2 =[1 2 3 4 5];
y=cconv(x1,x2,6);

y1=[zeros(1,6)];
for i=1:6
    for j=1:5
        if i+j-1~= 6
            y1(rem(i+j-1,6))= y1(rem(i+j-1,6))+ x1(i)*x2(j);
        else
            y1(6)= y(6)+x1(i)*x2(j);
        end
    end
end

subplot(2,1,1)
stem(y)
title('using inbuilt function')
subplot(2,1,2)
stem(y1)            
title('without using inbuilt function')