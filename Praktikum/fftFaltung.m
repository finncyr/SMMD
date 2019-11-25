function out = fftFaltung(in, h)
tic;
    hz = zeros(1,length(in)+length(h)-1);
    inz = zeros(1,length(in)+length(h)-1);
    inz(1:length(in)) = in(:,1);
    hz(1:length(h)) = h;
    
    IN = fft(inz);
    H = fft(hz);
    
    OUT = IN.*H;
    
    out = ifft(OUT);
    toc;
end