clc;
clear;

x1 = [4 2 6 3 8 1 5]; 
x2 =[3 8 6 9 6 7];

X2=flip(x2);

y1=xcorr(x1,x1);
y2=xcorr(x2,x2);
y3=conv(x1,X2);
y4=xcorr(x1,x2);

subplot(2,2,1)
stem(y1)
title('auto correlation of x1')
subplot(2,2,2)
stem(y2)
title('auto correlation of x2')
subplot(2,2,3)
stem(y3)
title('cross correlation using conv')
subplot(2,2,4)
stem(y4)
title('cross correlation using xcorr ')