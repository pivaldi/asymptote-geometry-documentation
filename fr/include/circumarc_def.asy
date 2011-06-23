    import geometry;
    size(6cm);
    point A=(-1,0), B=(3,-1), C=(0,1), D=(0,-2);

    draw(arccircle(A,C,B), dotsize()+0.8*red);
    draw(arccircle(A,D,B), dotsize()+0.8*red);

    dot("$A$", A, NW); dot("$B$", B, E);
    dot("$C$", C, NW); dot("$D$", D, SW);
