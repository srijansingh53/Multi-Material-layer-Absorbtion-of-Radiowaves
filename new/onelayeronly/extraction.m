% folder_name = uigetdir();
% file_ext = '.csv';
% 
% for i = 1:5
%     filename = [folder_name, '\data', int2str(i), file_ext];
%     %tmpData 
MEAS.INfolder='E:\Faculty Projects\Panwar- Particle Swarm Optimization\new\onelayeronly';
% cd (MEAS.INfolder);
csvFiles=dir('*.csv');
numfiles=length(csvFiles);
for k=1:numfiles
  fid = fopen(csvFiles(k,1).name);
  filedata{k} = textscan(fid,'%n %n %n %n %n', 'Delimiter',',');
  fclose(fid); 
end
mergeddata = [filedata{:}];
matriz = cell2mat(mergeddata);
tmp =[];
for i=1:5:20
    tmp = vertcat(tmp, matriz(:,i:i+4));
end
k=[];
m=1;
for i=1:204
    k(i)=m;
    if mod(i,51)==0
        m=m+1;
    end
end
k = reshape(k,[204,1]);
data = [k tmp];
save('extraction.mat', 'data');