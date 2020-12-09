%Given a set of approximate x and y coordinates of points in a plane, determine the best fitting line in the least square sense. Using the standard formula of a line: ax + b = y,
%compute a and b. That is, write a function called lin_reg that takes two row vectors of the same length called x and y as input arguments(containing x and y coordinates of points)
%and returns two scalars, a and b specifying the line, as output arguments. Here is an example run:
>> [a b] = lin_reg([0 2],[0 2])
a =
 1
b =
 0 
%Here is what you should see when you hit the "Run Function" button below:
%Image Link: "https://github.com/sudhamshu091/Mastering-Programming-With-Matlab/blob/master/linear_regression.jpg" 

%Hint: reformulate the problem so that you can use MATLAB's built-in linear equation solving support, i.e., the \ operator. Keep in mind that in our case in the line equation ax + b =y,
%a and b are the unknowns and not x what we usually have in a system of linear equations. So, there is some math and thinking involved!

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [a,b] = lin_reg(x,y)
M = [x; ones(1,length(x))]';
sol = M\y';
a = sol(1);
b = sol(2);
end
