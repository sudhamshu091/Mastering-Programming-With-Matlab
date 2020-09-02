function f=nfact(n)
    if ~isscalar(n) || n ~= fix(n) || n < 0
        error('Non negative integer scalar input expected');
    end
    f=1;
    for i = 1:n
        f = f * i;
    end
end
