function RC = my_fitness(x)
%     disp(popinitial)
    load extraction.mat data;
    load main.mat pop;
%     disp(data)
    idx1 = find(pop==x(1));
    idx2 = find(pop==x(2));
    
    f = data(:,2);
    f1 = f(idx1);
    f2 = f(idx2);
    
    mew1 = data(idx1,3)-1i*data(idx1,4);
    mew2 = data(idx2,3)-1i*data(idx2,4);
    
    eps1 = data(idx1,5)-1i*data(idx1,6);
    eps2 = data(idx2,5)-1i*data(idx2,6);
  
    eta1 = 377*x(1);
    k1 = 0.001*2*pi*f1*sqrt(1.112e-17*mew1*eps1);
    Z1 = eta1*((377*cos(k1*x(3))+1i*eta1*sin(k1*x(3)))/(eta1*cos(k1*x(3))+1i*377*sin(k1*x(3))));
%     RC1 = (Z1-377)/(Z1+377);
    
    k2 = 0.001*2*pi*f2*sqrt(1.112e-17*mew2*eps2);
    eta2 = 377*x(2);
    Z2 = eta2*((Z1*cos(k2*x(4))+1i*eta2*sin(k2*x(4)))/(eta2*cos(k2*x(4))+1i*Z1*sin(k2*x(4))));
    RC2 = (Z2-377)/(Z2+377);
    
    RC = RC2;
%     save('my_fitness.mat', 'RC', 'k1', 'k2');
end
