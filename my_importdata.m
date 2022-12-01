%entro nella cartella nella quale sono contenuti i dati dei pazienti
cd EEG_data\

%con la funzione dir metto in a gli attributi relativi ai dati del tipo 'ad*.mat'
ad = dir('ad*.mat');

%creo un cell array nel quale siano contenuti le matrice dei pazienti malati
%load mi restituirebbe uno struct, per avere cell uso la funzione struct2cell
for index = 1:length(ad);  
    AD(index) = struct2cell (load(ad(index).name) );
end;

%ripeto per i pazienti sani
c = dir('c*.mat');

for index = 1:length(c);  
    C(index) = struct2cell (load(c(index).name) );
end;


%esco dalla cartella
cd ../



















% [statusA, list] = system( 'dir  ad*.mat' );
% resultA = textscan( list, '%s', 'delimiter', '\n' );
% fileListA = resultA{1};
% 
% [statusC, list] = system( 'dir /B /S c*.mat' );
% resultC = textscan( list, '%s', 'delimiter', '\n' );
% fileListC = resultC{1};
% 
% for indx = 1: length(fileListA)
%    load(fileListA{indx}) 
% end
% 
% for indx = 1: length(fileListC)
%    load(fileListC{indx}) 
% end
% 
% %utile per my_pwelch
% %sono due array 1x10 in cui in ogni colonna vi è la matrice contenente i
% %dati per quel paziente
% myCell_ad={ad01 ,ad02 ,ad03 ,ad04 ,ad05 ,ad06 ,ad07 ,ad08 ,ad09 ,ad10};
% myCell_c={c01 ,c02 ,c03 ,c04 ,c05 , c06 ,c07 ,c08 ,c09 ,c10};
% 
% % for cont=1 : 10
% %     if cont<10
% %         load(strcat('EEG_data/ ','ad0',num2str(cont),'.mat'))
% %         load(strcat('EEG_data/ ','c0',num2str(cont),'.mat'))
% %     end
% %     if cont==10
% %         load(strcat('EEG_data/ ','ad',num2str(cont),'.mat'))
% %         load(strcat('EEG_data/ ','c',num2str(cont),'.mat'))
% %     end
% % end

