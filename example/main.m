ObjectiveFunction = @simple_fitness;
nvars = 3;    % Number of variables
LB = [0.091 0.091 0.001];   % Lower bound
UB = [2.05 2.05 0.5];  % Upper bound
ConstraintFunction = @simple_constraint;
options = optimoptions(@ga,'MutationFcn',@mutationadaptfeasible);
[x,fval] = ga(ObjectiveFunction,nvars,[],[],[],[],LB,UB, ...
    ConstraintFunction,options)
disp("    u1          u2          t1"); % u1= pearmeability of layer1, u2= pearmeability of layer2, t1= thikness of layer1
disp(x);