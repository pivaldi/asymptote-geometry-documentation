    import geometry;
    size(6cm,0);
    currentcoordsys=cartesiansystem((1,1), i=(1,1),
    j=(-0.5,.75));
    show("$O'$","$\vec{u}$", "$\vec{v}$", currentcoordsys,
    ipen=blue, xpen=invisible);
    show(defaultcoordsys);
    real R=2;
    circle C=circle((0,0), R);
    draw(C, bp+0.8*blue);
    circle Cp=circle(point(defaultcoordsys,(0,0)), R);
    draw(Cp, bp+0.8*red);
