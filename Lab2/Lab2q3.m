clc;
clear;
x1 = [4 2 6 3 8 1 5];
x2 =[3 8 6 9 6 7];
x= conv(x1,x2);
n=-3:8;
subplot(2,1,1)
stem(n,x)
title('using inbuilt function')

%without using inbuilt function

X1=length(x1);
X2=length(x2);

for i=1:X1+X2-1
    k=1;
    j=i;
    y(i)=0;
    while (k<=i)
        if (j<=X1 && k<=X2)
           y(i)=y(i)+x1(j)*x2(k);
        end
        k=k+1;
        j=j-1;
    end
end
subplot(2,1,2)
stem(n,y)
title('without using an inbuilt function')