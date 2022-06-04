clc;
clear;

n=-10:1:10;
for i=1:21
    if n(i)< 0
        x(i)=0;
    else
        x(i)=1;
    end
end

xc= flip(x);

subplot(2,2,1)
stem(n,x)
title('unit fn')

subplot(2,2,2)
stem(n,xc)
title('time reversed unit fn')

subplot(2,2,3)
stem(n,(x+xc)/2)
title('even part of unit fn')

subplot(2,2,4)
stem(n,(x-xc)/2)
title('odd part of unit fn')

