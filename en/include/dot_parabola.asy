    import geometry;
    size(6cm);

    point F=(2,-1.5);
    dot("$F$",F,N,red);
    parabola p=parabola(F,0.2,90);

    draw(box((0.6,-1.75),(3,0.5)), invisible);
    parabolanodesnumberfactor=50;
    dot((path)p);
