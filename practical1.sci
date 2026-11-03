t = linspace(0,3,1500);
x = 2*abs(2*(t-floor(t+0.5)))-1;
seg = x(1:500);
pad = [seg, zeros(1,1000)];

subplot(2,1,1); plot(t,x); xgrid();
title("Original Triangle Wave 3 periods)");
xlabel("Time (s)"); ylabel("Amplitude");
subplot(2,1,2); plot(t(1:500),seg);
title("Extracted Segment (One Full Period)");
xlabel("Time (s)"); ylabel("Amplitude");

disp(correl(x',pad'));

c = xcorr(x,pad);
n = (length(c)-1)/2;

figure(); plot(-n:n, c); xgrid();
title("Cross-correlation");
