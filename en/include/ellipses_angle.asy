    import geometry;
    size(8cm);

    currentcoordsys=rotate(20)*defaultcoordsys;
    show(currentcoordsys);

    ellipse e0=ellipse((0,0), 3, 1);
    draw(e0, linewidth(bp), Arrow);

    ellipse e1=ellipse((0,0), 3, 1, 45);
    draw(e1, bp+0.8*red, Arrow);

    ellipse e2=ellipse((0,0), 1, 3, 45);
    draw(e2, bp+0.8*blue, Arrow);
