%Remember the example from the video that showed how to return a function handle to a nested function that computed the value of a polynomial? Here it is:
function fh = get_polynomial_handle(p)
	function polynomial = poly(x)
		polynomial = 0;
		for ii = 1:length(p)
			polynomial = polynomial + p(ii) .* x.^(ii - 1);
		end
	end
	fh = @poly;
end

%It takes a vector of coefficients p, defines a function that returns the value of the polynomial given the scalar input x, and returns a function handle to it. Here is an example run:
>>>p = get_polynomial_handle(1:5)
p =
	function_handle with value:
		@get_polynomial_handle/poly
>>>p(1)
ans =
	15
%Your task is simple: modify the code above so that it does not use any loops.

%%%%%%%%%%%%%%%%%%%%
		
function fh =poly_fun(p)
function polynomial = poly(x)
polynomial = sum(p.*x.^(0:length(p) - 1));
end
fh = @poly;
end
