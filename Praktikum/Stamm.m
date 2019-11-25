[y,Fs] = audioread('Lord of the Boards.wav');
audiowrite('Lord of the bank.wav',y,30);
player = audioplayer(y,Fs)


t = ((1:length(y))'/Fs);
plot(t,y);

fft_length = 4069;
Y = fft(y(1:fft_length));
Y=Y(1:fft_length/2+1);
f=(0:length(Y)-1)/fft_length*Fs;
plot(f, 20*log10(abs(Y)));

Y1 = fft(y(1:fft_length));
Y1=Y1(1:fft_length/2+1);
f=(0:length(Y1)-1)/fft_length*Fs;
plot(f, 20*log10(abs(Y1)));
r = audiorecorder(8000, 16, 1);

