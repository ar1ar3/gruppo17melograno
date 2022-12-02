function [abs_pow,rel_pow] = compute_abs_rel_power(sgn,freq,val1, val2)
%calcolo area sottesa alla curva tramite trapz
%ma questa area la voglio considerare solo in una specifica banda

band = linspace(val1, val2,1);

%Int = cumtrapz(band,sgn);
area = trapz(band, sgn);

abs_pow = area / band;

total_abs_pow = area ./ freq;

rel_pow = abs_pow ./ total_abs_pow;

end

