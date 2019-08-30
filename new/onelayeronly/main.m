t = 3.0/100;
pop = 0.1:t:3.0;
pop = pop';
popsize = size(pop);

ObjectiveFunction = @my_fitness;
ConstraintFunction = @simple_constraint;
nvars = 1;    % Number of variables
LB = [];   % Lower bound
UB = [];  % Upper bound
MaxGenerations = 8;


options = optimoptions(@ga, 'InitialPopulationMatrix', pop, 'populationSize', 97, 'MaxGenerations', MaxGenerations,'CrossoverFraction', 1.0, 'OutputFcns',@my_view);
[x,fval]= ga(ObjectiveFunction,nvars,[],[],[],[],LB,UB,ConstraintFunction,options);

