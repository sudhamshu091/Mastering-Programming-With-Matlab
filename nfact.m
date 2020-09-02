function f=nfact(n)
    if ~isscalar(n) || n ~= fix(n) || n < 0
        error('Non negative integer scalar input expected');
    end
    if n==0
        f=1;
    else
        f=n*nfact(n-1);
    end
end


