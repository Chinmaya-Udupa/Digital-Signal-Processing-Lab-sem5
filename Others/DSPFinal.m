Fstart=1;
Fstop=1000;
Fs=10000;
[x,t]=generateWave(Fstart,Fstop,Fs,5);
X=abs(fft(x));
plot(linspace(-Fs/2,Fs/2,length(x)),fftshift(X));
title('FT of frequency sweep');
figure;
pitch=linspace(0,Fs/2,length(x)/2);
exactpitch=zeros(1,length(pitch));
for i=1:length(pitch)
   exactpitch(i)=compareToPitches(pitch(i) ,PitchTable); 
end
exactpitch_=-1*flip(exactpitch);
exactpitch=[exactpitch_ exactpitch];
stem(exactpitch,fftshift(X));
title('pitch corrected graph');