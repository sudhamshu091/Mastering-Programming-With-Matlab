%Write a recursive function called recursive_max that finds the maximum element in a vector. You are not allowed to use loops or any built-in functions. The sole
%output argument is the maximum value in the input vector. Hint: the maximum value of a vector is the larger of its first element and the maximum of the rest of the
%elements

function mx=recursive_max(v)
    if length(v)==1
        mx = v;
    elseif v(end) < recursive_max(v(1:end-1))
        mx = recursive_max(v(1:end-1));
    else
        mx=v(end);
    end
end
