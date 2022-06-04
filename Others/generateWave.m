function [wave, x] = generateWave(fmin, fmax, fs, totaltime)

totalsamples = totaltime*fs; 
x = linspace(0,totaltime,totalsamples);
wave = zeros(1,totalsamples);

for i = 1:length(x)
    wave(i) = 10*sin((fmin*totaltime*(fmax/fmin)^(x(i)/totaltime)/log(fmax/fmin))*2*pi);
end
end
