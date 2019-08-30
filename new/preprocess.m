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

serial = [0 1 2 3 4]';
pop = [data(1:51,2) M1(:,2) M2(:,2) M3(:,2) M4(:,2)];
pop = [serial pop'];
fork = data_cplx(:,3).*data_cplx(:,4);
fk = [fork(1:51,:) fork(52:102,:) fork(103:153,:) fork(154:204,:)]';

save('preprocess.mat', 'M1','M2','M3','M4', 'pop','fk');