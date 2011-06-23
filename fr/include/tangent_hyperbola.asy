    import geometry; size(0,10cm);
    pen bl=0.8blue, re=0.8*red;
    draw(box((-2.25,-1.5),(-0.75,1)), invisible);
    hyperbola h=hyperbola(origin,1.2,1);
    draw((path)h, linewidth(bp));
    draw("directrix", h.D1); dot("$F_1$", h.F1, NW);

    line axis=line(h.F1,h.F2); draw(axis);
    point M=point(h,angabscissa(70)); dot(M, bl);
    line tgt=tangent(h,angabscissa(70)); draw(tgt, bp+bl);
    point P=intersectionpoint(tgt,h.D1); dot(P, bl);
    draw(P--h.F1--M, grey); markrightangle(P,h.F1,M, grey);

    line lr=perpendicular(h.F1, axis); draw(lr);
    point[] plr=intersectionpoints(h,lr);
    dot(plr, re);
    distance(Label("latus rectum",Fill(white)),
    plr[0], plr[1], -2cm, grey, dotted);
    for (int i=0; i < 2; ++i) {
      draw(tangents(h,plr[i])[0], bp+re); }
