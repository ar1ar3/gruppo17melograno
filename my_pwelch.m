function [PXX, f] = my_pwelch(segnale, overlap, window, nfft,fs)
    %riordino matrice 2d in una 3d
    [n_channels, n_samples]=size(segnale);
    
    %prima calcono quante sono le finestre in cui posso dividere il segnale
    %(è un numero intero, uso floor)
    n_window = floor ((n_samples-overlap) ./ (window - overlap) );
    %così quando creo start e end so già che non usciranno fuori dal
    %segnale (non devo mettere un controllo dopo)
    
    %inizio di ogni finestra
    xStart = 1:window -overlap:n_window * (window -overlap);
    %fine di ogni finestra
    xEnd= xStart + window -1;
    
        
    %prealloco matrice (numero canali x lunghezza finestra x numero finestre)
    mat_overlap=zeros(n_channels, window, n_window);
    PXX=zeros(n_channels, nfft);
    
    %riempio matrice con il periodogramma
    for idx_wdw=1:n_window
        %nella matrice metto già la fft^2, che calcolo lungo le righe.
         
        mat_overlap(:,:, idx_wdw)= fft( segnale (: ,  xStart(idx_wdw):xEnd(idx_wdw) , : ) , [] , 2 ) .^2 ;
        
        xx= fft( segnale (: ,  xStart(idx_wdw):xEnd(idx_wdw) , : ) , nfft, 2);
        PXX= PXX + real (xx.*conj(xx)/window);
        
        %x_final(:,:, idx_wdw)=abs(fft(x(:, xStart(idx_wdw):xEnd(idx_wdw)), [], 2)^2);
    end
    
    %potenza di ogni finestra
    
    %PXX= sum ( 2* mat_overlap /window, 2) / n_window;
    
    PXX=PXX ./ n_window;
    PXX=PXX';
    
    PXX = PXX(1:floor(nfft/2)+1,:);

    PXX = 2*PXX./fs;
    
    %NON HO IDEA DI COSA SIA QUESTA COSA
    f = linspace(0,fs/2,floor(nfft/2)+1);
    
%     x_final=trapz(3);
%     
%     %media periodogramma (media rispetto alla terza dimensione)
%     x_final=mean (mat_overlap, 3);
end

