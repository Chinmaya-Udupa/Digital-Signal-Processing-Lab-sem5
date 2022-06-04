clc;
clear;

b=0:0.02:0.5;
coeff_of_y=[1 -0.8 0.81];
for i= 1:length(b)
 h=freqz(b(i),coeff_of_y);
 plot(linspace(0,1,length(h)),abs(h));
 title('magnitude response for 0< b< 0.5');
 hold on; 
end 

f1=freqz(1,coeff_of_y);
b0=1/max(abs(f1));
h1=freqz(b0,coeff_of_y);
fvtool(b0,coeff_of_y);

figure;

plot(linspace(0,1,length(h1)),angle(h1))
hold on;
plot(linspace(0,1,length(h1)),unwrap(angle(h1)))

figure;

hn=impz(b0,coeff_of_y);
n2=0:1:length(hn);
xn=2*cos((pi*n2)/3 + ((pi)/4));
yn=conv(hn,xn);

subplot(3,1,1);
stem(hn)
title('impulse response of the system');
subplot(3,1,2);
stem(xn)
title("input signal x[n]");
subplot(3,1,3);
stem(yn)
title('output signal y[n]');