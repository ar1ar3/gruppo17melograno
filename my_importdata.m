%function dataMat = my_importdata
cd EEG_data\

%con la funzione dir metto in a gli attributi relativi ai dati del tipo 'ad*.mat'
ad = dir('ad*.mat');

%creo un cell array nel quale siano contenuti le matrice dei pazienti malati
%load mi restituirebbe uno struct, per avere cell uso la funzione struct2cell
for index = 1:length(ad)
    AD(index) = struct2cell (load(ad(index).name) );
end

%ripeto per i pazienti sani
c = dir('c*.mat');

for index = 1:length(c)
    C(index) = struct2cell (load(c(index).name) );
end

%esco dalla cartella
cd ../

%end
