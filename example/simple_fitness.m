function y = simple_fitness(x)
%SIMPLE_FITNESS fitness function for GA

%   Copyright 2004 The MathWorks, Inc.
  k=1.67582; % for simplicity i have taken k same for both the layers 
  rm = (x(1))-(x(2))/(x(1)+x(2));
  y = (rm-exp(-2j*1.2*x(3)))/(1-rm*exp(-2j*1.2*x(3)));
  
