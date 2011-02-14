    import geometry;
    size(4cm,0);
    coordsys R=cartesiansystem((2,1), i=(1,1), j=(-1,1));
    coordsys Rp=cartesiansystem((-2,-1), i=(-1,1),
    j=(-1,-1));
    pair M=R*(1,1);
    dot("$M$", M);
    pair P=Rp*(M/R);
    dot("$P$", P);
    show(R, xpen=invisible);
    show("$O'$", "$\vec{u}$", "$\vec{v}$", Rp, xpen=invisible);
