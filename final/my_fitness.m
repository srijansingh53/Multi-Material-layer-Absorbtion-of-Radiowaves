function RC = my_fitness(x)
    u = 51;
    load preprocess.mat pop fk;
    load main.mat pop1;
    
    freq = pop(1,u+1);
    idx1 = find(pop(2:6,u+1)==x(1));
    idx2 = find(pop(2:6,u+1)==x(2));
    
    k1 = 0.001*2*pi*freq*sqrt(1.112e-17*fk(idx1,u));
    k2 = 0.001*2*pi*freq*sqrt(1.112e-17*fk(idx2,u));
    
    Z1 = x(1)*((377*cos(k1*x(3))+1i*x(1)*sin(k1*x(3)))/(x(1)*cos(k1*x(3))+1i*377*sin(k1*x(3))));
    Z2 = x(2)*((Z1*cos(k2*x(4))+1i*x(2)*sin(k2*x(4)))/(x(2)*cos(k2*x(4))+1i*Z1*sin(k2*x(4))));
    RC2 = 20*log(abs((Z2-377)/(Z2+377)));
    
    
    
    RC = RC2;
    save('my_fitness.mat', 'RC', 'k1', 'idx1','idx2');
end

    
   
    
    
  