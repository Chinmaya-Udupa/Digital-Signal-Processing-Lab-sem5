clc;
clear;

syms z
z=tf('z');
H=(1/z + 3)/((1 -0.5/z)*(1 +0.25/z));
X=(1 -1/z)/(1 -0.6/z);
Y=X*H;
%y=iztrans(Y);
subplot(3,1,1)
pzmap(H)
title('H')
subplot(3,1,2)
pzmap(X)
title('X')
subplot(3,1,3)
pzmap(Y)
title('Y')
figure;

syms z
%z=tf('z');
H=(1/z + 3)/((1 -0.5/z)*(1 +0.25/z));
X=(1 -1/z)/(1 -0.6/z);
Y=X*H;
y=iztrans(Y);
h=iztrans(H);
n=0:50;
h1= (10*(1/2).^n)/3 - (-1/4).^n/3;
y1= (50*(1/2).^n)/3 - (25*(-1/4).^n)/51 - (224*(3/5).^n)/17;
subplot(2,1,1)
stem(n,h1)
title('h')
subplot(2,1,2)
stem(n,y1)
title('y')