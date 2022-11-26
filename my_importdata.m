%function to import data
dir();
for cont=1 : 10
    if cont<10
        load(strcat('EEG_data/ ','ad0',num2str(cont),'.mat'))
        load(strcat('EEG_data/ ','c0',num2str(cont),'.mat'))
    end
    if cont==10
        load(strcat('EEG_data/ ','ad',num2str(cont),'.mat'))
        load(strcat('EEG_data/ ','c',num2str(cont),'.mat'))
    end
end
