clc;
clear;

x= zeros(1,20);
for i=1:20
    if (i<16 && i>10)
        x(i)=5;
    else
        x(i)=0;
    end
end

y=fft(x,1500);
%plot(abs(y))
y=fftshift(abs(y));
n=-750:749;
plot(n,y)

