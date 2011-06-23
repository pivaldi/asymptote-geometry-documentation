    import geometry;
    size(10cm,0);

    point P1=(-3,0), P2=(3,0);
    hyperbola H=hyperbola(P1,P2,2.95);

    draw(box((-6,-1),(-3.5,1)), dashed);
    draw((path)H, 2*bp+dashed);

    H.bmin=(-5.5,0);
    H.bmax=(-2.5,1.25);
    draw(box(H.bmin,H.bmax), red);
    draw((path)H, bp+red);
