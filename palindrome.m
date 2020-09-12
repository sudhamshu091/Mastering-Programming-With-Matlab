%Write a function called palindrome that takes one input argument, a char vector and recursively determines whether 
%that argument is a palindrome. You are not allowed to use loops, not built-in function like strcmp, etc. The 
%function returns true or false. Note that to keep things simple, capitalisation, spaces and punctuation all matter.
%See example runs:
%>>palindrome('racecar')
%ans =
%    logical
%     1
%>>palindrome('live on timeemit no evil')
%ans =
%    logical
%     1
%>>palindrome('live on time, emit no evil')
%ans =
%    logical
%     0
%>>palindrome('Live on time emit no evil')
%ans =
%    logical
%     0
     
function w=palindrome(v)
    a=convertStringsToChars(v);
    s=strlength(v);
    if s==1
        w=true;
    elseif s==0
        w=true;   
    else 
        if a(1) ~= a(end)
            w=false;
        else
            w=palindrome(a(end-s+2:s-1));
        end
    end 
