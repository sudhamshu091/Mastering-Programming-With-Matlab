t0=cputime; sierpinski(8); cputime-t0
sierpinski(1); for d=1:9; t0=cputime; sierpinski(d); t(d)=cputime-t0;
plot(t); grid on
% don't use the below one it can crash matlab
t0= cputime; sierpinski(12); cputime - t0 % don't try this with your matlab installed version
% You can try instead:
t0= cputime; sierpinski(2); cputime - t0
