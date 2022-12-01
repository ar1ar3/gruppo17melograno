%function to import data
[statusA, list] = system( 'dir /B /S ad*.mat' );
resultA = textscan( list, '%s', 'delimiter', '\n' );
fileListA = resultA{1};

[statusC, list] = system( 'dir /B /S c*.mat' );
resultC = textscan( list, '%s', 'delimiter', '\n' );
fileListC = resultC{1};

for indx = 1: length(fileListA)
   load(fileListA{indx}) 
end

for indx = 1: length(fileListC)
   load(fileListC{indx}) 
end


% for cont=1 : 10
%     if cont<10
%         load(strcat('EEG_data/ ','ad0',num2str(cont),'.mat'))
%         load(strcat('EEG_data/ ','c0',num2str(cont),'.mat'))
%     end
%     if cont==10
%         load(strcat('EEG_data/ ','ad',num2str(cont),'.mat'))
%         load(strcat('EEG_data/ ','c',num2str(cont),'.mat'))
%     end
% end

