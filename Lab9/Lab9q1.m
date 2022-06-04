clc

%% Recording 
a=audiorecorder(10000,8,1);
disp('start');
recordblocking(a,5);
disp('stop');

%% Coverting audio into vector and adding noise
x=getaudiodata(a);
y=awgn(x,15,'measured');
X=abs(fft(x));
Y=abs(fft(y));
%play(a)
%pause(6)
%sound(y,10000)

%% Filtering
h=Kaiser_window;
x_recovered=conv(h,y);
Xc=abs(fft(x_recovered));

%% Time domain plots
subplot(3,1,1)
plot(x);
ylabel('Original Signal');
subplot(3,1,2)
plot(y);
ylabel('Signal+Noise');
subplot(3,1,3)
plot(x_recovered);
xlim([0 length(x)]);
ylabel('Signal after filtering');
sgtitle('In Time Domain')

figure;

%% Freq domain plots
freq=linspace(-5000,5000,length(x));
freqh=linspace(-5000,5000,length(x_recovered));
subplot(3,1,1)
plot(freq,fftshift(X));
ylabel('Original Signal');
subplot(3,1,2)
plot(freq,fftshift(Y));
ylabel('Signal+Noise');
subplot(3,1,3)
plot(freqh,fftshift(Xc));
ylabel('Signal after filtering');
sgtitle('In Frequency Domain');