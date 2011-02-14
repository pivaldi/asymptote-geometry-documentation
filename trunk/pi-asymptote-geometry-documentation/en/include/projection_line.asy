    import geometry;
    size(7.5cm,0); dotfactor*=1.5;
    currentcoordsys=rotate(20)*defaultcoordsys;
    show(currentcoordsys, xpen=invisible, ypen=red);

    point A=(-1,-3), B=(5,2);
    line l1=line(A,B); draw(l1, linewidth(bp));
    dot("$A$", A, SE); dot("$B$", B, NW);
    point M=(3,-3); dot("$M$", M);

    point P=projection(l1)*M;
    dot("$P$", P, 2W); draw(M--P);
    markrightangle(l1.A, P, M);

    point Q=vprojection(l1)*M;
    dot("$Q$", Q, 2W); draw(M--Q);

    point R=hprojection(l1)*M;
    dot("$R$", R, 2W); draw(M--R);

    point S=projection(l1,line((0,0),(0,1)))*M;
    dot("$S$", S, 2W); draw(M--S, red);
    draw(box((-1,-4),(5,5)), invisible);
