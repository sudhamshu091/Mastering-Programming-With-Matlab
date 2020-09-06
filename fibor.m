function f = fibor(n)
    if n <= 2
        f = 1;
    elseif n > 2
        f = 2 + fibor(n-1) +fibor(n-2);
    end
end
