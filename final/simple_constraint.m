function [c, ceq] = simple_constraint(x)

c = [x(3)+x(4)-2.1];
% No nonlinear equality constraints:
ceq = [];