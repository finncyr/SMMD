function out = Faltung(in, h)
    out = zeros(1,length(in)+length(h)-1);
    
    for n = 1:(length(in)+length(h)-1)
        for m = max(1, n+1-length(h)):1:min(n, length(in))
            out(n) = out(n) + in(m)*h(n-m+1);
        end
    end
    

end