    import geometry;
    size(5cm,0);
    coordsys R=cartesiansystem((1,-2), i=(1,0.5), j=(-1,1));
    show("$O_{1}$", "$\vec{u}$", Label("$\vec{v}$", align=E),
    R, ipen=blue, ypen=invisible);
    show(defaultcoordsys, ypen=invisible);
    point A=point(R,(1,1)); dot("A", A, NW);

    line l=line(A, 30);
    draw(l, bp+blue);
    markangle("$30^\circ$", Ox(R), l, grey);

    A=changecoordsys(defaultcoordsys, A);
    line ll=line(A, 40);
    draw(ll, bp+red);
    markangle("$40^\circ$", Ox, ll, grey);
    draw(box((-0.6,-2.8), (2,-0.3)), invisible);
