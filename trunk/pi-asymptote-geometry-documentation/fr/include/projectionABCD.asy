    import geometry;
    size(6cm);
    point A=(2,2); point B=(4,1); point C=(3.75,3);
    point D=(3.5,4); point M=(2.5,3.5);
    path cle=shift(2.5,3)*scale(0.25)*unitcircle;
    draw(cle, linewidth(bp)); draw(line(C,D), grey);

    transform proj=projection(A,B,C,D);
    point Mp=proj*M;

    draw(proj*cle, 1mm+red);
    dot("A", A, unit(A-B)); dot("B", B, unit(B-A));
    dot("C", C); dot("D", D); dot("M", M, unit(M-Mp));
    dot("M'", Mp, 2*unit(Mp-M), red);
    draw(M--Mp, grey); draw(A--B);
