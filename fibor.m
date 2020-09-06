function f = fibor(n)
    if n==1
        f=[1];
    elseif n==2
        f=[1 1];
    else
        a=fibor(n-1);
        f=[fibor(n-1) sum(a(end)+a(end-1))];
    end
end
