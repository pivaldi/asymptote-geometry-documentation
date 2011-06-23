    import geometry;
    size(6cm,0);
    pen bpp=linewidth(bp); real k=sqrt(2);
    point A=(0,0), B=(2,0), C=(3.5,1);
    point D=(4,2), M=(6,3);
    path cle=shift(1,2)*unitcircle;
    draw(cle, bpp);
    draw(line(A,B));
    draw(line(C,D), grey);

    transform dilate=scale(k,A,B,C,D);
    draw(dilate*cle, bpp+red);
    point Mp=dilate*M;

    point P=intersectionpoint(line(A,B), line(M,Mp));
    draw(line(P,M), grey);
    dot("A", A, S); dot("B", B, S); dot("C", C);
    dot("D", D); dot("M", M, W); dot("P", P, NW);
    dot("M'", Mp, W, red);
    distance("$k\times PM$", P, Mp, 6mm, grey,
    joinpen=grey+dashed);
