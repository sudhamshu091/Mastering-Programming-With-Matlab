%Write a recursive function called fibor that computes the first n elements of the Fibonacci series where n is sole input argument. You are not allowed to use loops.
%F(n) ={ 1             if n<=2
%        F(n-1)+F(n-2) otherwise }
%Here are the first few elements: 1 1 2 3 5 8 13 ...
% Don't use fibor() call more than once for efficient functioning.
        
function f = fibor(n)
    if n==1
        f=[1];
    elseif n==2
        f=[1 1];
    else
        a=fibor(n-1);
        f=[a sum(a(end)+a(end-1))];
    end
end
