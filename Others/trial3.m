[s,t]=generateWave(1,3000,10000,5);
s=s + (rand(1, length(s)) - 1)*10;
[S,F,T]=spectrogram(s, blackman(1000), 500, 2048, 10000);
uimagesc(T,F,abs(S));  
colorbar;
axis xy;
xlabel('Time (s)');
ylabel('Freq (Hz)');
figure;


%%pitchcorrection
Sc = pitchCorrector(S, F, semitonePitchTable);
Sc = conj(Sc);
uimagesc(T,F,abs(Sc));  
colorbar;
axis xy;
xlabel('Time (s)');
ylabel('Freq (Hz)');

% sc = istft(Sc,1024,1000,500);
% [S_,F_,T_]=spectrogram(sc, blackman(1000), 500, 2048, 10000);
% uimagesc(T_,F_,abs(S_));  
% colorbar;
% axis xy;
% xlabel('Time (s)');
% ylabel('Freq (Hz)');