[x,t]=generateWave(1,1000,3000,5);
X=abs(fft(x));
plot(linspace(-1500,1500,length(x)),fftshift(X));
figure;
exactpitch=[];
pitch=linspace(0,1500,length(x)/2);
for i=1:length(pitch)
   exactpitch(i)=compareToPitches(pitch(i) ,semitonePitchTable); 
end
exactpitch_=-1*flip(exactpitch);
exactpitch=[exactpitch_ exactpitch];
plot(exactpitch,fftshift(X));