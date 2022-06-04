clc;
clear;

Fs=8000;
Fpass=2000;
Fstop=2800;
Ap=1;
As=60;

wpass=2*Fpass/Fs;
wstop=2*Fstop/Fs;

[B,wB]=buttord(wpass,wstop,Ap,As);
[Bb,Ba]=butter(B,wB);
[zB,pB,kB]=butter(B,wB);
[butternum,butterden]=zp2tf(zB,pB,kB);
Butterworth=tf(butternum,butterden);
pzmap(Butterworth)
title('Butterworth');
figure;

[C1,wC1]=cheb1ord(wpass,wstop,Ap,As);
[C1b,C1a]=cheby1(C1,Ap,wpass);
[zC1,pC1,kC1]=cheby1(C1,Ap,wpass);
[cheb1num,cheb1den]=zp2tf(zC1,pC1,kC1);
Chebyshev1=tf(cheb1num,cheb1den);
pzmap(Chebyshev1)
title('ChebyShev Filter Type-1');
figure;

[C2,wC2]=cheb2ord(wpass,wstop,Ap,As);
[C2b,C2a]=cheby2(C2,As,wstop);
[zC2,pC2,kC2]=cheby2(C2,As,wstop);
[cheb2num,cheb2den]=zp2tf(zC2,pC2,kC2);
Chebyshev2=tf(cheb2num,cheb2den);
pzmap(Chebyshev2)
title('Chebyshev Filter Type-2 ');

figure;
freqz(Bb,Ba);
hold on;
freqz(C1b,C1a);
hold on;
freqz(C2b,C2a);
ylim([-100 5]);
title('Frequency Response of the 3 Filters');