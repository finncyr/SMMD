t = 0:1/48000:1;
f = 0:24000;
yc = chirp(t, 0, 10, 24000);
yg = rand(1,length(t));

subplot(2,3,1);
plot(t,yc)
ylabel('Chirp');
xlabel('t in s');

hold on;

subplot(2,3,2);
plot(t,yg)
ylabel('White Noise');
xlabel('t in s');

[UNKNOWN, Fs] = audioread('unknown_filter.wav');

subplot(2,3,3);
plot(abs(UNKNOWN))
ylabel('h aus file');
xlabel('t');


subplot(2,3,4);
semilogx(abs(fft(UNKNOWN)))
ylabel('Fequenzgang');
xlabel('f');


g = filter(UNKNOWN,1, yg);

H = tfestimate(yg, g, hann(length(g)));

subplot(2,3,5);
semilogx(abs(h))
%xlim([1*10^4 2*10^4]);
ylabel('H');

subplot(2,3,6);
semilogx(abs(ifft(H)))
ylabel('h');
