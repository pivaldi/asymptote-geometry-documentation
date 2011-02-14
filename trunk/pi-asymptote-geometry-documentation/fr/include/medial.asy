    size(8cm);
    import geometry;

    triangle t=triangleabc(6,5,4);
    drawline(t, linewidth(bp));
    line ma=median(t.VA), mb=median(t.VB);
    line mc=median(t.VC); draw(ma^^mb^^mc);

    draw(segment(t.AB), StickIntervalMarker(2,1));
    draw(segment(t.BC), StickIntervalMarker(2,2));
    draw(segment(t.CA), StickIntervalMarker(2,3));

    triangle med=medial(t);
    draw(med,bp+0.8*green); dot(med, 0.8*red);
    addMargins(1cm,1cm);
