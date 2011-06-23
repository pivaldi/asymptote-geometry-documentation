    import geometry;
    size(5cm,0);
    line AB=line(origin, NE), CD=line(2*NE+N, 2*NE+SE);
    draw(AB, linewidth(bp)); draw(CD, linewidth(bp));
    transform reflect=reflect(AB,CD);

    point M=1.75*NE+0.5N, Mp=reflect*M;
    dot("M",M, unit(M-Mp)); dot("M'", Mp, unit(Mp-M), red);
    draw(segment(M,Mp), grey, StickIntervalMarker(2,2,grey));
    draw(box((1,1), (2.2,2.2)), invisible);
