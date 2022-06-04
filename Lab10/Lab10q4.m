clc;
clear;

[audio,fs]=audioread('Noisyfile1.wav');
fftaudio=(fftshift(fft(audio)));
plot(linspace(-fs/2,fs/2,length(fftaudio)),abs(fftaudio));
title('input audio spectrum');
figure;

[bn,an]=cheby1(3,0.5,[2450 2550]/(fs/2),'stop');
freqz(bn,an);
title('notch filter at 2500 hz');
figure;

hn=impz(bn,an);
filtered=conv(hn,audio);
fftfiltered=(fftshift(fft(filtered)));

plot(linspace(-fs/2,fs/2,length(fftfiltered)),abs(fftfiltered));
title('filtered audio spectrum');