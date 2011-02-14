    import geometry;
    size(6cm);
    point A=(2,2); point B=(4,1); point M=(4,3);
    path cle=shift(3,2.5)*scale(.25)*unitcircle;
    draw(cle, linewidth(bp));

    transform proj=projection(A,B);
    point Mp=proj*M;

    draw(proj*cle, 1mm+red);
    dot("A", A, unit(A-B)); dot("B", B, unit(B-A));
    dot("M", M, unit(M-Mp));
    dot("M'", Mp, unit(Mp-M), red);
    draw(M--Mp, grey); draw(A--B);
    markrightangle(M,Mp,A, grey);
