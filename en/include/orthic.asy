    size(8cm);
    import geometry;

    triangle t=triangleabc(3,4,6);
    drawline(t, linewidth(bp));
    line hc=altitude(t.AB), hb=altitude(t.AC);
    line ha=altitude(t.BC); draw(hc^^hb^^ha);
    dot("H", orthocentercenter(t));

    perpendicularmark(t.AB,hc,quarter=-1);
    perpendicularmark(t.AC,hb,quarter=-1);
    perpendicularmark(t.BC,ha);

    triangle ort=orthic(t);
    draw(ort,bp+0.8*green); dot(ort, 0.8*red);
    addMargins(1cm,1cm);
