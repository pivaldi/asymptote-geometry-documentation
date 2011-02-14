    import geometry;
    size(6.5cm,0);
    pen bpp=linewidth(bp);
    line AB=line(origin, E), CD=line(2*NE+N, 2*NE+SE);
    draw(AB, bpp); draw(CD, bpp);

    transform dilatation=scale(1.5,AB,CD);

    path cle=shift(NE)*unitcircle;
    draw(cle,bpp);

    draw(dilatation*cle, 0.8*red+bpp);
    draw(inverse(dilatation)*cle, 0.8*blue+bpp);
    draw(box((-0.5,-0.5), (2.75,3)), invisible);
