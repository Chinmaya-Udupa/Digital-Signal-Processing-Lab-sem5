clc;
clear;
N=6;
W=[zeros(N,N)];
x=[zeros(1,N)];
for i=1:N
    for j=1:N
        W(i,j)=exp(1i*(8*pi/N)*(i-1)*(j-1));
    end
    %x(i)=6*(cos(0.2*pi*i)^2);
end
%stem(x)
x=[4 3 2 1 0 0];
y=fft(x,N);
z=real(y);
g=ifft(z)
% x1=[zeros(7,8)];
% x=[x ; x1];
% y1=W.*x;