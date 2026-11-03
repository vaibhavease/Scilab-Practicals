[s, fs] = wavread('C:\Users\ashut\Downloads\Sample_wave.wav');
s = mean(s, 1);
s = s / max(abs(s));
c = conv(s, ones(1,1000)/1000, 'same');
t = linspace(0, length(s)/fs, length(s));

subplot(2,1,1); plot(t, s);
title('Original Sound Signal');
subplot(2,1,2); plot(t, c);
title('Convolved Signal (Smoothed)');

wavwrite(c, fs, 'C:\Users\ashut\Downloads\convolved_audio.wav');


