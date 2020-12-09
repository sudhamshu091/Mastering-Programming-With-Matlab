function s = mixit(S,w)
    if size(S,2) ~= length(w)
        s = [];
    else
        w = w(:);                           % make sure it is a column vector
        S = 2 * double(S) / (2^16 - 1) - 1; % scale and shift it to the interval [-1 1]
        s = S * w;                          % matrix multiplication does what we need
        if max(abs(s)) > 1                  % make sure to stay within range
            s = s / max(abs(s));
        end
    end
end
