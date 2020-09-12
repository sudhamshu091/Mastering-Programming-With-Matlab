Write a function called palindrome that takes
function w=palindrome(v)
    a=convertStringsToChars(v);
    s=strlength(v);
    if s==1
        w=true;
    elseif s==0
        w=true;
    a=convertStringsToChars(v);    
    else 
        if a(1) ~= a(end)
            w=false;
        else
            w=palindrome(a(end-s+2:s-1));
        end
    end 
