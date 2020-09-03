%Write a recursive function called reversal that returns the input vector with its elements reversed. For example
% v = reversal([1 2 3])
%would set v equal to [3 2 1]. Of course, you can use the MATLAB indexing trick of 
% v = v(end:-1:1)
%but that would not be recursive. Don't ruin the fun!
%Hint: one way to do it manually: move the first element to last and reverse the rest of the vector. Try to formulate this algorithm in a recursive fasion.

function w=reversal(v)
if length(v) == 1
    w=v;
else
    w=[v(end) reversal(v(1:end-1))];
end
