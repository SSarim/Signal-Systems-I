function [lambda] = CH2MP2(R,C)

% coefficients for the characteristic equation:
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];
% characteristic roots:
lambda = roots(A)

end