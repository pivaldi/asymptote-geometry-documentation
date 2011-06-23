    import geometry; size(4.5cm);
    currentcoordsys=rotate(45)*defaultcoordsys;
    show(currentcoordsys);
    abscissa rel=relabscissa(0.5);
    ellipse el=ellipse(origin(),2,1,-45); draw(el,linewidth(bp));
    circle c=circle(origin(),1);          draw(c,linewidth(bp));
    dot(point(el,rel), red); dot(point(c,rel), red);
