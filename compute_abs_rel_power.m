function [abs_pow,rel_pow] = compute_abs_rel_power(sgn, x, y, freq)
    abs_pow = compute_abs(sgn, x, y, freq);
    abs_tot = compute_abs(sgn, 1, 30, freq);
    
    rel_pow = abs_pow / abs_tot;
end

function [abs_pow] = compute_abs(sgn,x,y, freq)
    banda = find(freq >x & freq <y);

    %faccio la sum solo tra x e y
%     abs_pow = 0;
%     for indx = 1 : length(banda)
%         abs_pow = abs_pow + sgn(banda(indx));
%     end
    
    abs_pow = sum(sgn(freq >x & freq <y));
    
    abs_pow = abs_pow / length(banda);
end