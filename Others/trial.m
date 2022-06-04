function [wave, x] = trial(fmin, fmax, fs, totaltime)

totalsamples = totaltime*fs; 
x = linspace(0.0001,totaltime+0.0001,totalsamples);
wave = zeros(1,totalsamples);

for i = 1:length(x)
    wave(i) = (sin(2*pi*(fmax-fmin)*x(i)).*cos((fmin+fmax)*x(i)/2))./(2*pi*(fmax-fmin)*x(i));
end
