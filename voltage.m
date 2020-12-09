%See the image of a passive electrical circuit below. Write a function called voltage that computes the voltages at junctions A,B and C. The function has two inputs, V for the
%voltage of the supply in volts and R, a vector of the values of the resistors in ohm. in the figure is R(1), that is, the first element of the vector R. In general, RN is R(N). The
%output of the function is a three-element column vector with the voltage levels at junctions A, B and C, respectively.
%To compute the voltage levels, we can use Kirchhoff's first law (https://en.wikipedia.org/wiki/Kirchoff%27s_first_law)that states that the sum of current flowing in and out of a junction must be zero. So, for example, here is the
%junction must be zero. So, for example, here is the equation for junction A:
%(V − A)/R1 − (A − B)/R7 − A/R2 = 0
%The current across a resistor is the voltage difference divided by the resistance, i.e, iN = (Vin − Vout)/RN . You have to be careful that you use the correct sign for inflow and outflow. In
%the above equation, we assumed that A > B , so the current flows out, hence, the negative sign. But if the assumption was wrong,that will still work since A - B will then be 
%negative, so overall, it will turn into a positive inflow value.
%You need to write the remaining two equations for junctions B and C and rearrange the equations to get the canonical form so that we can use MATLAB's support for solving linear
%equations.
%Good values to check your function with:
%R1 = 0 means s that A must be at V level. Same for R3 and R5 for B and C, respectively,
%R2 = 0 makes A = 0. Same for R4 and R6 for B and C, respectively.
%If R1/R2 = R3/R4 = R5/R6 then A,B and C will be at the samelevel independent of R7 and R8.

<a href="google.com"></a>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function sol = voltage(V,R)
M = [R(2)*R(7) + R(1)*R(2) + R(1)*R(7), -R(1)*R(2), 0; -R(3)*R(4)*R(8), R(4)*R(7)*R(8) + R(3)*R(4)*R(8) + R(3)*R(4)*R(7) + R(3)*R(7)*R(8), -R(3)*R(4)*R(7); 0, -R(5)*R(6), R(6)*R(8) + R(5)*R(6) + R(5)*R(8)];
	y = V*[R(2)*R(7);R(4)*R(7)*R(8);R(6)*R(8)];
	sol = M\y;
end
