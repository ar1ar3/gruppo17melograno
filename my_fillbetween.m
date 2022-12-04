function my_fillbetween(potenza, medio, fs, color)

    devstd=std(potenza, 0, 2);
    
    top= medio + devstd;
    bottom= medio -devstd;
    
    [tophandle, bottomhandle]=fill_between(fs, top, bottom, 1, 'LineStyle', 'none', 'FaceColor', color, 'FaceAlpha', 0.25, 'Interruptible', 'off');
    
    tophandle.Visible='off';
    bottomhandle.Visible='off';

end