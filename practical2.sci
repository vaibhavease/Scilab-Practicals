t = 0:0.01:1;
x = sin(10*%pi*t);
up = zeros(1,202); up(1:2:$) = x;

subplot(3,1,1); plot(t,x);
xtitle("Original Signal","Time","Amplitude");
subplot(3,1,2); plot(t(1:2:$),x(1:2:$),"r");
xtitle("Downsampled Signal (Factor = 2)","Time","Amplitude");
subplot(3,1,3); plot(linspace(0,1,202),up,"g");
xtitle("Upsampled Signal (Factor = 2)","Time","Amplitude");

figure(); plot((0:100)*100/101,abs(fft(x))); xgrid();
xtitle("Magnitude Spectrum (FFT/DFT)","Frequency (Hz)","|X(f)|");
