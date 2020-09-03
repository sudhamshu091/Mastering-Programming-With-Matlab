%Write a recursive function called digit_sum that computes the sum of the digits of a positive integer provided as an input argument. You do not have to check the 
%input. You are not allowed to use loops orstring conversion functions like str2num. As an illustration, the sum of the digits of the number 12345 is 15. Hint: 
%Consider what mathematical operation you need to get the last digit of a base 10 number.

function output = digit_sum(n)
    if n<10
        output = fix(n);
    end
    if n>0
        output = mod(n,10)+digit_sum(fix(n*0.1));
    end
end
