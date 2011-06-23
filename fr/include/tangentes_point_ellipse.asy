    import geometry; size(7.5cm,0);
    point A=(2.5,-1); dot(A);
    ellipse C=ellipse(A,3,1); draw(C,linewidth(bp));
    path Cp=shift(A)*xscale(2)*scale(3)*unitcircle;
    draw(Cp, grey);
    for (int i=0; i < 360; i+=45) {
      point M=relpoint(Cp, i/360); dot(M);
      draw(tangents(C, M), 0.8*red);
    }
    addMargins(10mm,10mm);
