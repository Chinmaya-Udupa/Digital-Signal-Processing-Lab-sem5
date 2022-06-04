function [S ,F ,T ,Y] = quickSpectrogram(wave,winsize,nfft,hpsonoff)
%%Quick spectrogram function with HPS ability and certain preset arguments

[S,F,T]=spectrogram(wave, blackman(winsize), winsize/2, nfft, 10000);

bins = length(S(1,:));

if (hpsonoff ~= 0)
    Y = abs(S);
    for i = 1:bins
        Y(:,i) = hps(Y(:,i));
    end
    displaySpectrogram(Y, F, T);
else
Y = displaySpectrogram(S, F, T);
end

end