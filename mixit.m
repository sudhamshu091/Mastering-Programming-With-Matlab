
function v = mixit(M,N)
	if size(M,2) ~= length(N)
		v = [];
	else
		N = N(:);
		M = 2*double(M)/(2^16-1)-1;
		v = M*N;
		if max(abs(v)) > 1;
		end
	end
end
