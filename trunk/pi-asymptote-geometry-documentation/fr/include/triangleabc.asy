    import geometry;
    size(4cm);

    currentcoordsys=cartesiansystem(i=(1,0.5), j=(-0.25,.75));
    show(currentcoordsys);

    triangle t=triangleabc(3,4,5, (1,1));
    show(La="3", Lb="4", Lc="5", t);
