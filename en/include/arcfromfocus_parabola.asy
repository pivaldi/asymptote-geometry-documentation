    import geometry;
    size(8cm);
    show(currentcoordsys);

    point F=(1,0.5); dot("$F$",F,E,red);
    parabola p=parabola(F,0.2,110); draw(p);

    coordsys Rp=canonicalcartesiansystem(p);
    show(Label("$O'$",align=NW+W,blue), Label("$\vec{u}$",blue),
    Label("$\vec{v}$",blue), Rp, ipen=blue);

    dot("180", angpoint(p,180), dir(-30));
    point P=angpoint(p,55); dot("55",P,NE);

    segment s=segment(F,P); draw(s);
    line l=line(F,F+Rp.i);
    markangle("$"+(string)degrees(l,s)+"^\circ$",l,s,Arrow);

    dot("-55", point(arcfromfocus(p,-55,-55,1),0), W);
    dot("-90", point(arcfromfocus(p,-90,-90,1),0), W);
    draw(arcfromfocus(p,55,-90), bp+0.8*red, Arrow(3mm));
