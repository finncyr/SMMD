function g = overlapAdd(s,h)
  n1 = 3;
  n2 = length(h);
  m = n1 + n2 - 1;
  h = [h;zeros(m-length(h)+1,1)];
  tempS = zeros(1, n1);
  g = zeros(length(s),1);
  H = fft(h);
    %hz = zeros(1,M);
    %hz(1:length(h)) = h;
  disp(n1-1);
  disp(length(s)-m);
  for i = 1:n1-1:length(s)-m
    tempS = [s(i:i+n1);zeros(m-n1,1)];
    disp(tempS);
    S = fft(tempS);
    disp(length(H));
    disp(length(S));
    disp(length(g(i:i+m-1)));
    g(i:i+m) = g(i:i+m) + ifft(S.*H);  
  end
    
 end
    
    