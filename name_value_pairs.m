%Name-Value pairs are frequently used in programming.For our purposes here,a name-value pair consists of a name(a char vector) and a value that can be of any data type.
% Write a function named name_value_pairs that has a variable number of input arguments representing name-value pairs. Naturally, they come in pairs: the first is the name, the next is the value. This means that the function must be called with an even number of actual input arguments. The function returns a single cell array which has exactly two columns:the first column contains the names, while the second column contains the values. If the function is called with no input arguments, or it is called with an odd number of inputs or if a name is not of char type,the function returns an empty cell array.Here is an example run:
db = name_value_pairs('name','John Smith','age',32,'children',{'Joe','Jill'})
db =

  3×2 cell array

    {'name'    }    {'John Smith'}
    {'age'     }    {[        32]}
    {'children'}    {1×2 cell    }
    
function out = name_value_pairs(varargin)
if nargin>0 && rem(nargin, 2) == 0
    out = cell(nargin/2, 2);
    for ii = 1:nargin
        if rem(ii,2) ~= 0
            if ischar(varargin{ii}) 
                out{(ii+1)/2,1} = varargin{ii};
            else
                out ={};
                return;
            end
        else
            out{ii/2,2} = varargin{ii};
        end
    end
else
    out = {};
end  
end


