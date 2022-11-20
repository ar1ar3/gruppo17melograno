%function to import data
dir();
for cont=1 : 10
    if cont<10
        load(strcat('ad0',num2str(cont),'.mat'))
        load(strcat('c0',num2str(cont),'.mat'))
    end
    if cont==10
        load(strcat('ad',num2str(cont),'.mat'))
        load(strcat('c',num2str(cont),'.mat'))
    end
end
