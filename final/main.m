load preprocess.mat pop fk;

u = 51;
initial_t = [0.7 1.1 1.3 1.7 2.0]';
pop1 = [pop(2:6,u+1) pop(2:6,u+1) initial_t initial_t] ;
save('main.mat', 'pop1');

ObjectiveFunction = @my_fitness;
ConstraintFunction = @simple_constraint;
nvars = 4;    % Number of variables
LB = [];   % Lower bound
UB = [];  % Upper bound
MaxGenerations = 10;


options = optimoptions(@ga, 'InitialpopulationMatrix', pop1, 'populationSize', 5, 'CrossoverFraction', 1.0,'MaxGenerations', MaxGenerations, 'OutputFcns',@my_view);
[x,fval]= ga(ObjectiveFunction,nvars,[],[],[],[],LB,UB,ConstraintFunction,options);

    
save('main.mat', 'pop1', 'x','fval');

% finalvalue = 20*log(abs(fval));
