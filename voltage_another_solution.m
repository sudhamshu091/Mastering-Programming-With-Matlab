function output = voltage( v, r )
%Finding out the rows of the resistance matrix one by one
matRow1 = [r(1)+r(2), -r(1), -r(2), 0,  0];
matRow2 = [-r(1), r(1)+r(3)+r(7), -r(7), -r(3), 0];
matRow3 = [-r(2), -r(7), r(2)+r(4)+r(7), 0, -r(4)];
matRow4 = [0, -r(3), 0, r(3)+r(5)+r(8), -r(8)];
matRow5 = [0, 0, -r(4), -r(8), r(4)+r(6)+r(8)];

resMatrix = [matRow1; matRow2; matRow3; matRow4; matRow5]; %resistance matrix
voltageVector = [v; 0; 0; 0; 0]; %Right side of the linear equations
currentVector = resMatrix\voltageVector; %Finding out the current vectors
va = v - r(1)*(currentVector(1) - currentVector(2)); %dont't mess with loop current with current index
vb = v - r(3)*(currentVector(2) - currentVector(4)); %current index = loop number of current + 1
vc = v - r(5)*currentVector(4);                      %as root loop current is indexed 1
output = [va; vb; vc];

end
