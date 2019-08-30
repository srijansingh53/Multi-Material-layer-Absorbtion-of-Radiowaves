load extraction.mat data;
x=0.1;
k = M1(:,1);
e = M1(:,2);
display(x);    
Z = e.*((377*cos(k.*x)+1i*e.*sin(k.*x))./(e.*cos(k.*x)+1i*377*sin(k.*x)));
f = data(1:51,2);

R = 20*log(abs((Z-377)./(Z+377)));
scatter(f,R,[20],[0 0 1],'filled');
title('Scatter plot of RC vs freq. for different single layers');
xlabel('Frequency(Hz)'); 
ylabel('Reflection Coeffocient');


save('M1.mat', 'R', 'x');