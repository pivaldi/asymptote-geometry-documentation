    import geometry;
    size(10cm,0);
    point A=(0,0), B=(3,0), C=(0.795,1.5);
    dot(A); dot(B); dot(C);
    pen pb=0.8*blue, pr=0.8*red, py=0.8*yellow, bpp=linewidth(bp);
    line AB=line(A,B), AC=line(A,C), BC=line(B,C);
    draw(AB, bpp); draw(AC, bpp); draw(BC, bpp);

    line bA1=sector(3,AB,AC), bA2=sector(3,2,AB,AC);
    line bB1=sector(3,AB,BC), bB2=sector(3,2,AB,BC);
    line bC1=sector(3,AC,BC), bC2=sector(3,2,AC,BC);
    draw(bA1, bpp+pb); draw(bA2, bpp+pb);
    draw(bB1, bpp+pr); draw(bB2, bpp+pr);
    draw(bC1, bpp+py); draw(bC2, bpp+py);

    markangleradiusfactor *= 8;
    markangle(BC, reverse(AB), pr, StickIntervalMarker(3,1,pr,true));
    markangleradiusfactor /= 3;
    markangle(reverse(AC), reverse(BC), py, StickIntervalMarker(3,2,py,true));
    markangleradiusfactor *= 3/2;
    markangle(AB, AC, pb, StickIntervalMarker(3,3,pb,true));
