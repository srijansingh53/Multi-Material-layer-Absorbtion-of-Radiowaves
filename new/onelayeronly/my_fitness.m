function RC = my_fitness(x)
    
    load onelayer.mat M1 M2 M3 M4; 
    
    k = M1(:,1);
    e = M1(:,2);
    
    Z = e.*((377*cos(k.*x)+1i*e.*sin(k.*x))./(e.*cos(k.*x)+1i*377*sin(k.*x)));
    
    RC = sum(20*log(abs((Z-377)./(Z+377))));
    
    save('my_fitness.mat', 'RC');
end