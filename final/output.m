load main.mat pop1 x fval;
load extraction.mat data;

idx1 = find(data_final(:,3)==x(1));
idx2 = find(data_final(:,3)==x(2));

firstmat_no = data_final(idx1,1);
secondmat_no = data_final(idx2,1);

if firstmat_no == 1
    MAT1 = M1;
elseif firstmat_no == 2
    MAT1 = M2;
elseif firstmat_no == 3
    MAT1 = M3;
elseif firstmat_no == 4
    MAT1 = M4;
elseif firstmat_no == 5
    MAT1 = M5;
end   


if secondmat_no == 1
    MAT2 = M1;
elseif secondmat_no == 2
    MAT2 = M2;
elseif secondmat_no == 3
    MAT2 = M3;
elseif secondmat_no == 4
    MAT2 = M4;
elseif secondmat_no == 5
    MAT2 = M5;
end 
    
% MAT1 = M3;
% MAT2 = M5;
% 
% x(3) = 1.5;
% x(4) = 0.5;


Z1 = (MAT1(:,2).*(377*cos(x(3)*MAT1(:,1))+1i*MAT1(:,2).*sin(MAT1(:,1)*x(3))))./(MAT1(:,2).*cos(MAT1(:,1)*x(3))+1i*377*sin(MAT1(:,1)*x(3)));
R1 = 20*log(abs((Z1-377)./(Z1+377)));

Z2 = (MAT2(:,2).*(Z1.*cos(x(4)*MAT2(:,1))+1i*MAT2(:,2).*sin(MAT2(:,1)*x(4))))./(MAT2(:,2).*cos(MAT2(:,1)*x(4))+1i*Z1.*sin(MAT2(:,1)*x(4)));
R2 = 20*log(abs((Z2-377)./(Z2+377)));


avg = mean(R2);

scatter(data(1:51,2),R2,[20],[0 0 0],'filled');

title('Scatter plot of RC vs freq. for different single layers');
xlabel('Frequency(Hz)'); 
ylabel('Reflection Coeffocient');
savefig("1.fig");








% mat1 = data(idx1,1);
% mat2 = data(idx2,1);
% 
% fprintf('First layer: Material %d ', mat1);
% fprintf('thickness: %d', x(1,3));
% fprintf('\n');
% 
% fprintf('Second layer: Material %d ', mat2);
% fprintf('thickness: %d', x(1,4));
% fprintf('\n');