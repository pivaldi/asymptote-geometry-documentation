    import geometry; size(4cm,0);
    currentcoordsys=cartesiansystem((1.25,0.75), i=(1,1), j=(-1,1));
    coordsys Rp=currentcoordsys; coordsys R=defaultcoordsys;
    show(R); show("$O'$","$\vec{u}$","$\vec{v}$", Rp, xpen=invisible);

    point P=(0.75,0.5); dot("$P$",P); vector w=P;
    pen bpp=linewidth(bp);
    draw("$\vec{w}$", origin()--origin()+w, W, bpp, Arrow(3mm));
    draw("$\vec{w}$", origin--locate(w), E, bpp,  Arrow(3mm));
