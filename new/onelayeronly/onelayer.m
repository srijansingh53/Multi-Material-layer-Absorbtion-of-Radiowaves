load extraction.mat data;

data_cplx = [data(:,1) data(:,2) data(:,3)-1i*data(:,4) data(:,5)-1i*data(:,6)];
data_eta = [data_cplx(:,1) data_cplx(:,2) 377*sqrt(data_cplx(:,3)./data_cplx(:,4))];
k = 0.001*2*pi*data(:,2).*sqrt(1.112e-17*(data_cplx(:,3).*data(:,4)));
% data_Z = [data_eta(:,1) data_eta(:,3).*((377*cos(k.*)+1i*eta1*sin(k1*x(3)))/(eta1*cos(k1*x(3))+1i*377*sin(k1*x(3))));
data_final = [data(:,1) k data_eta(:,3)];

M1 = data_final(1:51,2:3);
M2 = data_final(52:102,2:3);
M3 = data_final(103:153,2:3);
M4 = data_final(154:204,2:3);

save('onelayer.mat', 'M1','M2','M3','M4');


% Z1 = M1(:,2).*((377*cos(T1*M1(:,1))+1i*M1(:,2).*sin(M1(:,1)*T1))./(M1(:,2).*cos(M1(:,1)*T1)+1i*377*sin(M1(:,1)*T1)));
% R1 = 20*log(abs((Z1-377)./(Z1+377)));
% title('Scatter plot of RC vs freq. for different single layers');
% xlabel('Frequency(Hz)'); 
% ylabel('Reflection Coeffocient');
% scatter(data(1:51,2),R1,[20],[0 0 1],'filled');
% hold on;
% 
% Z2 = M2(:,2).*((377*cos(T2*M2(:,1))+1i*M2(:,2).*sin(M2(:,1)*T2))./(M2(:,2).*cos(M2(:,1)*T2)+1i*377*sin(M2(:,1)*T2)));
% R2 = 20*log(abs((Z2-377)./(Z2+377)));
% scatter(data(52:102,2),R2,[20],[0 1 0],'filled');
% 
% Z3 = M3(:,2).*((377*cos(T3*M3(:,1))+1i*M3(:,2).*sin(M3(:,1)*T3))./(M3(:,2).*cos(M3(:,1)*T3)+1i*377*sin(M3(:,1)*T3)));
% R3 = 20*log(abs((Z3-377)./(Z3+377)));
% scatter(data(103:153,2),R3,[20],[1 0 0],'filled');
% 
% Z4 = M4(:,2).*((377*cos(T4*M4(:,1))+1i*M4(:,2).*sin(M4(:,1)*T4))./(M4(:,2).*cos(M4(:,1)*T4)+1i*377*sin(M4(:,1)*T4)));
% R4 = 20*log(abs((Z4-377)./(Z4+377)));
% scatter(data(154:204,2),R4,[20],[0 1 1],'filled');
% 
% title('Scatter plot of RC vs freq. for different single layers');
% xlabel('Frequency(Hz)'); 
% ylabel('Reflection Coeffocient (dB)');
% legend({'M1', 'M2','M3', 'M4'},'Location','best')