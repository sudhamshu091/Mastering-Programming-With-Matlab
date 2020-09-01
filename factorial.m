function f=rfact(n)
    if n==0
        f=1;
    else
        f=n*rfact(n-1);
    end
end


