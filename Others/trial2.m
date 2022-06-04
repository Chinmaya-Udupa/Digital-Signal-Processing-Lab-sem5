[y,t]=generateWave(1,1600,10000,1);
Y=abs(fft(y));
pitch=linspace(0,5000,length(t)/2);
exatpitch=[];
for i=1:length(pitch)
    exatpitch(i)=compareToPitches(pitch(i),semitonePitchTable);
end
exatpitch2=flip(exatpitch);
exactpitch=[exatpitch2,exatpitch];
plot(linspace(-5000,5000,length(t)),fftshift(Y));
figure;
plot(exactpitch,fftshift(Y));
uimage()
istft()